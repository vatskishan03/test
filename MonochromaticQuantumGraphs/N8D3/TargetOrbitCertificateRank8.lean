import MonochromaticQuantumGraphs.N8D3.TargetOrbitsBase8
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateData8

/-!
# Lexicographic target-certificate lookup for `(N,D) = (8,3)`

The generated packed table is ordered exactly as
`itertools.combinations_with_replacement(range(105), 3)`.  This module
contains the corresponding closed rank formula and the proposition attached
to one looked-up row.
-/

namespace MonochromaticQuantumGraphs.N8D3

/-- Lexicographic rank of `(a,b,c)` among sorted triples of matching indices.
For `a ≤ b ≤ c`, this is its index in the generated 198,485-row table. -/
def targetLexRankNat8 (a b c : Fin 105) : Nat :=
  (Nat.choose 107 3 - Nat.choose (107 - a.val) 3) +
  (Nat.choose (106 - a.val) 2 - Nat.choose (106 - b.val) 2) +
  (c.val - b.val)

def targetLexRank8 (a b c : Fin 105) : Fin 198485 :=
  Fin.ofNat 198485 (targetLexRankNat8 a b c)

def targetLexRankOfTuple8 (target : Fin 3 → Fin 105) : Fin 198485 :=
  targetLexRank8 (target 0) (target 1) (target 2)

/-- The exact kernel-checkable proposition for the generated row at
the lexicographic rank of `(a,b,c)`. -/
def targetOrbitCertificateAt8 (a b c : Fin 105) : Prop :=
  let packed := orbitPackedCertificate8 (targetLexRank8 a b c)
  targetOrbitCertificateValid8 (targetTuple8 a b c) packed

instance instDecidableTargetOrbitCertificateAt8
    (a b c : Fin 105) :
    Decidable (targetOrbitCertificateAt8 a b c) := by
  unfold targetOrbitCertificateAt8
  infer_instance

end MonochromaticQuantumGraphs.N8D3
