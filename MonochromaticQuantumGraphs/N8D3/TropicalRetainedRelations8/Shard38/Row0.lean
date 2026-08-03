import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 190. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 190. -/
def tropicalOverlapProvenance8Row190 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 80, coordinateB := 90, sourceJ := 97, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 190. -/
def tropicalOverlapRelation8Row190 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row190 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 90 99 141,
  tropicalOverlapDegreeFiveExponent8 7 58 90 109 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 90 129,
  tropicalOverlapDegreeFiveExponent8 25 52 70 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row190 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 105 141,
  tropicalOverlapDegreeFiveExponent8 7 59 85 115 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 90 129,
  tropicalOverlapDegreeFiveExponent8 26 52 70 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 190. -/
theorem tropicalOverlapSourceIExponent8_replay_row190 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row190.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row190.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row190 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 190. -/
theorem tropicalOverlapSourceJExponent8_replay_row190 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row190.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row190.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row190 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row190 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row190.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row190 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row190 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row190 :
    tropicalOverlapRelation8Row190 =
      tropicalOverlapSourceCombination8Row190 := by
  simp [tropicalOverlapRelation8Row190,
    tropicalOverlapSourceCombination8Row190,
    tropicalOverlapProvenance8Row190,
    tropicalOverlapSourceIExponent8Row190,
    tropicalOverlapSourceJExponent8Row190, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 190. -/
theorem tropicalOverlapRelation8_provenance_row190 :
    tropicalOverlapRelation8Row190 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row190 := by
  rw [tropicalOverlapRelation8_sourceCombination_row190]
  unfold tropicalOverlapSourceCombination8Row190
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row190,
    tropicalOverlapSourceJExponent8_replay_row190]

end

end MonochromaticQuantumGraphs.N8D3
