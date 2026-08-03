import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 115--119. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 23. -/
def tropicalOverlapProvenance8Shard23 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 36, coordinateB := 141, sourceJ := 96, coordinateA := 138 },
  { epsilon := 1, sourceI := 36, coordinateB := 139, sourceJ := 134, coordinateA := 138 },
  { epsilon := 1, sourceI := 36, coordinateB := 142, sourceJ := 194, coordinateA := 138 },
  { epsilon := 1, sourceI := 37, coordinateB := 141, sourceJ := 97, coordinateA := 138 },
  { epsilon := 1, sourceI := 37, coordinateB := 139, sourceJ := 135, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 23. -/
def tropicalOverlapRelation8Shard23 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 123 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
23. -/
theorem tropicalOverlapRelation8_provenance_shard23 (i : Fin 5) :
    tropicalOverlapRelation8Shard23 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard23 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
