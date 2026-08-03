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
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 87 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 86 116) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard26 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 89 100 138,
    tropicalOverlapDegreeFiveExponent8 7 58 89 108 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 89 132,
    tropicalOverlapDegreeFiveExponent8 25 51 71 89 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 87 100 138,
    tropicalOverlapDegreeFiveExponent8 7 58 87 108 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 87 132,
    tropicalOverlapDegreeFiveExponent8 25 51 71 87 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 90 100 138,
    tropicalOverlapDegreeFiveExponent8 7 58 90 108 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 90 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 90 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 90 132,
    tropicalOverlapDegreeFiveExponent8 25 51 71 90 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 88 100 138,
    tropicalOverlapDegreeFiveExponent8 7 64 88 108 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 88 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 88 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 88 132,
    tropicalOverlapDegreeFiveExponent8 25 51 77 88 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 86 100 138,
    tropicalOverlapDegreeFiveExponent8 7 64 86 108 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 86 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 86 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 86 132,
    tropicalOverlapDegreeFiveExponent8 25 51 77 86 116
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard26 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 103 138,
    tropicalOverlapDegreeFiveExponent8 7 59 85 111 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 89 132,
    tropicalOverlapDegreeFiveExponent8 26 51 71 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 106 138,
    tropicalOverlapDegreeFiveExponent8 7 58 85 114 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 87 132,
    tropicalOverlapDegreeFiveExponent8 25 51 71 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 106 138,
    tropicalOverlapDegreeFiveExponent8 7 59 85 114 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 90 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 90 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 90 132,
    tropicalOverlapDegreeFiveExponent8 26 51 71 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 100 138,
    tropicalOverlapDegreeFiveExponent8 7 65 85 108 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 88 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 88 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 88 132,
    tropicalOverlapDegreeFiveExponent8 26 51 77 85 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 85 103 138,
    tropicalOverlapDegreeFiveExponent8 7 64 85 111 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 86 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 86 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 86 132,
    tropicalOverlapDegreeFiveExponent8 25 51 77 85 119
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 26. -/
theorem tropicalOverlapSourceIExponent8_replay_shard26
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard26 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard26 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard26 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 26. -/
theorem tropicalOverlapSourceJExponent8_replay_shard26
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard26 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard26 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard26 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard26
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard26 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard26 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard26 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard26
    (i : Fin 5) :
    tropicalOverlapRelation8Shard26 i =
      tropicalOverlapSourceCombination8Shard26 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard26,
      tropicalOverlapSourceCombination8Shard26,
      tropicalOverlapProvenance8Shard26,
      tropicalOverlapSourceIExponent8Shard26,
      tropicalOverlapSourceJExponent8Shard26, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 26. -/
theorem tropicalOverlapRelation8_provenance_shard26 (i : Fin 5) :
    tropicalOverlapRelation8Shard26 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard26 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard26]
  unfold tropicalOverlapSourceCombination8Shard26
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard26,
    tropicalOverlapSourceJExponent8_replay_shard26]

end

end MonochromaticQuantumGraphs.N8D3
