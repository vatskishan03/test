import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 35--39. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 7. -/
def tropicalOverlapProvenance8Shard7 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 9, coordinateB := 139, sourceJ := 107, coordinateA := 138 },
  { epsilon := 1, sourceI := 9, coordinateB := 142, sourceJ := 167, coordinateA := 138 },
  { epsilon := -1, sourceI := 10, coordinateB := 7, sourceJ := 11, coordinateA := 1 },
  { epsilon := 1, sourceI := 10, coordinateB := 141, sourceJ := 70, coordinateA := 138 },
  { epsilon := 1, sourceI := 10, coordinateB := 139, sourceJ := 110, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 7. -/
def tropicalOverlapRelation8Shard7 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 75 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 89 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 89 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 75 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 120 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
7. -/
theorem tropicalOverlapRelation8_provenance_shard7 (i : Fin 5) :
    tropicalOverlapRelation8Shard7 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard7 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
