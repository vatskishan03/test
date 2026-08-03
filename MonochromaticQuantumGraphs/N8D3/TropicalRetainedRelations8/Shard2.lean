import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 10--14. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 2. -/
def tropicalOverlapProvenance8Shard2 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 1, coordinateB := 87, sourceJ := 15, coordinateA := 85 },
  { epsilon := 1, sourceI := 1, coordinateB := 90, sourceJ := 19, coordinateA := 85 },
  { epsilon := 1, sourceI := 2, coordinateB := 141, sourceJ := 62, coordinateA := 138 },
  { epsilon := 1, sourceI := 2, coordinateB := 139, sourceJ := 101, coordinateA := 138 },
  { epsilon := 1, sourceI := 2, coordinateB := 142, sourceJ := 161, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 2. -/
def tropicalOverlapRelation8Shard2 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 114 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 98 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 108 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 87 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 104 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 126) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 126 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 116 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 117 138) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 127 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 117 138) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
2. -/
theorem tropicalOverlapRelation8_provenance_shard2 (i : Fin 5) :
    tropicalOverlapRelation8Shard2 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard2 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
