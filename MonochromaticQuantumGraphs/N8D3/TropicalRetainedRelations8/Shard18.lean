import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 90--94. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 18. -/
def tropicalOverlapProvenance8Shard18 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 26, coordinateB := 89, sourceJ := 30, coordinateA := 86 },
  { epsilon := -1, sourceI := 26, coordinateB := 87, sourceJ := 34, coordinateA := 86 },
  { epsilon := 1, sourceI := 26, coordinateB := 90, sourceJ := 38, coordinateA := 86 },
  { epsilon := 1, sourceI := 27, coordinateB := 141, sourceJ := 87, coordinateA := 138 },
  { epsilon := -1, sourceI := 28, coordinateB := 7, sourceJ := 29, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 18. -/
def tropicalOverlapRelation8Shard18 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 102 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 89 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 86 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 102 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 86 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 87 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 105 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 90 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 86 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 111 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 112 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 86 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 86 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 70 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 89 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 70 119) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
18. -/
theorem tropicalOverlapRelation8_provenance_shard18 (i : Fin 5) :
    tropicalOverlapRelation8Shard18 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard18 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
