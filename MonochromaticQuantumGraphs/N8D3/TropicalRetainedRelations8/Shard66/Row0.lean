import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 330. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 330. -/
def tropicalOverlapProvenance8Row330 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 172, coordinateB := 7, sourceJ := 175, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 330. -/
def tropicalOverlapRelation8Row330 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 69 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row330 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 104 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 115 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 90 142,
  tropicalOverlapDegreeFiveExponent8 7 9 38 90 142,
  tropicalOverlapDegreeFiveExponent8 7 9 49 90 127,
  tropicalOverlapDegreeFiveExponent8 7 20 49 69 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row330 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 104 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 115 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 41 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 52 90 127,
  tropicalOverlapDegreeFiveExponent8 0 26 52 69 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 330. -/
theorem tropicalOverlapSourceIExponent8_replay_row330 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row330.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row330.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row330 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 330. -/
theorem tropicalOverlapSourceJExponent8_replay_row330 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row330.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row330.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row330 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row330 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row330.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row330 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row330 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row330 :
    tropicalOverlapRelation8Row330 =
      tropicalOverlapSourceCombination8Row330 := by
  simp [tropicalOverlapRelation8Row330,
    tropicalOverlapSourceCombination8Row330,
    tropicalOverlapProvenance8Row330,
    tropicalOverlapSourceIExponent8Row330,
    tropicalOverlapSourceJExponent8Row330, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 330. -/
theorem tropicalOverlapRelation8_provenance_row330 :
    tropicalOverlapRelation8Row330 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row330 := by
  rw [tropicalOverlapRelation8_sourceCombination_row330]
  unfold tropicalOverlapSourceCombination8Row330
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row330,
    tropicalOverlapSourceJExponent8_replay_row330]

end

end MonochromaticQuantumGraphs.N8D3
