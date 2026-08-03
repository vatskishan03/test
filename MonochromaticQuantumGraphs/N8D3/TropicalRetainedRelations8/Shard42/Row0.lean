import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 210. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 210. -/
def tropicalOverlapProvenance8Row210 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 100, coordinateB := 7, sourceJ := 101, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 210. -/
def tropicalOverlapRelation8Row210 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 41 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 51 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 69 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 38 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 48 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 69 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row210 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 98 139,
  tropicalOverlapDegreeFiveExponent8 6 7 59 108 127,
  tropicalOverlapDegreeFiveExponent8 6 7 69 88 139,
  tropicalOverlapDegreeFiveExponent8 7 15 38 88 139,
  tropicalOverlapDegreeFiveExponent8 7 15 48 88 127,
  tropicalOverlapDegreeFiveExponent8 7 26 48 69 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row210 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 98 139,
  tropicalOverlapDegreeFiveExponent8 6 7 59 108 127,
  tropicalOverlapDegreeFiveExponent8 6 7 69 88 139,
  tropicalOverlapDegreeFiveExponent8 6 15 41 88 139,
  tropicalOverlapDegreeFiveExponent8 6 15 51 88 127,
  tropicalOverlapDegreeFiveExponent8 6 26 51 69 117
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 210. -/
theorem tropicalOverlapSourceIExponent8_replay_row210 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row210.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row210.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row210 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 210. -/
theorem tropicalOverlapSourceJExponent8_replay_row210 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row210.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row210.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row210 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row210 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row210.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row210 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row210 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row210 :
    tropicalOverlapRelation8Row210 =
      tropicalOverlapSourceCombination8Row210 := by
  simp [tropicalOverlapRelation8Row210,
    tropicalOverlapSourceCombination8Row210,
    tropicalOverlapProvenance8Row210,
    tropicalOverlapSourceIExponent8Row210,
    tropicalOverlapSourceJExponent8Row210, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 210. -/
theorem tropicalOverlapRelation8_provenance_row210 :
    tropicalOverlapRelation8Row210 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row210 := by
  rw [tropicalOverlapRelation8_sourceCombination_row210]
  unfold tropicalOverlapSourceCombination8Row210
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row210,
    tropicalOverlapSourceJExponent8_replay_row210]

end

end MonochromaticQuantumGraphs.N8D3
