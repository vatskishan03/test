import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 255. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 255. -/
def tropicalOverlapProvenance8Row255 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 122, coordinateB := 90, sourceJ := 137, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 255. -/
def tropicalOverlapRelation8Row255 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row255 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 99 139,
  tropicalOverlapDegreeFiveExponent8 6 65 90 108 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 39 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 48 76 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row255 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 105 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 114 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 39 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 48 76 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 255. -/
theorem tropicalOverlapSourceIExponent8_replay_row255 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row255.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row255.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row255 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 255. -/
theorem tropicalOverlapSourceJExponent8_replay_row255 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row255.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row255.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row255 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row255 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row255.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row255 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row255 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row255 :
    tropicalOverlapRelation8Row255 =
      tropicalOverlapSourceCombination8Row255 := by
  simp [tropicalOverlapRelation8Row255,
    tropicalOverlapSourceCombination8Row255,
    tropicalOverlapProvenance8Row255,
    tropicalOverlapSourceIExponent8Row255,
    tropicalOverlapSourceJExponent8Row255, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 255. -/
theorem tropicalOverlapRelation8_provenance_row255 :
    tropicalOverlapRelation8Row255 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row255 := by
  rw [tropicalOverlapRelation8_sourceCombination_row255]
  unfold tropicalOverlapSourceCombination8Row255
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row255,
    tropicalOverlapSourceJExponent8_replay_row255]

end

end MonochromaticQuantumGraphs.N8D3
