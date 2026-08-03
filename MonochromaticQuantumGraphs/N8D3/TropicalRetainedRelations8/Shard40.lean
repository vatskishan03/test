import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 200--204. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 40. -/
def tropicalOverlapProvenance8Shard40 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 86, coordinateB := 7, sourceJ := 87, coordinateA := 1 },
  { epsilon := 1, sourceI := 86, coordinateB := 89, sourceJ := 90, coordinateA := 86 },
  { epsilon := -1, sourceI := 86, coordinateB := 87, sourceJ := 94, coordinateA := 86 },
  { epsilon := 1, sourceI := 86, coordinateB := 90, sourceJ := 98, coordinateA := 86 },
  { epsilon := -1, sourceI := 88, coordinateB := 7, sourceJ := 89, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 40. -/
def tropicalOverlapRelation8Shard40 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 76 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 86 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 86 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 76 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 112 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 102 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 112 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 89 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 86 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 115 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 102 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 112 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 86 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 87 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 112 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 105 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 115 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 90 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 86 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 70 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 89 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 89 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 70 119) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
40. -/
theorem tropicalOverlapRelation8_provenance_shard40 (i : Fin 5) :
    tropicalOverlapRelation8Shard40 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard40 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
