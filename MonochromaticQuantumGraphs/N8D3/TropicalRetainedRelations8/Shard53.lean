import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 265--269. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 53. -/
def tropicalOverlapProvenance8Shard53 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 128, coordinateB := 6, sourceJ := 129, coordinateA := 0 },
  { epsilon := -1, sourceI := 128, coordinateB := 1, sourceJ := 130, coordinateA := 0 },
  { epsilon := -1, sourceI := 128, coordinateB := 7, sourceJ := 131, coordinateA := 0 },
  { epsilon := 1, sourceI := 128, coordinateB := 142, sourceJ := 188, coordinateA := 139 },
  { epsilon := -1, sourceI := 128, coordinateB := 90, sourceJ := 136, coordinateA := 89 }
]

/-- The five explicit sparse target polynomials in overlap shard 53. -/
def tropicalOverlapRelation8Shard53 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 76 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 76 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 76 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 76 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 76 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 76 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 111 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 112 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 89 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 89 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 120 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 76 120 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 114 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 102 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 111 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 90 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
53. -/
theorem tropicalOverlapRelation8_provenance_shard53 (i : Fin 5) :
    tropicalOverlapRelation8Shard53 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard53 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
