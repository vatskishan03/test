import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 205--209. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 41. -/
def tropicalOverlapProvenance8Shard41 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 90, coordinateB := 7, sourceJ := 91, coordinateA := 1 },
  { epsilon := -1, sourceI := 92, coordinateB := 7, sourceJ := 93, coordinateA := 1 },
  { epsilon := -1, sourceI := 94, coordinateB := 7, sourceJ := 95, coordinateA := 1 },
  { epsilon := -1, sourceI := 96, coordinateB := 7, sourceJ := 97, coordinateA := 1 },
  { epsilon := -1, sourceI := 98, coordinateB := 7, sourceJ := 99, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 41. -/
def tropicalOverlapRelation8Shard41 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 76 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 89 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 89 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 76 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 70 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 87 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 87 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 70 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 76 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 87 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 87 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 76 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 70 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 90 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 90 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 70 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 76 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 90 141) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 90 129) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 76 122) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
41. -/
theorem tropicalOverlapRelation8_provenance_shard41 (i : Fin 5) :
    tropicalOverlapRelation8Shard41 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard41 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
