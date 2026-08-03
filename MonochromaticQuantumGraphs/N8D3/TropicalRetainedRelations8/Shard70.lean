import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 350--354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 70. -/
def tropicalOverlapProvenance8Shard70 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 188, coordinateB := 1, sourceJ := 190, coordinateA := 0 },
  { epsilon := -1, sourceI := 188, coordinateB := 7, sourceJ := 191, coordinateA := 0 },
  { epsilon := -1, sourceI := 188, coordinateB := 90, sourceJ := 196, coordinateA := 89 },
  { epsilon := -1, sourceI := 190, coordinateB := 90, sourceJ := 198, coordinateA := 89 },
  { epsilon := -1, sourceI := 192, coordinateB := 6, sourceJ := 193, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 70. -/
def tropicalOverlapRelation8Shard70 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 76 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 76 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 76 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 76 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 115 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 102 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 112 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 76 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 76 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 115 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 102 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 112 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 70 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 70 123) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
70. -/
theorem tropicalOverlapRelation8_provenance_shard70 (i : Fin 5) :
    tropicalOverlapRelation8Shard70 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard70 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
