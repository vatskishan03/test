import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 248. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 248. -/
def tropicalOverlapProvenance8Row248 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 120, coordinateB := 89, sourceJ := 125, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 248. -/
def tropicalOverlapRelation8Row248 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 111 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row248 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 89 99 139,
  tropicalOverlapDegreeFiveExponent8 6 59 89 108 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 39 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 48 70 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row248 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 102 139,
  tropicalOverlapDegreeFiveExponent8 6 59 88 111 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 39 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 48 70 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 248. -/
theorem tropicalOverlapSourceIExponent8_replay_row248 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row248.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row248.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row248 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 248. -/
theorem tropicalOverlapSourceJExponent8_replay_row248 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row248.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row248.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row248 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row248 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row248.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row248 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row248 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row248 :
    tropicalOverlapRelation8Row248 =
      tropicalOverlapSourceCombination8Row248 := by
  simp [tropicalOverlapRelation8Row248,
    tropicalOverlapSourceCombination8Row248,
    tropicalOverlapProvenance8Row248,
    tropicalOverlapSourceIExponent8Row248,
    tropicalOverlapSourceJExponent8Row248, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 248. -/
theorem tropicalOverlapRelation8_provenance_row248 :
    tropicalOverlapRelation8Row248 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row248 := by
  rw [tropicalOverlapRelation8_sourceCombination_row248]
  unfold tropicalOverlapSourceCombination8Row248
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row248,
    tropicalOverlapSourceJExponent8_replay_row248]

end

end MonochromaticQuantumGraphs.N8D3
