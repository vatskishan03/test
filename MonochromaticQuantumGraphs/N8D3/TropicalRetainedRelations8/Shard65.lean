import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 325--329. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 65. -/
def tropicalOverlapProvenance8Shard65 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 168, coordinateB := 7, sourceJ := 171, coordinateA := 0 },
  { epsilon := -1, sourceI := 168, coordinateB := 90, sourceJ := 176, coordinateA := 89 },
  { epsilon := -1, sourceI := 170, coordinateB := 90, sourceJ := 178, coordinateA := 89 },
  { epsilon := -1, sourceI := 172, coordinateB := 6, sourceJ := 173, coordinateA := 0 },
  { epsilon := -1, sourceI := 172, coordinateB := 1, sourceJ := 174, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 65. -/
def tropicalOverlapRelation8Shard65 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 75 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 75 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 115 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 101 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 112 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 115 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 101 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 112 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 69 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 69 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 69 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 90 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 69 123) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
65. -/
theorem tropicalOverlapRelation8_provenance_shard65 (i : Fin 5) :
    tropicalOverlapRelation8Shard65 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard65 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
