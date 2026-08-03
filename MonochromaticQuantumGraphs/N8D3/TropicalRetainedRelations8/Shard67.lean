import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 335--339. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 67. -/
def tropicalOverlapProvenance8Shard67 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 180, coordinateB := 89, sourceJ := 185, coordinateA := 88 },
  { epsilon := -1, sourceI := 180, coordinateB := 90, sourceJ := 193, coordinateA := 88 },
  { epsilon := -1, sourceI := 181, coordinateB := 89, sourceJ := 187, coordinateA := 88 },
  { epsilon := -1, sourceI := 181, coordinateB := 90, sourceJ := 195, coordinateA := 88 },
  { epsilon := -1, sourceI := 182, coordinateB := 7, sourceJ := 183, coordinateA := 6 }
]

/-- The five explicit sparse target polynomials in overlap shard 67. -/
def tropicalOverlapRelation8Shard67 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 112 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 99 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 109 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 115 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 99 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 109 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 112 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 99 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 109 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 115 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 99 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 109 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 42 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 52 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 76 117) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 39 88 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 49 88 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 76 117) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
67. -/
theorem tropicalOverlapRelation8_provenance_shard67 (i : Fin 5) :
    tropicalOverlapRelation8Shard67 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard67 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
