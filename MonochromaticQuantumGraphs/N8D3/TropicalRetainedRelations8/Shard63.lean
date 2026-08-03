import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 315--319. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 63. -/
def tropicalOverlapProvenance8Shard63 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 162, coordinateB := 90, sourceJ := 177, coordinateA := 88 },
  { epsilon := -1, sourceI := 163, coordinateB := 89, sourceJ := 171, coordinateA := 88 },
  { epsilon := -1, sourceI := 163, coordinateB := 90, sourceJ := 179, coordinateA := 88 },
  { epsilon := -1, sourceI := 164, coordinateB := 6, sourceJ := 165, coordinateA := 0 },
  { epsilon := -1, sourceI := 164, coordinateB := 1, sourceJ := 166, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 63. -/
def tropicalOverlapRelation8Shard63 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 115 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 98 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 109 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 112 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 98 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 109 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 115 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 98 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 109 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 69 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 69 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 69 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 89 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 69 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
63. -/
theorem tropicalOverlapRelation8_provenance_shard63 (i : Fin 5) :
    tropicalOverlapRelation8Shard63 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard63 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
