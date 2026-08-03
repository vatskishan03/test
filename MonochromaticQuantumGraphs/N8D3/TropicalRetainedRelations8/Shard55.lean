import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 275--279. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 55. -/
def tropicalOverlapProvenance8Shard55 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 132, coordinateB := 142, sourceJ := 192, coordinateA := 139 },
  { epsilon := 1, sourceI := 133, coordinateB := 142, sourceJ := 193, coordinateA := 139 },
  { epsilon := -1, sourceI := 136, coordinateB := 6, sourceJ := 137, coordinateA := 0 },
  { epsilon := -1, sourceI := 136, coordinateB := 1, sourceJ := 138, coordinateA := 0 },
  { epsilon := -1, sourceI := 136, coordinateB := 7, sourceJ := 139, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 55. -/
def tropicalOverlapRelation8Shard55 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 114 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 115 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 90 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 90 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 123 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 123 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 114 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 115 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 90 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 90 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 123 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 123 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 76 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 76 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 76 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 76 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 76 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 76 123) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
55. -/
theorem tropicalOverlapRelation8_provenance_shard55 (i : Fin 5) :
    tropicalOverlapRelation8Shard55 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard55 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
