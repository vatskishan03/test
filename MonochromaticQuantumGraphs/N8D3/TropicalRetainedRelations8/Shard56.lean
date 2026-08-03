import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 280--284. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 56. -/
def tropicalOverlapProvenance8Shard56 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 136, coordinateB := 142, sourceJ := 196, coordinateA := 139 },
  { epsilon := 1, sourceI := 137, coordinateB := 142, sourceJ := 197, coordinateA := 139 },
  { epsilon := -1, sourceI := 140, coordinateB := 7, sourceJ := 141, coordinateA := 6 },
  { epsilon := -1, sourceI := 140, coordinateB := 89, sourceJ := 145, coordinateA := 88 },
  { epsilon := -1, sourceI := 140, coordinateB := 90, sourceJ := 153, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 56. -/
def tropicalOverlapRelation8Shard56 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 114 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 115 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 90 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 90 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 123 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 76 123 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 114 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 115 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 90 130 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 90 130 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 123 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 123 139) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 43 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 51 88 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 71 117) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 40 88 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 48 88 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 71 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 111 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 100 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 108 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 114 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 100 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 108 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 90 117) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
56. -/
theorem tropicalOverlapRelation8_provenance_shard56 (i : Fin 5) :
    tropicalOverlapRelation8Shard56 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard56 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
