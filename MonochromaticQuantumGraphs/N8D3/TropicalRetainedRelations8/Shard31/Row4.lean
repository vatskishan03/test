import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 159. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 159. -/
def tropicalOverlapProvenance8Row159 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 58, coordinateB := 7, sourceJ := 59, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 159. -/
def tropicalOverlapRelation8Row159 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 77 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 77 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row159 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 77 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 43 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 90 132,
  tropicalOverlapDegreeFiveExponent8 7 20 51 77 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row159 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 77 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 43 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 90 132,
  tropicalOverlapDegreeFiveExponent8 1 26 51 77 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 159. -/
theorem tropicalOverlapSourceIExponent8_replay_row159 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row159.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row159.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row159 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 159. -/
theorem tropicalOverlapSourceJExponent8_replay_row159 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row159.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row159.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row159 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row159 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row159.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row159 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row159 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row159 :
    tropicalOverlapRelation8Row159 =
      tropicalOverlapSourceCombination8Row159 := by
  simp [tropicalOverlapRelation8Row159,
    tropicalOverlapSourceCombination8Row159,
    tropicalOverlapProvenance8Row159,
    tropicalOverlapSourceIExponent8Row159,
    tropicalOverlapSourceJExponent8Row159, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 159. -/
theorem tropicalOverlapRelation8_provenance_row159 :
    tropicalOverlapRelation8Row159 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row159 := by
  rw [tropicalOverlapRelation8_sourceCombination_row159]
  unfold tropicalOverlapSourceCombination8Row159
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row159,
    tropicalOverlapSourceJExponent8_replay_row159]

end

end MonochromaticQuantumGraphs.N8D3
