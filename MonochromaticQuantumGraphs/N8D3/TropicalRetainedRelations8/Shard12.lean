import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 60--64. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 12. -/
def tropicalOverlapProvenance8Shard12 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 18, coordinateB := 142, sourceJ := 178, coordinateA := 138 },
  { epsilon := 1, sourceI := 19, coordinateB := 141, sourceJ := 79, coordinateA := 138 },
  { epsilon := 1, sourceI := 19, coordinateB := 139, sourceJ := 119, coordinateA := 138 },
  { epsilon := 1, sourceI := 19, coordinateB := 142, sourceJ := 179, coordinateA := 138 },
  { epsilon := 1, sourceI := 20, coordinateB := 141, sourceJ := 80, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 12. -/
def tropicalOverlapRelation8Shard12 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 108 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 109 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 85 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 85 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 116 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 116 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
12. -/
theorem tropicalOverlapRelation8_provenance_shard12 (i : Fin 5) :
    tropicalOverlapRelation8Shard12 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard12 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
