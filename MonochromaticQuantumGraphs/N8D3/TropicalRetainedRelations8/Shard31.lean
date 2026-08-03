import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 155--159. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 31. -/
def tropicalOverlapProvenance8Shard31 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 54, coordinateB := 7, sourceJ := 55, coordinateA := 1 },
  { epsilon := -1, sourceI := 56, coordinateB := 7, sourceJ := 57, coordinateA := 1 },
  { epsilon := 1, sourceI := 56, coordinateB := 139, sourceJ := 154, coordinateA := 138 },
  { epsilon := 1, sourceI := 57, coordinateB := 139, sourceJ := 155, coordinateA := 138 },
  { epsilon := -1, sourceI := 58, coordinateB := 7, sourceJ := 59, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 31. -/
def tropicalOverlapRelation8Shard31 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 87 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 77 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 87 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 87 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 77 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 90 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 71 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 90 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 90 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 71 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 77 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 90 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 77 122) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
31. -/
theorem tropicalOverlapRelation8_provenance_shard31 (i : Fin 5) :
    tropicalOverlapRelation8Shard31 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard31 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
