import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 230--234. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 46. -/
def tropicalOverlapProvenance8Shard46 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 108, coordinateB := 1, sourceJ := 110, coordinateA := 0 },
  { epsilon := -1, sourceI := 108, coordinateB := 7, sourceJ := 111, coordinateA := 0 },
  { epsilon := 1, sourceI := 108, coordinateB := 142, sourceJ := 168, coordinateA := 139 },
  { epsilon := -1, sourceI := 108, coordinateB := 90, sourceJ := 116, coordinateA := 89 },
  { epsilon := 1, sourceI := 109, coordinateB := 142, sourceJ := 169, coordinateA := 139 }
]

/-- The five explicit sparse target polynomials in overlap shard 46. -/
def tropicalOverlapRelation8Shard46 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 75 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 75 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 75 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 75 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 111 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 112 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 89 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 89 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 120 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 120 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 114 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 101 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 111 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 111 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 112 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 89 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 89 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 120 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 120 139) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
46. -/
theorem tropicalOverlapRelation8_provenance_shard46 (i : Fin 5) :
    tropicalOverlapRelation8Shard46 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard46 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
