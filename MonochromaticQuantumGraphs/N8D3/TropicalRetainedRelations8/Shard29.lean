import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 145--149. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 29. -/
def tropicalOverlapProvenance8Shard29 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 46, coordinateB := 89, sourceJ := 50, coordinateA := 86 },
  { epsilon := -1, sourceI := 46, coordinateB := 87, sourceJ := 54, coordinateA := 86 },
  { epsilon := 1, sourceI := 46, coordinateB := 90, sourceJ := 58, coordinateA := 86 },
  { epsilon := -1, sourceI := 48, coordinateB := 7, sourceJ := 49, coordinateA := 1 },
  { epsilon := 1, sourceI := 48, coordinateB := 139, sourceJ := 146, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 29. -/
def tropicalOverlapRelation8Shard29 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 103 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 89 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 86 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 103 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 86 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 87 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 106 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 90 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 86 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 71 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 89 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 71 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 119 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 120 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
29. -/
theorem tropicalOverlapRelation8_provenance_shard29 (i : Fin 5) :
    tropicalOverlapRelation8Shard29 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard29 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
