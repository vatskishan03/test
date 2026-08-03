import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 130--134. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 26. -/
def tropicalOverlapProvenance8Shard26 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 40, coordinateB := 89, sourceJ := 49, coordinateA := 85 },
  { epsilon := -1, sourceI := 40, coordinateB := 87, sourceJ := 53, coordinateA := 85 },
  { epsilon := 1, sourceI := 40, coordinateB := 90, sourceJ := 57, coordinateA := 85 },
  { epsilon := 1, sourceI := 41, coordinateB := 88, sourceJ := 43, coordinateA := 85 },
  { epsilon := -1, sourceI := 41, coordinateB := 86, sourceJ := 47, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 26. -/
def tropicalOverlapRelation8Shard26 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 108 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 103 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 89 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 119) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 114 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 100 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 108 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 85 122) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 87 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 108 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 106 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 114 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 90 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 122) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 108 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 100 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 108 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 88 116) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 116) (-1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 111 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 100 138) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 108 132) (-1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 85 119) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 86 116) (-1)
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for shard
26. -/
theorem tropicalOverlapRelation8_provenance_shard26 (i : Fin 5) :
    tropicalOverlapRelation8Shard26 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard26 i) := by
  revert i
  decide

end

end MonochromaticQuantumGraphs.N8D3
