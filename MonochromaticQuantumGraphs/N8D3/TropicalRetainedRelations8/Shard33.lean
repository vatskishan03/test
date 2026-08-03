import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 165--169. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 33. -/
def tropicalOverlapProvenance8Shard33 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 60, coordinateB := 87, sourceJ := 73, coordinateA := 85 },
  { epsilon := 1, sourceI := 60, coordinateB := 90, sourceJ := 77, coordinateA := 85 },
  { epsilon := 1, sourceI := 61, coordinateB := 88, sourceJ := 63, coordinateA := 85 },
  { epsilon := -1, sourceI := 61, coordinateB := 86, sourceJ := 67, coordinateA := 85 },
  { epsilon := 1, sourceI := 61, coordinateB := 89, sourceJ := 71, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 33. -/
def tropicalOverlapRelation8Shard33 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 115 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 98 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 109 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 87 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 109 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 104 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 115 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 109 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 98 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 109 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 112 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 98 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 109 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 86 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 109 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 101 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 112 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 85 119) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
33. -/
theorem tropicalOverlapRelation8_provenance_shard33 (i : Fin 5) :
    tropicalOverlapRelation8Shard33 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard33 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
