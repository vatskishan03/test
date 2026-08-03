import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 255--259. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 51. -/
def tropicalOverlapProvenance8Shard51 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 122, coordinateB := 90, sourceJ := 137, coordinateA := 88 },
  { epsilon := -1, sourceI := 123, coordinateB := 89, sourceJ := 131, coordinateA := 88 },
  { epsilon := -1, sourceI := 123, coordinateB := 90, sourceJ := 139, coordinateA := 88 },
  { epsilon := -1, sourceI := 124, coordinateB := 6, sourceJ := 125, coordinateA := 0 },
  { epsilon := -1, sourceI := 124, coordinateB := 1, sourceJ := 126, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 51. -/
def tropicalOverlapRelation8Shard51 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 99 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 99 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 99 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 70 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 70 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 70 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 130) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 70 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
51. -/
theorem tropicalOverlapRelation8_provenance_shard51 (i : Fin 5) :
    tropicalOverlapRelation8Shard51 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard51 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
