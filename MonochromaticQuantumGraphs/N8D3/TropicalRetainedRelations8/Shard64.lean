import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 320--324. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 64. -/
def tropicalOverlapProvenance8Shard64 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 164, coordinateB := 7, sourceJ := 167, coordinateA := 0 },
  { epsilon := -1, sourceI := 164, coordinateB := 90, sourceJ := 172, coordinateA := 89 },
  { epsilon := -1, sourceI := 166, coordinateB := 90, sourceJ := 174, coordinateA := 89 },
  { epsilon := -1, sourceI := 168, coordinateB := 6, sourceJ := 169, coordinateA := 0 },
  { epsilon := -1, sourceI := 168, coordinateB := 1, sourceJ := 170, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 64. -/
def tropicalOverlapRelation8Shard64 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 69 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 69 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 115 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 101 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 112 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 69 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 69 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 115 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 101 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 112 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 75 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 75 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 75 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 75 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
64. -/
theorem tropicalOverlapRelation8_provenance_shard64 (i : Fin 5) :
    tropicalOverlapRelation8Shard64 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard64 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
