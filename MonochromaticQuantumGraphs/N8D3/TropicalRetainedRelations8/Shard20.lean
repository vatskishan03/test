import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 100--104. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 20. -/
def tropicalOverlapProvenance8Shard20 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 29, coordinateB := 142, sourceJ := 187, coordinateA := 138 },
  { epsilon := -1, sourceI := 30, coordinateB := 7, sourceJ := 31, coordinateA := 1 },
  { epsilon := 1, sourceI := 30, coordinateB := 141, sourceJ := 90, coordinateA := 138 },
  { epsilon := 1, sourceI := 30, coordinateB := 139, sourceJ := 130, coordinateA := 138 },
  { epsilon := 1, sourceI := 30, coordinateB := 142, sourceJ := 190, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 20. -/
def tropicalOverlapRelation8Shard20 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 76 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 89 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 89 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 76 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 120 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
20. -/
theorem tropicalOverlapRelation8_provenance_shard20 (i : Fin 5) :
    tropicalOverlapRelation8Shard20 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard20 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
