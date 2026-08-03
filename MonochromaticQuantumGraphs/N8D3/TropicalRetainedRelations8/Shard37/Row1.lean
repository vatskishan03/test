import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 186. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 186. -/
def tropicalOverlapProvenance8Row186 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 80, coordinateB := 88, sourceJ := 82, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 186. -/
def tropicalOverlapRelation8Row186 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row186 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 88 99 141,
  tropicalOverlapDegreeFiveExponent8 7 58 88 109 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 88 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 88 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 88 129,
  tropicalOverlapDegreeFiveExponent8 25 52 70 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row186 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 99 141,
  tropicalOverlapDegreeFiveExponent8 7 59 85 109 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 88 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 88 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 88 129,
  tropicalOverlapDegreeFiveExponent8 26 52 70 85 116
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 186. -/
theorem tropicalOverlapSourceIExponent8_replay_row186 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row186.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row186.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row186 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 186. -/
theorem tropicalOverlapSourceJExponent8_replay_row186 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row186.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row186.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row186 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row186 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row186.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row186 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row186 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row186 :
    tropicalOverlapRelation8Row186 =
      tropicalOverlapSourceCombination8Row186 := by
  simp [tropicalOverlapRelation8Row186,
    tropicalOverlapSourceCombination8Row186,
    tropicalOverlapProvenance8Row186,
    tropicalOverlapSourceIExponent8Row186,
    tropicalOverlapSourceJExponent8Row186, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 186. -/
theorem tropicalOverlapRelation8_provenance_row186 :
    tropicalOverlapRelation8Row186 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row186 := by
  rw [tropicalOverlapRelation8_sourceCombination_row186]
  unfold tropicalOverlapSourceCombination8Row186
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row186,
    tropicalOverlapSourceJExponent8_replay_row186]

end

end MonochromaticQuantumGraphs.N8D3
