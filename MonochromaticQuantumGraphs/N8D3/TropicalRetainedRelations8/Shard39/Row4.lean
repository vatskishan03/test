import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 199. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 199. -/
def tropicalOverlapProvenance8Row199 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 84, coordinateB := 90, sourceJ := 96, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 199. -/
def tropicalOverlapRelation8Row199 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row199 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 90 102 141,
  tropicalOverlapDegreeFiveExponent8 1 58 90 112 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 90 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 90 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 90 129,
  tropicalOverlapDegreeFiveExponent8 19 52 70 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row199 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 105 141,
  tropicalOverlapDegreeFiveExponent8 1 59 86 115 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 90 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 90 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 90 129,
  tropicalOverlapDegreeFiveExponent8 20 52 70 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 199. -/
theorem tropicalOverlapSourceIExponent8_replay_row199 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row199.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row199.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row199 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 199. -/
theorem tropicalOverlapSourceJExponent8_replay_row199 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row199.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row199.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row199 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row199 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row199.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row199 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row199 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row199 :
    tropicalOverlapRelation8Row199 =
      tropicalOverlapSourceCombination8Row199 := by
  simp [tropicalOverlapRelation8Row199,
    tropicalOverlapSourceCombination8Row199,
    tropicalOverlapProvenance8Row199,
    tropicalOverlapSourceIExponent8Row199,
    tropicalOverlapSourceJExponent8Row199, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 199. -/
theorem tropicalOverlapRelation8_provenance_row199 :
    tropicalOverlapRelation8Row199 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row199 := by
  rw [tropicalOverlapRelation8_sourceCombination_row199]
  unfold tropicalOverlapSourceCombination8Row199
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row199,
    tropicalOverlapSourceJExponent8_replay_row199]

end

end MonochromaticQuantumGraphs.N8D3
