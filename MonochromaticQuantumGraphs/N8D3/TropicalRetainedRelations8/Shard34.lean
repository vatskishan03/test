import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 170--174. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 34. -/
def tropicalOverlapProvenance8Shard34 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 61, coordinateB := 87, sourceJ := 75, coordinateA := 85 },
  { epsilon := 1, sourceI := 61, coordinateB := 90, sourceJ := 79, coordinateA := 85 },
  { epsilon := -1, sourceI := 64, coordinateB := 7, sourceJ := 65, coordinateA := 1 },
  { epsilon := 1, sourceI := 64, coordinateB := 89, sourceJ := 68, coordinateA := 86 },
  { epsilon := -1, sourceI := 64, coordinateB := 87, sourceJ := 72, coordinateA := 86 }
]

/-- The five explicit sparse target polynomials in overlap shard 34. -/
def tropicalOverlapRelation8Shard34 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 115 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 98 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 109 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 87 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 109 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 104 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 115 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 69 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 86 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 86 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 69 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 112 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 101 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 112 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 89 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 86 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 115 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 101 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 112 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 86 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 87 119) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
34. -/
theorem tropicalOverlapRelation8_provenance_shard34 (i : Fin 5) :
    tropicalOverlapRelation8Shard34 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard34 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
