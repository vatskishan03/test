import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 5--9. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 1. -/
def tropicalOverlapProvenance8Shard1 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 0, coordinateB := 90, sourceJ := 17, coordinateA := 85 },
  { epsilon := 1, sourceI := 1, coordinateB := 141, sourceJ := 61, coordinateA := 138 },
  { epsilon := 1, sourceI := 1, coordinateB := 88, sourceJ := 3, coordinateA := 85 },
  { epsilon := -1, sourceI := 1, coordinateB := 86, sourceJ := 7, coordinateA := 85 },
  { epsilon := 1, sourceI := 1, coordinateB := 89, sourceJ := 11, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 1. -/
def tropicalOverlapRelation8Shard1 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 108 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 104 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 114 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 108 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 109 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 85 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 85 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 116 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 116 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 108 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 98 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 108 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 111 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 98 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 108 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 86 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 108 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 101 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 111 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 85 119) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
1. -/
theorem tropicalOverlapRelation8_provenance_shard1 (i : Fin 5) :
    tropicalOverlapRelation8Shard1 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard1 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
