import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 45--49. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 9. -/
def tropicalOverlapProvenance8Shard9 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 12, coordinateB := 141, sourceJ := 72, coordinateA := 138 },
  { epsilon := 1, sourceI := 13, coordinateB := 141, sourceJ := 73, coordinateA := 138 },
  { epsilon := -1, sourceI := 14, coordinateB := 7, sourceJ := 15, coordinateA := 1 },
  { epsilon := 1, sourceI := 14, coordinateB := 141, sourceJ := 74, coordinateA := 138 },
  { epsilon := 1, sourceI := 15, coordinateB := 141, sourceJ := 75, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 9. -/
def tropicalOverlapRelation8Shard9 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 114 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 115 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 87 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 87 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 114 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 115 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 87 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 87 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 75 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 87 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 87 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 75 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 114 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 115 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 87 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 87 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 114 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 115 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 87 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 87 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 122 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
9. -/
theorem tropicalOverlapRelation8_provenance_shard9 (i : Fin 5) :
    tropicalOverlapRelation8Shard9 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard9 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
