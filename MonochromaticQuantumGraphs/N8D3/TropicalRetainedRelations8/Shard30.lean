import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 150--154. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 30. -/
def tropicalOverlapProvenance8Shard30 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 49, coordinateB := 139, sourceJ := 147, coordinateA := 138 },
  { epsilon := -1, sourceI := 50, coordinateB := 7, sourceJ := 51, coordinateA := 1 },
  { epsilon := 1, sourceI := 50, coordinateB := 139, sourceJ := 150, coordinateA := 138 },
  { epsilon := 1, sourceI := 51, coordinateB := 139, sourceJ := 151, coordinateA := 138 },
  { epsilon := -1, sourceI := 52, coordinateB := 7, sourceJ := 53, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 30. -/
def tropicalOverlapRelation8Shard30 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 89 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 77 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 89 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 89 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 77 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 71 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 87 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 71 122) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
30. -/
theorem tropicalOverlapRelation8_provenance_shard30 (i : Fin 5) :
    tropicalOverlapRelation8Shard30 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard30 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
