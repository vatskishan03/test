import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 320. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 320. -/
def tropicalOverlapProvenance8Row320 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 164, coordinateB := 7, sourceJ := 167, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 320. -/
def tropicalOverlapRelation8Row320 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 69 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row320 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 101 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 112 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 89 142,
  tropicalOverlapDegreeFiveExponent8 7 9 38 89 142,
  tropicalOverlapDegreeFiveExponent8 7 9 49 89 127,
  tropicalOverlapDegreeFiveExponent8 7 20 49 69 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row320 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 101 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 112 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 89 142,
  tropicalOverlapDegreeFiveExponent8 0 15 41 89 142,
  tropicalOverlapDegreeFiveExponent8 0 15 52 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 52 69 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 320. -/
theorem tropicalOverlapSourceIExponent8_replay_row320 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row320.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row320.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row320 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 320. -/
theorem tropicalOverlapSourceJExponent8_replay_row320 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row320.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row320.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row320 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row320 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row320.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row320 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row320 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row320 :
    tropicalOverlapRelation8Row320 =
      tropicalOverlapSourceCombination8Row320 := by
  simp [tropicalOverlapRelation8Row320,
    tropicalOverlapSourceCombination8Row320,
    tropicalOverlapProvenance8Row320,
    tropicalOverlapSourceIExponent8Row320,
    tropicalOverlapSourceJExponent8Row320, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 320. -/
theorem tropicalOverlapRelation8_provenance_row320 :
    tropicalOverlapRelation8Row320 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row320 := by
  rw [tropicalOverlapRelation8_sourceCombination_row320]
  unfold tropicalOverlapSourceCombination8Row320
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row320,
    tropicalOverlapSourceJExponent8_replay_row320]

end

end MonochromaticQuantumGraphs.N8D3
