import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 38. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 38. -/
def tropicalOverlapProvenance8Row38 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 10, coordinateB := 141, sourceJ := 70, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 38. -/
def tropicalOverlapRelation8Row38 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row38 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 101 138 141,
  tropicalOverlapDegreeFiveExponent8 1 65 111 126 141,
  tropicalOverlapDegreeFiveExponent8 1 75 89 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 11 51 89 126 141,
  tropicalOverlapDegreeFiveExponent8 20 51 75 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row38 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 101 138 141,
  tropicalOverlapDegreeFiveExponent8 1 65 112 126 138,
  tropicalOverlapDegreeFiveExponent8 1 75 89 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 11 52 89 126 138,
  tropicalOverlapDegreeFiveExponent8 20 52 75 119 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 38. -/
theorem tropicalOverlapSourceIExponent8_replay_row38 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row38.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row38.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row38 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 38. -/
theorem tropicalOverlapSourceJExponent8_replay_row38 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row38.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row38.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row38 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row38 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row38.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row38 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row38 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row38 :
    tropicalOverlapRelation8Row38 =
      tropicalOverlapSourceCombination8Row38 := by
  simp [tropicalOverlapRelation8Row38,
    tropicalOverlapSourceCombination8Row38,
    tropicalOverlapProvenance8Row38,
    tropicalOverlapSourceIExponent8Row38,
    tropicalOverlapSourceJExponent8Row38, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 38. -/
theorem tropicalOverlapRelation8_provenance_row38 :
    tropicalOverlapRelation8Row38 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row38 := by
  rw [tropicalOverlapRelation8_sourceCombination_row38]
  unfold tropicalOverlapSourceCombination8Row38
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row38,
    tropicalOverlapSourceJExponent8_replay_row38]

end

end MonochromaticQuantumGraphs.N8D3
