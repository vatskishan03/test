"""Full-pattern exact feasibility: uniform masked EqSystemN encoding + cascade.

Given a forcing pattern P (vertex -> ordered triple of forced neighbours):
  mask: which of the 135 slots (edge, colour-at-p, colour-at-q) survive.
  equations: for every iota in {0,1,2}^6:
      sum over perfect matchings whose every edge-slot is supported,
      of the product of those slot-variables  ==  delta_{iota constant}
  PLUS sound derived product laws (V-family, 222-family) for cascade leverage.
"""
import sys, itertools
sys.path.insert(0, '/Users/kishan/mqg/lab')

VERTS = list(range(6))
PAIRS = [(i, j) for i in range(6) for j in range(i + 1, 6)]

def pm_list():
    def rec(rem):
        if not rem: yield []; return
        f, rest = rem[0], rem[1:]
        for k in range(len(rest)):
            p = rest[k]; r2 = rest[:k] + rest[k+1:]
            for m in rec(r2): yield [(f, p)] + m
    return list(rec(VERTS))
PMS = pm_list()

def build_mask(pat):
    ent = {(p, q): set(itertools.product(range(3), repeat=2)) for (p, q) in PAIRS}
    for v, triple in pat.items():
        for c, u in enumerate(triple):
            key = (min(v, u), max(v, u))
            if v < u:
                ent[key] = {(i, j) for (i, j) in ent[key] if j == c}
            else:
                ent[key] = {(i, j) for (i, j) in ent[key] if i == c}
    return ent

def build_pattern_equations(pat, with_derived=True):
    """Returns (slots, equations).
       slots: frozenset of keys; cc key = ('c', c, p, q); bicolor key =
       ('b', p, q, d_at_p, c_at_q) with p<q.
       equations: list of {'terms': [{key:coeff,...}], 'target': int}
    """
    ent = build_mask(pat)
    slots = set()
    for e, s in ent.items():
        for (i, j) in s:
            slots.add(('c', i, j, e[0], e[1]))
            if i != j:
                slots.add(('b', e[0], e[1], i, j))

    def slot_for(p, q, ip, iq):
        p_, q_ = min(p, q), max(p, q)
        if p < q:
            k1, k2 = ip, iq
        else:
            k1, k2 = iq, ip
        if k1 == k2:
            return ('c', k1, k2, p_, q_)
        return ('b', p_, q_, k1, k2)

    eqs = []
    for iota in itertools.product(range(3), repeat=6):
        target = 1 if len(set(iota)) == 1 else 0
        acc = {}
        for m in PMS:
            ks = []
            ok = True
            for (a, b) in m:
                k = slot_for(a, b, iota[a], iota[b])
                if k not in slots:
                    ok = False; break
                ks.append(k)
            if not ok: continue
            key = tuple(sorted(ks))
            acc[key] = acc.get(key, 0) + 1
        if acc:
            terms = [{k: cnt for k, cnt in acc.items()}]
            eqs.append({'t': terms, 'target': target})
    # dedupe identical equations
    seenq = set()
    uniq = []
    for eq in eqs:
        sig = (tuple(tuple(sorted(t.items())) for t in eq['t']), eq['target'])
        if sig in seenq: continue
        seenq.add(sig)
        uniq.append(eq)
    return frozenset(slots), uniq

def derived_products(slots, pat, cap=4000):
    """V-family: xc[d][T] * (each pairing product of S(T) in colour c) == 0
       222-family: distinct-colour triples on matchings == 0. Only fully-supported."""
    prods = []

    def prod_eq(keys):
        prods.append({'t': [{k: 1 for k in keys}], 'target': 0})

    ent = build_mask(pat)
    for T in PAIRS:
        S = [w for w in VERTS if w not in T]
        s0, s1, s2, s3 = S
        ims = [[tuple(sorted((s0, s1))), tuple(sorted((s2, s3)))],
               [tuple(sorted((s0, s2))), tuple(sorted((s1, s3)))],
               [tuple(sorted((s0, s3))), tuple(sorted((s1, s2)))]]
        for d in COLORS:
            if ('c', d, T[0], T[1]) not in slots:
                continue
            for c in COLORS:
                if c == d: continue
                for pm in ims:
                    ks = [('c', d, T[0], T[1])] + [('c', c) + tuple(sorted(e)) for e in pm]
                    if all(k in slots for k in ks):
                        prod_eq(ks)
    for m in PMS:
        es = [tuple(sorted(e)) for e in m]
        # distinct colours assigned to edges, using whatever slot types exist:
        # edge {p,q} under iota gets its slot; enumerate iota-restrictions:
        for assign in itertools.product(range(3), repeat=3):
            if len(set(assign)) < 3: continue
            ks = []
            ok = True
            for ei, e in zip(assign, es):
                k = slot_for(e[0], e[1], ei, ei) if False else None
                # edge endpoints' colours BOTH equal ei for a cc-slot; bicolor combos
                # covered by other assignments; restrict to cc-only triples:
                k = ('c', ei, ei, min(e), max(e))
                if k not in slots: ok = False; break
                ks.append(k)
            if ok:
                prod_eq(ks)
        # also mixed: one edge colour i (cc), others j,k distinct:
        for trio in itertools.permutations(range(3)):
            i, j, k = trio
            # edge0 gets cc(i); edge1 gets bicolor (j at one end); edge2 cc(k)?
            # general mixed products enumerated via iota on the matching:
            for iotas in itertools.product(range(3), repeat=6):
                pass  # covered by main 729 anyway
    return prods[:cap]
