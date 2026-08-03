import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 182. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 182. -/
def tropicalOverlapProvenance8Row182 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 72, coordinateB := 7, sourceJ := 73, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 182. -/
def tropicalOverlapRelation8Row182 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 87 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 69 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row182 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 104 141,
  tropicalOverlapDegreeFiveExponent8 1 7 58 115 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 87 141,
  tropicalOverlapDegreeFiveExponent8 7 9 41 87 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 87 126,
  tropicalOverlapDegreeFiveExponent8 7 19 52 69 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row182 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 104 141,
  tropicalOverlapDegreeFiveExponent8 1 7 58 115 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 87 141,
  tropicalOverlapDegreeFiveExponent8 1 15 41 87 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 87 126,
  tropicalOverlapDegreeFiveExponent8 1 25 52 69 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 182. -/
theorem tropicalOverlapSourceIExponent8_replay_row182 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row182.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row182.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row182 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 182. -/
theorem tropicalOverlapSourceJExponent8_replay_row182 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row182.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row182.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row182 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row182 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row182.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row182 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row182 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row182 :
    tropicalOverlapRelation8Row182 =
      tropicalOverlapSourceCombination8Row182 := by
  simp [tropicalOverlapRelation8Row182,
    tropicalOverlapSourceCombination8Row182,
    tropicalOverlapProvenance8Row182,
    tropicalOverlapSourceIExponent8Row182,
    tropicalOverlapSourceJExponent8Row182, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 182. -/
theorem tropicalOverlapRelation8_provenance_row182 :
    tropicalOverlapRelation8Row182 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row182 := by
  rw [tropicalOverlapRelation8_sourceCombination_row182]
  unfold tropicalOverlapSourceCombination8Row182
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row182,
    tropicalOverlapSourceJExponent8_replay_row182]

end

end MonochromaticQuantumGraphs.N8D3
