import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 190--194. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 38. -/
def tropicalOverlapProvenance8Shard38 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 80, coordinateB := 90, sourceJ := 97, coordinateA := 85 },
  { epsilon := 1, sourceI := 81, coordinateB := 88, sourceJ := 83, coordinateA := 85 },
  { epsilon := -1, sourceI := 81, coordinateB := 86, sourceJ := 87, coordinateA := 85 },
  { epsilon := 1, sourceI := 81, coordinateB := 89, sourceJ := 91, coordinateA := 85 },
  { epsilon := -1, sourceI := 81, coordinateB := 87, sourceJ := 95, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 38. -/
def tropicalOverlapRelation8Shard38 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 109 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 105 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 115 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 109 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 99 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 109 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 112 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 99 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 109 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 86 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 109 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 102 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 112 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 115 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 99 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 109 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 87 116) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
38. -/
theorem tropicalOverlapRelation8_provenance_shard38 (i : Fin 5) :
    tropicalOverlapRelation8Shard38 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard38 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
