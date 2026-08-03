import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 319. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 319. -/
def tropicalOverlapProvenance8Row319 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 164, coordinateB := 1, sourceJ := 166, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 319. -/
def tropicalOverlapRelation8Row319 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 69 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row319 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 101 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 112 127,
  tropicalOverlapDegreeFiveExponent8 0 1 69 89 142,
  tropicalOverlapDegreeFiveExponent8 1 9 38 89 142,
  tropicalOverlapDegreeFiveExponent8 1 9 49 89 127,
  tropicalOverlapDegreeFiveExponent8 1 20 49 69 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row319 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 101 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 112 127,
  tropicalOverlapDegreeFiveExponent8 0 1 69 89 142,
  tropicalOverlapDegreeFiveExponent8 0 9 41 89 142,
  tropicalOverlapDegreeFiveExponent8 0 9 52 89 127,
  tropicalOverlapDegreeFiveExponent8 0 20 52 69 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 319. -/
theorem tropicalOverlapSourceIExponent8_replay_row319 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row319.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row319.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row319 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 319. -/
theorem tropicalOverlapSourceJExponent8_replay_row319 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row319.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row319.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row319 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row319 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row319.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row319 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row319 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row319 :
    tropicalOverlapRelation8Row319 =
      tropicalOverlapSourceCombination8Row319 := by
  simp [tropicalOverlapRelation8Row319,
    tropicalOverlapSourceCombination8Row319,
    tropicalOverlapProvenance8Row319,
    tropicalOverlapSourceIExponent8Row319,
    tropicalOverlapSourceJExponent8Row319, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 319. -/
theorem tropicalOverlapRelation8_provenance_row319 :
    tropicalOverlapRelation8Row319 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row319 := by
  rw [tropicalOverlapRelation8_sourceCombination_row319]
  unfold tropicalOverlapSourceCombination8Row319
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row319,
    tropicalOverlapSourceJExponent8_replay_row319]

end

end MonochromaticQuantumGraphs.N8D3
