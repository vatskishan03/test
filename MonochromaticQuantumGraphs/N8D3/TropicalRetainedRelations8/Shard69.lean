import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 345--349. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 69. -/
def tropicalOverlapProvenance8Shard69 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 184, coordinateB := 1, sourceJ := 186, coordinateA := 0 },
  { epsilon := -1, sourceI := 184, coordinateB := 7, sourceJ := 187, coordinateA := 0 },
  { epsilon := -1, sourceI := 184, coordinateB := 90, sourceJ := 192, coordinateA := 89 },
  { epsilon := -1, sourceI := 186, coordinateB := 90, sourceJ := 194, coordinateA := 89 },
  { epsilon := -1, sourceI := 188, coordinateB := 6, sourceJ := 189, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 69. -/
def tropicalOverlapRelation8Shard69 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 70 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 70 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 70 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 70 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 115 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 102 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 112 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 115 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 102 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 112 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 76 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 76 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
69. -/
theorem tropicalOverlapRelation8_provenance_shard69 (i : Fin 5) :
    tropicalOverlapRelation8Shard69 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard69 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
