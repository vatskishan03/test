import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 50--54. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 10. -/
def tropicalOverlapProvenance8Shard10 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 16, coordinateB := 7, sourceJ := 17, coordinateA := 1 },
  { epsilon := 1, sourceI := 16, coordinateB := 141, sourceJ := 76, coordinateA := 138 },
  { epsilon := 1, sourceI := 16, coordinateB := 139, sourceJ := 114, coordinateA := 138 },
  { epsilon := 1, sourceI := 16, coordinateB := 142, sourceJ := 174, coordinateA := 138 },
  { epsilon := 1, sourceI := 17, coordinateB := 141, sourceJ := 77, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 10. -/
def tropicalOverlapRelation8Shard10 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 69 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 90 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 90 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 69 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 122 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 122 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
10. -/
theorem tropicalOverlapRelation8_provenance_shard10 (i : Fin 5) :
    tropicalOverlapRelation8Shard10 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard10 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
