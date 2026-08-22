"""Victim-cascade exact feasibility solver for masked EqSystemN(6,3) systems.

Variables: cc-slots (c,e) and oriented bicolor slots ((p,q),dc) p<q.
Equations (all sound consequences):
  PROD(vars)      == 0     [222-family; also reduced two-flip/V forms]
  SUM(products)   == target [mono (=1); haf^c(T) (=0); near-mono sums; two-flip sums]

Engine:
  - fixpoint reduction (dead variables kill terms; single-survivor rules)
  - protected sets from singleton-mono (term == 1 => all its factors nonzero)
  - conflict detection (product with all factors protected => UNSAT;
    sum-to-1 with all terms dead => UNSAT)
  - case-split on unresolved products (choose victim), DFS with backtracking
  - terminal residual -> sympy Groebner exact verdict
Returns: 'DEAD' | 'ALIVE(model-ish residual)' | 'RESIDUAL:<vars>'
"""
import sys, itertools
sys.path.insert(0, '/Users/kishan/mqg/lab')
import sympy as sp

class CascadeSolver:
    def __init__(self, eqs):
        # eqs: list of {'terms': [ {varkey:1,...}, ...], 'target': int}
        self.eqs = [dict(t=[dict(term) for term in eq.get('terms', eq.get('t'))],
                         target=eq['target']) for eq in eqs]
        self.zero = set()      # variables fixed to 0
        self.protected = set() # variables fixed nonzero

    def snapshot(self):
        return (set(self.zero), set(self.protected),
                [dict(t=[dict(term) for term in eq['terms']], target=eq['target'])
                 for eq in self.eqs])

    def restore(self, snap):
        z, p, eqs = snap
        self.zero = set(z); self.protected = set(p)
        self.eqs = [dict(t=[dict(term) for term in eq.get('terms', eq.get('t'))],
                         target=eq['target']) for eq in eqs]

    def reduce_fixpoint(self):
        changed = True
        while changed:
            changed = False
            new_eqs = []
            for eq in self.eqs:
                # drop dead variables inside terms
                terms = []
                for t in eq['t']:
                    tt = {k: cf for k, cf in t.items() if k not in self.zero}
                    if len(tt) < len(t):
                        changed = True
                    if tt:
                        terms.append(tt)
                    else:
                        changed = True  # a whole term died
                if eq['target'] == 0:
                    # sum of products == 0 ; drop satisfied zero-target? no: sum==0 still binding
                    # unless NO terms remain: 0==0 satisfied
                    if not terms:
                        continue
                    # single term left: product == 0 -> convert to PROD constraint
                    if len(terms) == 1 and len(terms[0]) >= 1:
                        new_eqs.append({'t': [terms[0]], 'target': 0})
                        changed = True
                        continue
                    new_eqs.append({'t': terms, 'target': 0})
                else:
                    # sum == 1 : need at least one live term
                    if not terms:
                        return False   # 0 == 1 UNSAT
                    if len(terms) == 1 and len(terms[0]) >= 1:
                        # term == 1 => protect all its factors
                        for k in terms[0]:
                            if k in self.zero:
                                return False
                            if k not in self.protected:
                                self.protected.add(k); changed = True
                        new_eqs.append({'t': [terms[0]], 'target': 1})
                        continue
                    new_eqs.append({'t': terms, 'target': 1})
            self.eqs = new_eqs
            # FORCED-ZERO rule: product==0 whose factors are all zero-or-protected
            # except exactly one free factor -> that factor must be zero.
            for eq in self.eqs:
                if eq['target'] == 0 and len(eq['t']) == 1:
                    t = eq['t'][0]
                    free = [k for k in t if k not in self.zero]
                    prot = [k for k in free if k in self.protected]
                    unprot = [k for k in free if k not in self.protected]
                    if len(unprot) == 1 and len(prot) == len(free) - 1:
                        self.zero.add(unprot[0])
                        changed = True
        return True

    def product_conflicts(self):
        """PROD eqs (single term) whose factors are all protected -> unsat."""
        for eq in self.eqs:
            if eq['target'] == 0 and len(eq['t']) == 1:
                t = eq['t'][0]
                if all(k in self.protected for k in t):
                    return True
        return False

    def pick_product(self):
        """An unresolved single-term product eq with >=2 unfixed factors."""
        best = None
        for eq in self.eqs:
            if eq['target'] == 0 and len(eq['t']) == 1:
                t = eq['t'][0]
                free = [k for k in t if k not in self.zero and k not in self.protected]
                if len(free) == 0:
                    continue  # satisfied or conflicting (checked elsewhere)
                if best is None or len(free) < len(best[1]):
                    best = (eq, free)
        return best

    def solve(self, depth=0, max_depth=60, gb_threshold=8):
        if not self.reduce_fixpoint():
            return ('DEAD', None)
        if self.product_conflicts():
            return ('DEAD', None)
        # strip satisfied products (any factor zero)
        self.eqs = [eq for eq in self.eqs
                    if not (eq['target'] == 0 and len(eq['t']) == 1 and
                            any(k in self.zero for k in eq['t'][0]))]
        pick = self.pick_product()
        if pick is None:
            # no unresolved products: residual = sums only
            keys = set()
            for eq in self.eqs:
                for t in eq['t']:
                    keys |= set(t)
            keys -= self.zero
            if len(keys) <= gb_threshold:
                return self.gb_verdict(keys)
            return ('RESIDUAL', sorted(keys))
        eq, free = pick
        if depth > max_depth:
            return ('DEPTH-LIMIT', None)
        for victim in free:
            snap = self.snapshot()
            self.zero.add(victim)
            r = self.solve(depth + 1, max_depth, gb_threshold)
            if r[0] != 'DEAD':
                return r
            self.restore(snap)
        return ('DEAD', None)

    def gb_verdict(self, keys):
        sym = {k: sp.Symbol(f'v{i}') for i, k in enumerate(sorted(keys, key=repr))}
        polys = []
        for eq in self.eqs:
            expr = -sp.Integer(eq['target'])
            for t in eq['t']:
                p = sp.Integer(1)
                for k in t:
                    p *= sym[k]
                expr += p
            try:
                g = sp.Poly(expr, *sym.values())
                if g.as_expr() != 0:
                    polys.append(g)
            except Exception:
                pass
        if not polys:
            return ('TRIVIAL-SAT', None)
        try:
            G = sp.groebner(polys, *sym.values(), order='lex')
            degs = [sp.Poly(p, *sym.values()).total_degree() for p in G.polys]
            if 0 in degs:
                return ('DEAD', None)
            return ('GB-PROPER', None)
        except Exception as ex:
            return ('GB-TIMEOUT', str(ex)[:50])
