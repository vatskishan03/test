import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 250--254. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 50. -/
def tropicalOverlapProvenance8Shard50 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 121, coordinateB := 89, sourceJ := 127, coordinateA := 88 },
  { epsilon := -1, sourceI := 121, coordinateB := 90, sourceJ := 135, coordinateA := 88 },
  { epsilon := -1, sourceI := 122, coordinateB := 7, sourceJ := 123, coordinateA := 6 },
  { epsilon := 1, sourceI := 122, coordinateB := 142, sourceJ := 182, coordinateA := 139 },
  { epsilon := -1, sourceI := 122, coordinateB := 89, sourceJ := 129, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 50. -/
def tropicalOverlapRelation8Shard50 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 111 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 99 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 108 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 99 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 42 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 51 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 76 117) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 39 88 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 48 88 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 76 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 108 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 109 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 88 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 88 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 117 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 117 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 111 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 99 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 108 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 89 117) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
50. -/
theorem tropicalOverlapRelation8_provenance_shard50 (i : Fin 5) :
    tropicalOverlapRelation8Shard50 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard50 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
