import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 285--289. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 57. -/
def tropicalOverlapProvenance8Shard57 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 141, coordinateB := 89, sourceJ := 147, coordinateA := 88 },
  { epsilon := -1, sourceI := 141, coordinateB := 90, sourceJ := 155, coordinateA := 88 },
  { epsilon := -1, sourceI := 142, coordinateB := 7, sourceJ := 143, coordinateA := 6 },
  { epsilon := -1, sourceI := 142, coordinateB := 89, sourceJ := 149, coordinateA := 88 },
  { epsilon := -1, sourceI := 142, coordinateB := 90, sourceJ := 157, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 57. -/
def tropicalOverlapRelation8Shard57 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 111 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 100 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 108 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 100 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 43 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 51 88 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 77 117) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 40 88 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 48 88 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 77 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 111 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 100 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 108 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 100 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 90 117) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
57. -/
theorem tropicalOverlapRelation8_provenance_shard57 (i : Fin 5) :
    tropicalOverlapRelation8Shard57 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard57 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
