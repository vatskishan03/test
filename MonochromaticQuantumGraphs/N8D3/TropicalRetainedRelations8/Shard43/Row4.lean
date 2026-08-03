import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 219. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 219. -/
def tropicalOverlapProvenance8Row219 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 102, coordinateB := 90, sourceJ := 117, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 219. -/
def tropicalOverlapRelation8Row219 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row219 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 98 139,
  tropicalOverlapDegreeFiveExponent8 6 65 90 108 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 38 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 48 75 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row219 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 104 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 114 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 38 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 48 75 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 219. -/
theorem tropicalOverlapSourceIExponent8_replay_row219 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row219.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row219.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row219 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 219. -/
theorem tropicalOverlapSourceJExponent8_replay_row219 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row219.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row219.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row219 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row219 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row219.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row219 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row219 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row219 :
    tropicalOverlapRelation8Row219 =
      tropicalOverlapSourceCombination8Row219 := by
  simp [tropicalOverlapRelation8Row219,
    tropicalOverlapSourceCombination8Row219,
    tropicalOverlapProvenance8Row219,
    tropicalOverlapSourceIExponent8Row219,
    tropicalOverlapSourceJExponent8Row219, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 219. -/
theorem tropicalOverlapRelation8_provenance_row219 :
    tropicalOverlapRelation8Row219 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row219 := by
  rw [tropicalOverlapRelation8_sourceCombination_row219]
  unfold tropicalOverlapSourceCombination8Row219
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row219,
    tropicalOverlapSourceJExponent8_replay_row219]

end

end MonochromaticQuantumGraphs.N8D3
