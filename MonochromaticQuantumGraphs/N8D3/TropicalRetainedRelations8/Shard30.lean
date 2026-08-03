import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 150--154. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 30. -/
def tropicalOverlapProvenance8Shard30 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 49, coordinateB := 139, sourceJ := 147, coordinateA := 138 },
  { epsilon := -1, sourceI := 50, coordinateB := 7, sourceJ := 51, coordinateA := 1 },
  { epsilon := 1, sourceI := 50, coordinateB := 139, sourceJ := 150, coordinateA := 138 },
  { epsilon := 1, sourceI := 51, coordinateB := 139, sourceJ := 151, coordinateA := 138 },
  { epsilon := -1, sourceI := 52, coordinateB := 7, sourceJ := 53, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 30. -/
def tropicalOverlapRelation8Shard30 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 89 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 77 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 89 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 77 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 71 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 71 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard30 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 103 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 111 132 139,
    tropicalOverlapDegreeFiveExponent8 7 71 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 43 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 89 132 139,
    tropicalOverlapDegreeFiveExponent8 26 51 71 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 103 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 111 132,
    tropicalOverlapDegreeFiveExponent8 1 7 77 89 138,
    tropicalOverlapDegreeFiveExponent8 7 11 43 89 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 89 132,
    tropicalOverlapDegreeFiveExponent8 7 20 51 77 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 103 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 111 132 139,
    tropicalOverlapDegreeFiveExponent8 1 77 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 43 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 132 139,
    tropicalOverlapDegreeFiveExponent8 20 51 77 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 103 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 111 132 139,
    tropicalOverlapDegreeFiveExponent8 7 77 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 43 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 89 132 139,
    tropicalOverlapDegreeFiveExponent8 26 51 77 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 106 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 114 132,
    tropicalOverlapDegreeFiveExponent8 1 7 71 87 138,
    tropicalOverlapDegreeFiveExponent8 7 9 43 87 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 87 132,
    tropicalOverlapDegreeFiveExponent8 7 19 51 71 122
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard30 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 103 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 111 133 138,
    tropicalOverlapDegreeFiveExponent8 7 71 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 43 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 89 133 138,
    tropicalOverlapDegreeFiveExponent8 26 51 71 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 103 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 111 132,
    tropicalOverlapDegreeFiveExponent8 1 7 77 89 138,
    tropicalOverlapDegreeFiveExponent8 1 17 43 89 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 89 132,
    tropicalOverlapDegreeFiveExponent8 1 26 51 77 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 103 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 111 133 138,
    tropicalOverlapDegreeFiveExponent8 1 77 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 43 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 133 138,
    tropicalOverlapDegreeFiveExponent8 20 51 77 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 103 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 111 133 138,
    tropicalOverlapDegreeFiveExponent8 7 77 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 43 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 89 133 138,
    tropicalOverlapDegreeFiveExponent8 26 51 77 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 106 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 114 132,
    tropicalOverlapDegreeFiveExponent8 1 7 71 87 138,
    tropicalOverlapDegreeFiveExponent8 1 15 43 87 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 87 132,
    tropicalOverlapDegreeFiveExponent8 1 25 51 71 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 30. -/
theorem tropicalOverlapSourceIExponent8_replay_shard30
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard30 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard30 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard30 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 30. -/
theorem tropicalOverlapSourceJExponent8_replay_shard30
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard30 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard30 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard30 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard30
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard30 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard30 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard30 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard30
    (i : Fin 5) :
    tropicalOverlapRelation8Shard30 i =
      tropicalOverlapSourceCombination8Shard30 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard30,
      tropicalOverlapSourceCombination8Shard30,
      tropicalOverlapProvenance8Shard30,
      tropicalOverlapSourceIExponent8Shard30,
      tropicalOverlapSourceJExponent8Shard30, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 30. -/
theorem tropicalOverlapRelation8_provenance_shard30 (i : Fin 5) :
    tropicalOverlapRelation8Shard30 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard30 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard30]
  unfold tropicalOverlapSourceCombination8Shard30
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard30,
    tropicalOverlapSourceJExponent8_replay_shard30]

end

end MonochromaticQuantumGraphs.N8D3
