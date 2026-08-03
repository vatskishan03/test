import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 160--164. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 32. -/
def tropicalOverlapProvenance8Shard32 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 58, coordinateB := 139, sourceJ := 158, coordinateA := 138 },
  { epsilon := 1, sourceI := 59, coordinateB := 139, sourceJ := 159, coordinateA := 138 },
  { epsilon := 1, sourceI := 60, coordinateB := 88, sourceJ := 62, coordinateA := 85 },
  { epsilon := -1, sourceI := 60, coordinateB := 86, sourceJ := 65, coordinateA := 85 },
  { epsilon := 1, sourceI := 60, coordinateB := 89, sourceJ := 69, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 32. -/
def tropicalOverlapRelation8Shard32 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 109 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 98 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 109 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 112 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 98 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 109 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 86 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 109 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 101 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 112 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 85 119) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
32. -/
theorem tropicalOverlapRelation8_provenance_shard32 (i : Fin 5) :
    tropicalOverlapRelation8Shard32 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard32 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
