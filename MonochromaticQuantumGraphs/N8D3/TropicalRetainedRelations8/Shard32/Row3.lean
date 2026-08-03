import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 163. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 163. -/
def tropicalOverlapProvenance8Row163 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 60, coordinateB := 86, sourceJ := 65, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 163. -/
def tropicalOverlapRelation8Row163 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row163 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 86 98 141,
  tropicalOverlapDegreeFiveExponent8 7 58 86 109 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 86 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 86 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 86 126,
  tropicalOverlapDegreeFiveExponent8 25 52 69 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row163 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 85 101 141,
  tropicalOverlapDegreeFiveExponent8 7 58 85 112 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 86 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 86 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 86 126,
  tropicalOverlapDegreeFiveExponent8 25 52 69 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 163. -/
theorem tropicalOverlapSourceIExponent8_replay_row163 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row163.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row163.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row163 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 163. -/
theorem tropicalOverlapSourceJExponent8_replay_row163 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row163.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row163.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row163 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row163 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row163.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row163 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row163 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row163 :
    tropicalOverlapRelation8Row163 =
      tropicalOverlapSourceCombination8Row163 := by
  simp [tropicalOverlapRelation8Row163,
    tropicalOverlapSourceCombination8Row163,
    tropicalOverlapProvenance8Row163,
    tropicalOverlapSourceIExponent8Row163,
    tropicalOverlapSourceJExponent8Row163, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 163. -/
theorem tropicalOverlapRelation8_provenance_row163 :
    tropicalOverlapRelation8Row163 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row163 := by
  rw [tropicalOverlapRelation8_sourceCombination_row163]
  unfold tropicalOverlapSourceCombination8Row163
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row163,
    tropicalOverlapSourceJExponent8_replay_row163]

end

end MonochromaticQuantumGraphs.N8D3
