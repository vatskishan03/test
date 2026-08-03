import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 43. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 43. -/
def tropicalOverlapProvenance8Row43 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 11, coordinateB := 142, sourceJ := 171, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 43. -/
def tropicalOverlapRelation8Row43 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row43 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 101 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 111 126 142,
  tropicalOverlapDegreeFiveExponent8 7 75 89 138 142,
  tropicalOverlapDegreeFiveExponent8 17 41 89 138 142,
  tropicalOverlapDegreeFiveExponent8 17 51 89 126 142,
  tropicalOverlapDegreeFiveExponent8 26 51 75 119 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row43 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 101 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 112 127 138,
  tropicalOverlapDegreeFiveExponent8 7 75 89 138 142,
  tropicalOverlapDegreeFiveExponent8 17 41 89 138 142,
  tropicalOverlapDegreeFiveExponent8 17 52 89 127 138,
  tropicalOverlapDegreeFiveExponent8 26 52 75 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 43. -/
theorem tropicalOverlapSourceIExponent8_replay_row43 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row43.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row43.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row43 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 43. -/
theorem tropicalOverlapSourceJExponent8_replay_row43 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row43.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row43.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row43 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row43 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row43.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row43 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row43 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row43 :
    tropicalOverlapRelation8Row43 =
      tropicalOverlapSourceCombination8Row43 := by
  simp [tropicalOverlapRelation8Row43,
    tropicalOverlapSourceCombination8Row43,
    tropicalOverlapProvenance8Row43,
    tropicalOverlapSourceIExponent8Row43,
    tropicalOverlapSourceJExponent8Row43, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 43. -/
theorem tropicalOverlapRelation8_provenance_row43 :
    tropicalOverlapRelation8Row43 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row43 := by
  rw [tropicalOverlapRelation8_sourceCombination_row43]
  unfold tropicalOverlapSourceCombination8Row43
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row43,
    tropicalOverlapSourceJExponent8_replay_row43]

end

end MonochromaticQuantumGraphs.N8D3
