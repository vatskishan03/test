import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 185--189. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 37. -/
def tropicalOverlapProvenance8Shard37 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 78, coordinateB := 7, sourceJ := 79, coordinateA := 1 },
  { epsilon := 1, sourceI := 80, coordinateB := 88, sourceJ := 82, coordinateA := 85 },
  { epsilon := -1, sourceI := 80, coordinateB := 86, sourceJ := 85, coordinateA := 85 },
  { epsilon := 1, sourceI := 80, coordinateB := 89, sourceJ := 89, coordinateA := 85 },
  { epsilon := -1, sourceI := 80, coordinateB := 87, sourceJ := 93, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 37. -/
def tropicalOverlapRelation8Shard37 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 75 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 90 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 90 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 75 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 109 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 99 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 109 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 112 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 99 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 109 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 86 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 109 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 102 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 112 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 115 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 99 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 109 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 87 116) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
37. -/
theorem tropicalOverlapRelation8_provenance_shard37 (i : Fin 5) :
    tropicalOverlapRelation8Shard37 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard37 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
