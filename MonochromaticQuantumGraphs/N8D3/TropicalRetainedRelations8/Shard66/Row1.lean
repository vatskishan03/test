import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 331. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 331. -/
def tropicalOverlapProvenance8Row331 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 176, coordinateB := 6, sourceJ := 177, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 331. -/
def tropicalOverlapRelation8Row331 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 75 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row331 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 104 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 115 127,
  tropicalOverlapDegreeFiveExponent8 0 6 75 90 142,
  tropicalOverlapDegreeFiveExponent8 6 11 38 90 142,
  tropicalOverlapDegreeFiveExponent8 6 11 49 90 127,
  tropicalOverlapDegreeFiveExponent8 6 20 49 75 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row331 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 104 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 115 127,
  tropicalOverlapDegreeFiveExponent8 0 6 75 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 38 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 49 90 127,
  tropicalOverlapDegreeFiveExponent8 0 26 49 75 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 331. -/
theorem tropicalOverlapSourceIExponent8_replay_row331 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row331.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row331.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row331 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 331. -/
theorem tropicalOverlapSourceJExponent8_replay_row331 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row331.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row331.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row331 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row331 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row331.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row331 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row331 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row331 :
    tropicalOverlapRelation8Row331 =
      tropicalOverlapSourceCombination8Row331 := by
  simp [tropicalOverlapRelation8Row331,
    tropicalOverlapSourceCombination8Row331,
    tropicalOverlapProvenance8Row331,
    tropicalOverlapSourceIExponent8Row331,
    tropicalOverlapSourceJExponent8Row331, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 331. -/
theorem tropicalOverlapRelation8_provenance_row331 :
    tropicalOverlapRelation8Row331 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row331 := by
  rw [tropicalOverlapRelation8_sourceCombination_row331]
  unfold tropicalOverlapSourceCombination8Row331
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row331,
    tropicalOverlapSourceJExponent8_replay_row331]

end

end MonochromaticQuantumGraphs.N8D3
