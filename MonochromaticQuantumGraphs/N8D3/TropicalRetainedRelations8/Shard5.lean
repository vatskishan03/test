import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 25--29. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 5. -/
def tropicalOverlapProvenance8Shard5 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 6, coordinateB := 141, sourceJ := 66, coordinateA := 138 },
  { epsilon := 1, sourceI := 6, coordinateB := 89, sourceJ := 10, coordinateA := 86 },
  { epsilon := -1, sourceI := 6, coordinateB := 87, sourceJ := 14, coordinateA := 86 },
  { epsilon := 1, sourceI := 6, coordinateB := 90, sourceJ := 18, coordinateA := 86 },
  { epsilon := 1, sourceI := 7, coordinateB := 141, sourceJ := 67, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 5. -/
def tropicalOverlapRelation8Shard5 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 111 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 112 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 86 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 86 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 101 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 89 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 86 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 101 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 86 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 87 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 104 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 90 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 86 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 111 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 112 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 86 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 86 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 119 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
5. -/
theorem tropicalOverlapRelation8_provenance_shard5 (i : Fin 5) :
    tropicalOverlapRelation8Shard5 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard5 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
