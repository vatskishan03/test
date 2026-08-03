import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 0--4. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 0. -/
def tropicalOverlapProvenance8Shard0 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 0, coordinateB := 141, sourceJ := 60, coordinateA := 138 },
  { epsilon := 1, sourceI := 0, coordinateB := 88, sourceJ := 2, coordinateA := 85 },
  { epsilon := -1, sourceI := 0, coordinateB := 86, sourceJ := 5, coordinateA := 85 },
  { epsilon := 1, sourceI := 0, coordinateB := 89, sourceJ := 9, coordinateA := 85 },
  { epsilon := -1, sourceI := 0, coordinateB := 87, sourceJ := 13, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 0. -/
def tropicalOverlapRelation8Shard0 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 108 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 109 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 85 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 85 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 116 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 116 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 98 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 111 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 98 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 108 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 86 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 108 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 101 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 85 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 114 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 98 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 108 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 87 116) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
0. -/
theorem tropicalOverlapRelation8_provenance_shard0 (i : Fin 5) :
    tropicalOverlapRelation8Shard0 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard0 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
