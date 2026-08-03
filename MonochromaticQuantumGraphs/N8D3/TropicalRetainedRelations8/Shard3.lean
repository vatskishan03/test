import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 15--19. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 3. -/
def tropicalOverlapProvenance8Shard3 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 3, coordinateB := 141, sourceJ := 63, coordinateA := 138 },
  { epsilon := 1, sourceI := 3, coordinateB := 139, sourceJ := 103, coordinateA := 138 },
  { epsilon := 1, sourceI := 3, coordinateB := 142, sourceJ := 163, coordinateA := 138 },
  { epsilon := -1, sourceI := 4, coordinateB := 7, sourceJ := 5, coordinateA := 1 },
  { epsilon := 1, sourceI := 4, coordinateB := 141, sourceJ := 64, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 3. -/
def tropicalOverlapRelation8Shard3 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 116 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 117 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 117 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 69 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 86 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 86 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 69 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 111 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 112 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 86 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 86 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 119 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 119 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
3. -/
theorem tropicalOverlapRelation8_provenance_shard3 (i : Fin 5) :
    tropicalOverlapRelation8Shard3 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard3 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
