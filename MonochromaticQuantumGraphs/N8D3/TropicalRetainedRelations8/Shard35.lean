import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 175--179. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 35. -/
def tropicalOverlapProvenance8Shard35 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 64, coordinateB := 90, sourceJ := 76, coordinateA := 86 },
  { epsilon := -1, sourceI := 66, coordinateB := 7, sourceJ := 67, coordinateA := 1 },
  { epsilon := 1, sourceI := 66, coordinateB := 89, sourceJ := 70, coordinateA := 86 },
  { epsilon := -1, sourceI := 66, coordinateB := 87, sourceJ := 74, coordinateA := 86 },
  { epsilon := 1, sourceI := 66, coordinateB := 90, sourceJ := 78, coordinateA := 86 }
]

/-- The five explicit sparse target polynomials in overlap shard 35. -/
def tropicalOverlapRelation8Shard35 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 112 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 104 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 115 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 90 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 86 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 75 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 86 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 86 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 75 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 112 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 101 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 112 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 89 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 86 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 115 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 101 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 112 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 86 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 87 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 112 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 104 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 115 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 90 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 86 122) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
35. -/
theorem tropicalOverlapRelation8_provenance_shard35 (i : Fin 5) :
    tropicalOverlapRelation8Shard35 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard35 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
