import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 295--299. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 59. -/
def tropicalOverlapProvenance8Shard59 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 144, coordinateB := 90, sourceJ := 152, coordinateA := 89 },
  { epsilon := -1, sourceI := 146, coordinateB := 90, sourceJ := 154, coordinateA := 89 },
  { epsilon := -1, sourceI := 148, coordinateB := 6, sourceJ := 149, coordinateA := 0 },
  { epsilon := -1, sourceI := 148, coordinateB := 1, sourceJ := 150, coordinateA := 0 },
  { epsilon := -1, sourceI := 148, coordinateB := 7, sourceJ := 151, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 59. -/
def tropicalOverlapRelation8Shard59 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 103 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 71 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 71 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 114 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 103 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 111 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 40 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 77 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 40 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 77 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 77 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 40 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 77 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 77 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 40 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 77 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
59. -/
theorem tropicalOverlapRelation8_provenance_shard59 (i : Fin 5) :
    tropicalOverlapRelation8Shard59 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard59 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
