import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 302. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 302. -/
def tropicalOverlapProvenance8Row302 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 152, coordinateB := 6, sourceJ := 153, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 302. -/
def tropicalOverlapRelation8Row302 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 40 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 71 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 71 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row302 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 106 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 114 133,
  tropicalOverlapDegreeFiveExponent8 0 6 71 90 139,
  tropicalOverlapDegreeFiveExponent8 6 9 40 90 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 90 133,
  tropicalOverlapDegreeFiveExponent8 6 20 48 71 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row302 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 106 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 114 133,
  tropicalOverlapDegreeFiveExponent8 0 6 71 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 40 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 90 133,
  tropicalOverlapDegreeFiveExponent8 0 26 48 71 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 302. -/
theorem tropicalOverlapSourceIExponent8_replay_row302 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row302.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row302.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row302 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 302. -/
theorem tropicalOverlapSourceJExponent8_replay_row302 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row302.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row302.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row302 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row302 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row302.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row302 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row302 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row302 :
    tropicalOverlapRelation8Row302 =
      tropicalOverlapSourceCombination8Row302 := by
  simp [tropicalOverlapRelation8Row302,
    tropicalOverlapSourceCombination8Row302,
    tropicalOverlapProvenance8Row302,
    tropicalOverlapSourceIExponent8Row302,
    tropicalOverlapSourceJExponent8Row302, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 302. -/
theorem tropicalOverlapRelation8_provenance_row302 :
    tropicalOverlapRelation8Row302 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row302 := by
  rw [tropicalOverlapRelation8_sourceCombination_row302]
  unfold tropicalOverlapSourceCombination8Row302
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row302,
    tropicalOverlapSourceJExponent8_replay_row302]

end

end MonochromaticQuantumGraphs.N8D3
