import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 330--334. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 66. -/
def tropicalOverlapProvenance8Shard66 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 172, coordinateB := 7, sourceJ := 175, coordinateA := 0 },
  { epsilon := -1, sourceI := 176, coordinateB := 6, sourceJ := 177, coordinateA := 0 },
  { epsilon := -1, sourceI := 176, coordinateB := 1, sourceJ := 178, coordinateA := 0 },
  { epsilon := -1, sourceI := 176, coordinateB := 7, sourceJ := 179, coordinateA := 0 },
  { epsilon := -1, sourceI := 180, coordinateB := 7, sourceJ := 181, coordinateA := 6 }
]

/-- The five explicit sparse target polynomials in overlap shard 66. -/
def tropicalOverlapRelation8Shard66 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 69 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 69 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 75 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 75 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 75 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 75 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 75 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 75 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 42 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 52 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 70 117) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 39 88 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 49 88 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 70 117) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
66. -/
theorem tropicalOverlapRelation8_provenance_shard66 (i : Fin 5) :
    tropicalOverlapRelation8Shard66 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard66 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
