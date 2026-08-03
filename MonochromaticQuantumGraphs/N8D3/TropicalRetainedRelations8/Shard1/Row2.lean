import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 7. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 7. -/
def tropicalOverlapProvenance8Row7 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 1, coordinateB := 88, sourceJ := 3, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 7. -/
def tropicalOverlapRelation8Row7 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row7 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 88 98 138,
  tropicalOverlapDegreeFiveExponent8 7 64 88 108 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 88 126,
  tropicalOverlapDegreeFiveExponent8 25 51 75 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row7 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 98 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 108 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 88 126,
  tropicalOverlapDegreeFiveExponent8 26 51 75 85 116
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 7. -/
theorem tropicalOverlapSourceIExponent8_replay_row7 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row7.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row7.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row7 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 7. -/
theorem tropicalOverlapSourceJExponent8_replay_row7 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row7.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row7.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row7 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row7 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row7.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row7 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row7 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row7 :
    tropicalOverlapRelation8Row7 =
      tropicalOverlapSourceCombination8Row7 := by
  simp [tropicalOverlapRelation8Row7,
    tropicalOverlapSourceCombination8Row7,
    tropicalOverlapProvenance8Row7,
    tropicalOverlapSourceIExponent8Row7,
    tropicalOverlapSourceJExponent8Row7, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 7. -/
theorem tropicalOverlapRelation8_provenance_row7 :
    tropicalOverlapRelation8Row7 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row7 := by
  rw [tropicalOverlapRelation8_sourceCombination_row7]
  unfold tropicalOverlapSourceCombination8Row7
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row7,
    tropicalOverlapSourceJExponent8_replay_row7]

end

end MonochromaticQuantumGraphs.N8D3
