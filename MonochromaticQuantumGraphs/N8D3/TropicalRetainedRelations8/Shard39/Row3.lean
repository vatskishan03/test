import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 198. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 198. -/
def tropicalOverlapProvenance8Row198 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 84, coordinateB := 87, sourceJ := 92, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 198. -/
def tropicalOverlapRelation8Row198 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row198 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 87 102 141,
  tropicalOverlapDegreeFiveExponent8 1 58 87 112 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 52 70 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row198 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 86 105 141,
  tropicalOverlapDegreeFiveExponent8 1 58 86 115 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 52 70 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 198. -/
theorem tropicalOverlapSourceIExponent8_replay_row198 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row198.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row198.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row198 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 198. -/
theorem tropicalOverlapSourceJExponent8_replay_row198 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row198.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row198.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row198 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row198 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row198.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row198 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row198 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row198 :
    tropicalOverlapRelation8Row198 =
      tropicalOverlapSourceCombination8Row198 := by
  simp [tropicalOverlapRelation8Row198,
    tropicalOverlapSourceCombination8Row198,
    tropicalOverlapProvenance8Row198,
    tropicalOverlapSourceIExponent8Row198,
    tropicalOverlapSourceJExponent8Row198, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 198. -/
theorem tropicalOverlapRelation8_provenance_row198 :
    tropicalOverlapRelation8Row198 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row198 := by
  rw [tropicalOverlapRelation8_sourceCombination_row198]
  unfold tropicalOverlapSourceCombination8Row198
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row198,
    tropicalOverlapSourceJExponent8_replay_row198]

end

end MonochromaticQuantumGraphs.N8D3
