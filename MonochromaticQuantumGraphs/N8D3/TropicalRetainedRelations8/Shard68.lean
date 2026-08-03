import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 340--344. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 68. -/
def tropicalOverlapProvenance8Shard68 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 182, coordinateB := 89, sourceJ := 189, coordinateA := 88 },
  { epsilon := -1, sourceI := 182, coordinateB := 90, sourceJ := 197, coordinateA := 88 },
  { epsilon := -1, sourceI := 183, coordinateB := 89, sourceJ := 191, coordinateA := 88 },
  { epsilon := -1, sourceI := 183, coordinateB := 90, sourceJ := 199, coordinateA := 88 },
  { epsilon := -1, sourceI := 184, coordinateB := 6, sourceJ := 185, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 68. -/
def tropicalOverlapRelation8Shard68 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 112 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 99 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 109 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 115 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 99 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 109 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 112 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 99 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 109 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 115 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 99 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 109 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 70 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 70 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
68. -/
theorem tropicalOverlapRelation8_provenance_shard68 (i : Fin 5) :
    tropicalOverlapRelation8Shard68 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard68 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
