import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 260--264. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 52. -/
def tropicalOverlapProvenance8Shard52 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 124, coordinateB := 7, sourceJ := 127, coordinateA := 0 },
  { epsilon := 1, sourceI := 124, coordinateB := 142, sourceJ := 184, coordinateA := 139 },
  { epsilon := -1, sourceI := 124, coordinateB := 90, sourceJ := 132, coordinateA := 89 },
  { epsilon := 1, sourceI := 125, coordinateB := 142, sourceJ := 185, coordinateA := 139 },
  { epsilon := -1, sourceI := 126, coordinateB := 90, sourceJ := 134, coordinateA := 89 }
]

/-- The five explicit sparse target polynomials in overlap shard 52. -/
def tropicalOverlapRelation8Shard52 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 70 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 70 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 111 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 112 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 89 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 89 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 120 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 120 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 102 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 111 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 112 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 89 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 89 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 120 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 120 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 114 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 102 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 111 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 90 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
52. -/
theorem tropicalOverlapRelation8_provenance_shard52 (i : Fin 5) :
    tropicalOverlapRelation8Shard52 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard52 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
