import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 355--359. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 71. -/
def tropicalOverlapProvenance8Shard71 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 192, coordinateB := 1, sourceJ := 194, coordinateA := 0 },
  { epsilon := -1, sourceI := 192, coordinateB := 7, sourceJ := 195, coordinateA := 0 },
  { epsilon := -1, sourceI := 196, coordinateB := 6, sourceJ := 197, coordinateA := 0 },
  { epsilon := -1, sourceI := 196, coordinateB := 1, sourceJ := 198, coordinateA := 0 },
  { epsilon := -1, sourceI := 196, coordinateB := 7, sourceJ := 199, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 71. -/
def tropicalOverlapRelation8Shard71 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 70 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 70 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 70 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 70 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 76 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 76 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 76 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 76 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 76 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 90 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 76 123) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
71. -/
theorem tropicalOverlapRelation8_provenance_shard71 (i : Fin 5) :
    tropicalOverlapRelation8Shard71 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard71 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
