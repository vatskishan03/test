import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 270--274. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 54. -/
def tropicalOverlapProvenance8Shard54 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 129, coordinateB := 142, sourceJ := 189, coordinateA := 139 },
  { epsilon := -1, sourceI := 130, coordinateB := 90, sourceJ := 138, coordinateA := 89 },
  { epsilon := -1, sourceI := 132, coordinateB := 6, sourceJ := 133, coordinateA := 0 },
  { epsilon := -1, sourceI := 132, coordinateB := 1, sourceJ := 134, coordinateA := 0 },
  { epsilon := -1, sourceI := 132, coordinateB := 7, sourceJ := 135, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 54. -/
def tropicalOverlapRelation8Shard54 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 111 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 112 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 89 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 89 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 120 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 120 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 102 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 70 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 70 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 70 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 70 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 70 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 70 123) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
54. -/
theorem tropicalOverlapRelation8_provenance_shard54 (i : Fin 5) :
    tropicalOverlapRelation8Shard54 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard54 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
