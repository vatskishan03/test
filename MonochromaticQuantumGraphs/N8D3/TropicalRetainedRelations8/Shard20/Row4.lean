import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 104. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 104. -/
def tropicalOverlapProvenance8Row104 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 30, coordinateB := 142, sourceJ := 190, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 104. -/
def tropicalOverlapRelation8Row104 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row104 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 102 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 111 129 142,
  tropicalOverlapDegreeFiveExponent8 1 76 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 42 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 51 89 129 142,
  tropicalOverlapDegreeFiveExponent8 20 51 76 119 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row104 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 102 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 112 130 138,
  tropicalOverlapDegreeFiveExponent8 1 76 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 42 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 130 138,
  tropicalOverlapDegreeFiveExponent8 20 52 76 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 104. -/
theorem tropicalOverlapSourceIExponent8_replay_row104 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row104.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row104.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row104 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 104. -/
theorem tropicalOverlapSourceJExponent8_replay_row104 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row104.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row104.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row104 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row104 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row104.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row104 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row104 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row104 :
    tropicalOverlapRelation8Row104 =
      tropicalOverlapSourceCombination8Row104 := by
  simp [tropicalOverlapRelation8Row104,
    tropicalOverlapSourceCombination8Row104,
    tropicalOverlapProvenance8Row104,
    tropicalOverlapSourceIExponent8Row104,
    tropicalOverlapSourceJExponent8Row104, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 104. -/
theorem tropicalOverlapRelation8_provenance_row104 :
    tropicalOverlapRelation8Row104 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row104 := by
  rw [tropicalOverlapRelation8_sourceCombination_row104]
  unfold tropicalOverlapSourceCombination8Row104
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row104,
    tropicalOverlapSourceJExponent8_replay_row104]

end

end MonochromaticQuantumGraphs.N8D3
