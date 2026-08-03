import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 125--129. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 25. -/
def tropicalOverlapProvenance8Shard25 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 39, coordinateB := 141, sourceJ := 99, coordinateA := 138 },
  { epsilon := 1, sourceI := 39, coordinateB := 139, sourceJ := 139, coordinateA := 138 },
  { epsilon := 1, sourceI := 39, coordinateB := 142, sourceJ := 199, coordinateA := 138 },
  { epsilon := 1, sourceI := 40, coordinateB := 88, sourceJ := 42, coordinateA := 85 },
  { epsilon := -1, sourceI := 40, coordinateB := 86, sourceJ := 45, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 25. -/
def tropicalOverlapRelation8Shard25 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 100 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 111 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 100 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 108 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 86 116) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
25. -/
theorem tropicalOverlapRelation8_provenance_shard25 (i : Fin 5) :
    tropicalOverlapRelation8Shard25 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard25 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
