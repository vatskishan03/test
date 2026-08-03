import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 135--139. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 27. -/
def tropicalOverlapProvenance8Shard27 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 41, coordinateB := 89, sourceJ := 51, coordinateA := 85 },
  { epsilon := -1, sourceI := 41, coordinateB := 87, sourceJ := 55, coordinateA := 85 },
  { epsilon := 1, sourceI := 41, coordinateB := 90, sourceJ := 59, coordinateA := 85 },
  { epsilon := 1, sourceI := 42, coordinateB := 139, sourceJ := 141, coordinateA := 138 },
  { epsilon := 1, sourceI := 43, coordinateB := 139, sourceJ := 143, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 27. -/
def tropicalOverlapRelation8Shard27 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 108 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 103 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 111 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 114 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 100 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 108 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 87 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 106 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 116 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 117 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 132 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 133 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 116 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 117 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
27. -/
theorem tropicalOverlapRelation8_provenance_shard27 (i : Fin 5) :
    tropicalOverlapRelation8Shard27 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard27 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
