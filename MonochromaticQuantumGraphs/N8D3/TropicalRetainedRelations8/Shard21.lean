import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 105--109. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 21. -/
def tropicalOverlapProvenance8Shard21 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 31, coordinateB := 141, sourceJ := 91, coordinateA := 138 },
  { epsilon := 1, sourceI := 31, coordinateB := 139, sourceJ := 131, coordinateA := 138 },
  { epsilon := 1, sourceI := 31, coordinateB := 142, sourceJ := 191, coordinateA := 138 },
  { epsilon := -1, sourceI := 32, coordinateB := 7, sourceJ := 33, coordinateA := 1 },
  { epsilon := 1, sourceI := 32, coordinateB := 141, sourceJ := 92, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 21. -/
def tropicalOverlapRelation8Shard21 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 70 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 87 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 70 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 114 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 115 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 87 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 87 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 122 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
21. -/
theorem tropicalOverlapRelation8_provenance_shard21 (i : Fin 5) :
    tropicalOverlapRelation8Shard21 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard21 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
