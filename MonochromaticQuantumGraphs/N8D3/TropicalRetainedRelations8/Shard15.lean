import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 75--79. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 15. -/
def tropicalOverlapProvenance8Shard15 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 21, coordinateB := 90, sourceJ := 39, coordinateA := 85 },
  { epsilon := 1, sourceI := 22, coordinateB := 141, sourceJ := 82, coordinateA := 138 },
  { epsilon := 1, sourceI := 22, coordinateB := 139, sourceJ := 121, coordinateA := 138 },
  { epsilon := 1, sourceI := 22, coordinateB := 142, sourceJ := 181, coordinateA := 138 },
  { epsilon := 1, sourceI := 23, coordinateB := 141, sourceJ := 83, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 15. -/
def tropicalOverlapRelation8Shard15 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 105 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 116 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 117 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 117 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 116 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 116 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
15. -/
theorem tropicalOverlapRelation8_provenance_shard15 (i : Fin 5) :
    tropicalOverlapRelation8Shard15 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard15 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
