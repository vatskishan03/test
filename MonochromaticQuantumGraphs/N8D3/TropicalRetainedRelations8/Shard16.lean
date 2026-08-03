import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 80--84. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 16. -/
def tropicalOverlapProvenance8Shard16 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 23, coordinateB := 139, sourceJ := 123, coordinateA := 138 },
  { epsilon := 1, sourceI := 23, coordinateB := 142, sourceJ := 183, coordinateA := 138 },
  { epsilon := -1, sourceI := 24, coordinateB := 7, sourceJ := 25, coordinateA := 1 },
  { epsilon := 1, sourceI := 24, coordinateB := 141, sourceJ := 84, coordinateA := 138 },
  { epsilon := 1, sourceI := 24, coordinateB := 89, sourceJ := 28, coordinateA := 86 }
]

/-- The five explicit sparse target polynomials in overlap shard 16. -/
def tropicalOverlapRelation8Shard16 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 116 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 117 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 116 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 117 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 70 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 86 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 86 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 70 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 111 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 112 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 86 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 86 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 111 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 102 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 111 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 89 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 86 119) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
16. -/
theorem tropicalOverlapRelation8_provenance_shard16 (i : Fin 5) :
    tropicalOverlapRelation8Shard16 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard16 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
