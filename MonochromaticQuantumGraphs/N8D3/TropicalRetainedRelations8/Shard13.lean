import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 65--69. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 13. -/
def tropicalOverlapProvenance8Shard13 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 20, coordinateB := 88, sourceJ := 22, coordinateA := 85 },
  { epsilon := -1, sourceI := 20, coordinateB := 86, sourceJ := 25, coordinateA := 85 },
  { epsilon := 1, sourceI := 20, coordinateB := 89, sourceJ := 29, coordinateA := 85 },
  { epsilon := -1, sourceI := 20, coordinateB := 87, sourceJ := 33, coordinateA := 85 },
  { epsilon := 1, sourceI := 20, coordinateB := 90, sourceJ := 37, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 13. -/
def tropicalOverlapRelation8Shard13 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 99 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 111 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 99 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 108 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 86 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 108 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 102 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 114 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 99 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 108 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 87 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 108 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 105 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 114 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 122) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
13. -/
theorem tropicalOverlapRelation8_provenance_shard13 (i : Fin 5) :
    tropicalOverlapRelation8Shard13 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard13 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
