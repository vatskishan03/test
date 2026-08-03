import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 220--224. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 44. -/
def tropicalOverlapProvenance8Shard44 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 103, coordinateB := 89, sourceJ := 111, coordinateA := 88 },
  { epsilon := -1, sourceI := 103, coordinateB := 90, sourceJ := 119, coordinateA := 88 },
  { epsilon := -1, sourceI := 104, coordinateB := 6, sourceJ := 105, coordinateA := 0 },
  { epsilon := -1, sourceI := 104, coordinateB := 1, sourceJ := 106, coordinateA := 0 },
  { epsilon := -1, sourceI := 104, coordinateB := 7, sourceJ := 107, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 44. -/
def tropicalOverlapRelation8Shard44 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 98 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 88 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 89 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 98 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 88 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 90 117) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 69 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 69 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 69 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 69 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 69 120) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 89 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 89 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 69 120) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
44. -/
theorem tropicalOverlapRelation8_provenance_shard44 (i : Fin 5) :
    tropicalOverlapRelation8Shard44 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard44 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
