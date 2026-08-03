import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 301. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 301. -/
def tropicalOverlapProvenance8Row301 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 150, coordinateB := 90, sourceJ := 158, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 301. -/
def tropicalOverlapRelation8Row301 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 103 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row301 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 90 103 139,
  tropicalOverlapDegreeFiveExponent8 1 65 90 111 133,
  tropicalOverlapDegreeFiveExponent8 1 77 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 43 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 90 133,
  tropicalOverlapDegreeFiveExponent8 20 51 77 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row301 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 89 106 139,
  tropicalOverlapDegreeFiveExponent8 1 65 89 114 133,
  tropicalOverlapDegreeFiveExponent8 1 77 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 43 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 90 133,
  tropicalOverlapDegreeFiveExponent8 20 51 77 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 301. -/
theorem tropicalOverlapSourceIExponent8_replay_row301 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row301.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row301.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row301 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 301. -/
theorem tropicalOverlapSourceJExponent8_replay_row301 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row301.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row301.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row301 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row301 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row301.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row301 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row301 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row301 :
    tropicalOverlapRelation8Row301 =
      tropicalOverlapSourceCombination8Row301 := by
  simp [tropicalOverlapRelation8Row301,
    tropicalOverlapSourceCombination8Row301,
    tropicalOverlapProvenance8Row301,
    tropicalOverlapSourceIExponent8Row301,
    tropicalOverlapSourceJExponent8Row301, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 301. -/
theorem tropicalOverlapRelation8_provenance_row301 :
    tropicalOverlapRelation8Row301 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row301 := by
  rw [tropicalOverlapRelation8_sourceCombination_row301]
  unfold tropicalOverlapSourceCombination8Row301
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row301,
    tropicalOverlapSourceJExponent8_replay_row301]

end

end MonochromaticQuantumGraphs.N8D3
