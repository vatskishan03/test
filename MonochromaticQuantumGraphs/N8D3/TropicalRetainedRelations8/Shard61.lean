import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 305--309. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 61. -/
def tropicalOverlapProvenance8Shard61 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 156, coordinateB := 6, sourceJ := 157, coordinateA := 0 },
  { epsilon := -1, sourceI := 156, coordinateB := 1, sourceJ := 158, coordinateA := 0 },
  { epsilon := -1, sourceI := 156, coordinateB := 7, sourceJ := 159, coordinateA := 0 },
  { epsilon := -1, sourceI := 160, coordinateB := 7, sourceJ := 161, coordinateA := 6 },
  { epsilon := -1, sourceI := 160, coordinateB := 89, sourceJ := 165, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 61. -/
def tropicalOverlapRelation8Shard61 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 40 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 77 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 40 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 90 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 77 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 77 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 40 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 90 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 77 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 77 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 40 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 133) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 77 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 41 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 52 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 69 117) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 38 88 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 49 88 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 69 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 112 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 98 142) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 109 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 89 117) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
61. -/
theorem tropicalOverlapRelation8_provenance_shard61 (i : Fin 5) :
    tropicalOverlapRelation8Shard61 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard61 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
