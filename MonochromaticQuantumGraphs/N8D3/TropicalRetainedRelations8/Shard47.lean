import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 235--239. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 47. -/
def tropicalOverlapProvenance8Shard47 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 110, coordinateB := 90, sourceJ := 118, coordinateA := 89 },
  { epsilon := -1, sourceI := 112, coordinateB := 6, sourceJ := 113, coordinateA := 0 },
  { epsilon := -1, sourceI := 112, coordinateB := 1, sourceJ := 114, coordinateA := 0 },
  { epsilon := -1, sourceI := 112, coordinateB := 7, sourceJ := 115, coordinateA := 0 },
  { epsilon := 1, sourceI := 112, coordinateB := 142, sourceJ := 172, coordinateA := 139 }
]

/-- The five explicit sparse target polynomials in overlap shard 47. -/
def tropicalOverlapRelation8Shard47 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 101 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 89 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 90 120) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 69 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 69 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 69 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 69 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 69 123) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 90 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 127) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 69 123) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 114 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 115 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 90 127 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 90 127 139) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 123 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 69 123 139) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
47. -/
theorem tropicalOverlapRelation8_provenance_shard47 (i : Fin 5) :
    tropicalOverlapRelation8Shard47 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard47 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
