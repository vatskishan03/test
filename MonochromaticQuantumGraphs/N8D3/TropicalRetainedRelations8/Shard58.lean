import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 290--294. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 58. -/
def tropicalOverlapProvenance8Shard58 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 143, coordinateB := 89, sourceJ := 151, coordinateA := 88 },
  { epsilon := -1, sourceI := 143, coordinateB := 90, sourceJ := 159, coordinateA := 88 },
  { epsilon := -1, sourceI := 144, coordinateB := 6, sourceJ := 145, coordinateA := 0 },
  { epsilon := -1, sourceI := 144, coordinateB := 1, sourceJ := 146, coordinateA := 0 },
  { epsilon := -1, sourceI := 144, coordinateB := 7, sourceJ := 147, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 58. -/
def tropicalOverlapRelation8Shard58 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 100 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 100 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 40 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 71 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 40 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 71 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 71 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 40 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 71 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 71 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 40 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 89 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 71 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
58. -/
theorem tropicalOverlapRelation8_provenance_shard58 (i : Fin 5) :
    tropicalOverlapRelation8Shard58 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard58 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
