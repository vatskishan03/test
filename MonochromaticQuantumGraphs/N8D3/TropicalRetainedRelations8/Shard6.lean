import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 30--34. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 6. -/
def tropicalOverlapProvenance8Shard6 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 8, coordinateB := 7, sourceJ := 9, coordinateA := 1 },
  { epsilon := 1, sourceI := 8, coordinateB := 141, sourceJ := 68, coordinateA := 138 },
  { epsilon := 1, sourceI := 8, coordinateB := 139, sourceJ := 106, coordinateA := 138 },
  { epsilon := 1, sourceI := 8, coordinateB := 142, sourceJ := 166, coordinateA := 138 },
  { epsilon := 1, sourceI := 9, coordinateB := 141, sourceJ := 69, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 6. -/
def tropicalOverlapRelation8Shard6 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 69 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 89 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 69 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 119 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
6. -/
theorem tropicalOverlapRelation8_provenance_shard6 (i : Fin 5) :
    tropicalOverlapRelation8Shard6 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard6 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
