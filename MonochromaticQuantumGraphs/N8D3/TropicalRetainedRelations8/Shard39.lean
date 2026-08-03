import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 195--199. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 39. -/
def tropicalOverlapProvenance8Shard39 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 81, coordinateB := 90, sourceJ := 99, coordinateA := 85 },
  { epsilon := -1, sourceI := 84, coordinateB := 7, sourceJ := 85, coordinateA := 1 },
  { epsilon := 1, sourceI := 84, coordinateB := 89, sourceJ := 88, coordinateA := 86 },
  { epsilon := -1, sourceI := 84, coordinateB := 87, sourceJ := 92, coordinateA := 86 },
  { epsilon := 1, sourceI := 84, coordinateB := 90, sourceJ := 96, coordinateA := 86 }
]

/-- The five explicit sparse target polynomials in overlap shard 39. -/
def tropicalOverlapRelation8Shard39 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 109 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 105 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 115 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 70 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 86 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 86 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 70 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 112 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 102 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 112 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 89 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 86 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 115 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 102 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 112 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 86 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 87 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 112 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 105 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 115 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 90 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 86 122) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
39. -/
theorem tropicalOverlapRelation8_provenance_shard39 (i : Fin 5) :
    tropicalOverlapRelation8Shard39 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard39 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
