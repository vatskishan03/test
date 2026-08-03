import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 95--99. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 19. -/
def tropicalOverlapProvenance8Shard19 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 28, coordinateB := 141, sourceJ := 88, coordinateA := 138 },
  { epsilon := 1, sourceI := 28, coordinateB := 139, sourceJ := 126, coordinateA := 138 },
  { epsilon := 1, sourceI := 28, coordinateB := 142, sourceJ := 186, coordinateA := 138 },
  { epsilon := 1, sourceI := 29, coordinateB := 141, sourceJ := 89, coordinateA := 138 },
  { epsilon := 1, sourceI := 29, coordinateB := 139, sourceJ := 127, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 19. -/
def tropicalOverlapRelation8Shard19 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 120 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 129 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 119 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 130 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 120 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
19. -/
theorem tropicalOverlapRelation8_provenance_shard19 (i : Fin 5) :
    tropicalOverlapRelation8Shard19 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard19 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
