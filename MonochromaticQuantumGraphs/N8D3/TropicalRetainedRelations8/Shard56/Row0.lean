import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 280. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 280. -/
def tropicalOverlapProvenance8Row280 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 136, coordinateB := 142, sourceJ := 196, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 280. -/
def tropicalOverlapRelation8Row280 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 114 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 115 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 90 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 90 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 76 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row280 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 105 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 114 130 142,
  tropicalOverlapDegreeFiveExponent8 0 76 90 139 142,
  tropicalOverlapDegreeFiveExponent8 11 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 11 48 90 130 142,
  tropicalOverlapDegreeFiveExponent8 20 48 76 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row280 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 105 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 115 130 139,
  tropicalOverlapDegreeFiveExponent8 0 76 90 139 142,
  tropicalOverlapDegreeFiveExponent8 11 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 11 49 90 130 139,
  tropicalOverlapDegreeFiveExponent8 20 49 76 123 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 280. -/
theorem tropicalOverlapSourceIExponent8_replay_row280 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row280.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row280.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row280 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 280. -/
theorem tropicalOverlapSourceJExponent8_replay_row280 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row280.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row280.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row280 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row280 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row280.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row280 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row280 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row280 :
    tropicalOverlapRelation8Row280 =
      tropicalOverlapSourceCombination8Row280 := by
  simp [tropicalOverlapRelation8Row280,
    tropicalOverlapSourceCombination8Row280,
    tropicalOverlapProvenance8Row280,
    tropicalOverlapSourceIExponent8Row280,
    tropicalOverlapSourceJExponent8Row280, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 280. -/
theorem tropicalOverlapRelation8_provenance_row280 :
    tropicalOverlapRelation8Row280 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row280 := by
  rw [tropicalOverlapRelation8_sourceCombination_row280]
  unfold tropicalOverlapSourceCombination8Row280
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row280,
    tropicalOverlapSourceJExponent8_replay_row280]

end

end MonochromaticQuantumGraphs.N8D3
