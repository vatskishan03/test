import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 300--304. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 60. -/
def tropicalOverlapProvenance8Shard60 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 148, coordinateB := 90, sourceJ := 156, coordinateA := 89 },
  { epsilon := -1, sourceI := 150, coordinateB := 90, sourceJ := 158, coordinateA := 89 },
  { epsilon := -1, sourceI := 152, coordinateB := 6, sourceJ := 153, coordinateA := 0 },
  { epsilon := -1, sourceI := 152, coordinateB := 1, sourceJ := 154, coordinateA := 0 },
  { epsilon := -1, sourceI := 152, coordinateB := 7, sourceJ := 155, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 60. -/
def tropicalOverlapRelation8Shard60 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 114 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 103 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 111 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 77 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 77 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 103 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 40 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 71 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 40 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 71 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 71 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 40 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 71 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 71 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 40 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 71 123) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
60. -/
theorem tropicalOverlapRelation8_provenance_shard60 (i : Fin 5) :
    tropicalOverlapRelation8Shard60 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard60 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
