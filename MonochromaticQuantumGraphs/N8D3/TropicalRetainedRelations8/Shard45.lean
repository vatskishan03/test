import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 225--229. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 45. -/
def tropicalOverlapProvenance8Shard45 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 104, coordinateB := 142, sourceJ := 164, coordinateA := 139 },
  { epsilon := -1, sourceI := 104, coordinateB := 90, sourceJ := 112, coordinateA := 89 },
  { epsilon := 1, sourceI := 105, coordinateB := 142, sourceJ := 165, coordinateA := 139 },
  { epsilon := -1, sourceI := 106, coordinateB := 90, sourceJ := 114, coordinateA := 89 },
  { epsilon := -1, sourceI := 108, coordinateB := 6, sourceJ := 109, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 45. -/
def tropicalOverlapRelation8Shard45 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 111 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 112 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 89 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 89 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 120 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 69 120 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 101 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 111 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 112 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 89 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 89 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 120 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 120 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 114 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 101 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 111 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 75 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 75 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
45. -/
theorem tropicalOverlapRelation8_provenance_shard45 (i : Fin 5) :
    tropicalOverlapRelation8Shard45 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard45 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
