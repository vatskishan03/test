"""Stress tests for the single-vertex 'death' characterization.

Death (dodge) for fixed g means: for ALL h_u in ker(B_u^T g), sum_c g_c prod h_u(c) == 0.
We test:
  T1: full-support normals => always alive (Lemma X).
  T2: locker coverage {S_u={c_u}} covering all colors => dead.
  T3: mixed cases - explore when coupling alone kills.
All exact over Q.
"""
import sys
sys.path.insert(0, '/Users/kishan/mqg/lab')
from fractions import Fraction as F
import random

def kernel_basis_len(m):
    idxs = [i for i,x in enumerate(m) if x != 0]
    if not idxs:
        return None
    basis = []
    for k in range(len(m)):
        if m[k] == 0:
            v = [F(0)]*len(m); v[k] = F(1); basis.append(v)
    # proper basis: solve <m,h>=0
    piv = idxs[0]
    basis = []
    for k in range(len(m)):
        if k == piv: continue
        v = [F(0)]*len(m)
        v[piv] = -m[k]/m[piv]; v[k] = F(1)
        basis.append(v)
    return basis

def dead_for_fixed_planes(normals, g):
    """normals: list of m_u (length 3). Full-space if m_u==0."""
    planes = []
    for m in normals:
        kb = kernel_basis_len(m)
        planes.append(kb if kb else [[F(int(k==c)) for c in range(3)] for k in range(3)])
    from itertools import product as iproduct
    for combo in iproduct(*[range(len(p)) for p in planes]):
        hs = [planes[i][k] for i,k in enumerate(combo)]
        tot = F(0)
        for c in range(3):
            p = g[c]
            for h in hs: p *= h[c]
            tot += p
        if tot != 0:
            return False  # alive
    return True  # dead

rnd = random.Random(42)
def rand_vec_full_support():
    while True:
        v = [F(rnd.randint(-5,5)) for _ in range(3)]
        if all(x != 0 for x in v): return v

# T1: five full-support normals, random g -> expect never dead
dead_cnt = 0
for t in range(3000):
    normals = [rand_vec_full_support() for _ in range(5)]
    g = rand_vec_full_support()
    if dead_for_fixed_planes(normals, g):
        dead_cnt += 1
        print("T1 COUNTEREXAMPLE:", normals, g)
print("T1 done. deaths:", dead_cnt, "/3000")

# T2: locker coverage patterns -> expect always dead (when g avoids ker(r_u))
def locker_normals(color_of_slot, rs):
    out = []
    for c in color_of_slot:
        m = [F(0)]*3
        m[c] = F(1)
        out.append(m)
    return out

for pattern in [(0,1,2,0,1),(0,0,1,1,2),(0,1,2,2,2),(0,0,0,1,2)]:
    ok = 0
    for t in range(200):
        normals = locker_normals(pattern, None)
        g = rand_vec_full_support()
        if dead_for_fixed_planes(normals, g): ok += 1
        else:
            print("T2 alive at", pattern, g); break
    print(f"T2 pattern {pattern}: dead {ok}/200")
