import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 120--124. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 24. -/
def tropicalOverlapProvenance8Shard24 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 37, coordinateB := 142, sourceJ := 195, coordinateA := 138 },
  { epsilon := -1, sourceI := 38, coordinateB := 7, sourceJ := 39, coordinateA := 1 },
  { epsilon := 1, sourceI := 38, coordinateB := 141, sourceJ := 98, coordinateA := 138 },
  { epsilon := 1, sourceI := 38, coordinateB := 139, sourceJ := 138, coordinateA := 138 },
  { epsilon := 1, sourceI := 38, coordinateB := 142, sourceJ := 198, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 24. -/
def tropicalOverlapRelation8Shard24 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 122 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 76 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 90 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 76 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 122 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 122 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 122 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 123 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 122 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 123 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
24. -/
theorem tropicalOverlapRelation8_provenance_shard24 (i : Fin 5) :
    tropicalOverlapRelation8Shard24 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard24 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
