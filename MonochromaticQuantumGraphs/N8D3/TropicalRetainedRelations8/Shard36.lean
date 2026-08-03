import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 180--184. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 36. -/
def tropicalOverlapProvenance8Shard36 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 68, coordinateB := 7, sourceJ := 69, coordinateA := 1 },
  { epsilon := -1, sourceI := 70, coordinateB := 7, sourceJ := 71, coordinateA := 1 },
  { epsilon := -1, sourceI := 72, coordinateB := 7, sourceJ := 73, coordinateA := 1 },
  { epsilon := -1, sourceI := 74, coordinateB := 7, sourceJ := 75, coordinateA := 1 },
  { epsilon := -1, sourceI := 76, coordinateB := 7, sourceJ := 77, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 36. -/
def tropicalOverlapRelation8Shard36 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 69 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 89 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 89 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 69 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 75 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 89 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 89 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 75 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 69 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 87 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 87 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 69 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 75 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 87 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 87 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 75 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 69 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 90 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 90 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 69 122) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
36. -/
theorem tropicalOverlapRelation8_provenance_shard36 (i : Fin 5) :
    tropicalOverlapRelation8Shard36 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard36 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
