import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 85--89. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 17. -/
def tropicalOverlapProvenance8Shard17 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 24, coordinateB := 87, sourceJ := 32, coordinateA := 86 },
  { epsilon := 1, sourceI := 24, coordinateB := 90, sourceJ := 36, coordinateA := 86 },
  { epsilon := 1, sourceI := 25, coordinateB := 141, sourceJ := 85, coordinateA := 138 },
  { epsilon := -1, sourceI := 26, coordinateB := 7, sourceJ := 27, coordinateA := 1 },
  { epsilon := 1, sourceI := 26, coordinateB := 141, sourceJ := 86, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 17. -/
def tropicalOverlapRelation8Shard17 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 114 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 102 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 111 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 86 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 87 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 111 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 105 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 114 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 90 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 86 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 111 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 112 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 86 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 86 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 76 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 86 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 86 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 76 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 111 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 112 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 86 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 86 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 119 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
17. -/
theorem tropicalOverlapRelation8_provenance_shard17 (i : Fin 5) :
    tropicalOverlapRelation8Shard17 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard17 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
