import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 245--249. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 49. -/
def tropicalOverlapProvenance8Shard49 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 117, coordinateB := 142, sourceJ := 177, coordinateA := 139 },
  { epsilon := -1, sourceI := 120, coordinateB := 7, sourceJ := 121, coordinateA := 6 },
  { epsilon := 1, sourceI := 120, coordinateB := 142, sourceJ := 180, coordinateA := 139 },
  { epsilon := -1, sourceI := 120, coordinateB := 89, sourceJ := 125, coordinateA := 88 },
  { epsilon := -1, sourceI := 120, coordinateB := 90, sourceJ := 133, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 49. -/
def tropicalOverlapRelation8Shard49 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 114 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 115 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 90 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 90 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 123 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 123 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 42 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 51 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 70 117) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 39 88 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 48 88 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 70 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 108 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 109 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 88 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 88 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 117 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 117 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 111 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 99 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 108 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 114 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 99 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 108 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 90 117) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
49. -/
theorem tropicalOverlapRelation8_provenance_shard49 (i : Fin 5) :
    tropicalOverlapRelation8Shard49 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard49 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
