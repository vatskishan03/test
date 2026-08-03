import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 310--314. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 62. -/
def tropicalOverlapProvenance8Shard62 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 160, coordinateB := 90, sourceJ := 173, coordinateA := 88 },
  { epsilon := -1, sourceI := 161, coordinateB := 89, sourceJ := 167, coordinateA := 88 },
  { epsilon := -1, sourceI := 161, coordinateB := 90, sourceJ := 175, coordinateA := 88 },
  { epsilon := -1, sourceI := 162, coordinateB := 7, sourceJ := 163, coordinateA := 6 },
  { epsilon := -1, sourceI := 162, coordinateB := 89, sourceJ := 169, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 62. -/
def tropicalOverlapRelation8Shard62 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 115 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 98 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 109 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 112 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 98 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 109 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 115 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 98 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 109 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 41 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 52 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 75 117) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 38 88 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 49 88 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 75 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 112 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 98 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 109 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 89 117) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
62. -/
theorem tropicalOverlapRelation8_provenance_shard62 (i : Fin 5) :
    tropicalOverlapRelation8Shard62 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard62 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
