import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 125. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 125. -/
def tropicalOverlapProvenance8Row125 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 39, coordinateB := 141, sourceJ := 99, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 125. -/
def tropicalOverlapRelation8Row125 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row125 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 114 129 141,
  tropicalOverlapDegreeFiveExponent8 7 76 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 90 129 141,
  tropicalOverlapDegreeFiveExponent8 26 51 76 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row125 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 115 129 138,
  tropicalOverlapDegreeFiveExponent8 7 76 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 90 129 138,
  tropicalOverlapDegreeFiveExponent8 26 52 76 122 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 125. -/
theorem tropicalOverlapSourceIExponent8_replay_row125 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row125.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row125.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row125 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 125. -/
theorem tropicalOverlapSourceJExponent8_replay_row125 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row125.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row125.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row125 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row125 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row125.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row125 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row125 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row125 :
    tropicalOverlapRelation8Row125 =
      tropicalOverlapSourceCombination8Row125 := by
  simp [tropicalOverlapRelation8Row125,
    tropicalOverlapSourceCombination8Row125,
    tropicalOverlapProvenance8Row125,
    tropicalOverlapSourceIExponent8Row125,
    tropicalOverlapSourceJExponent8Row125, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 125. -/
theorem tropicalOverlapRelation8_provenance_row125 :
    tropicalOverlapRelation8Row125 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row125 := by
  rw [tropicalOverlapRelation8_sourceCombination_row125]
  unfold tropicalOverlapSourceCombination8Row125
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row125,
    tropicalOverlapSourceJExponent8_replay_row125]

end

end MonochromaticQuantumGraphs.N8D3
