import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 205. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 205. -/
def tropicalOverlapProvenance8Row205 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 90, coordinateB := 7, sourceJ := 91, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 205. -/
def tropicalOverlapRelation8Row205 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 76 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 76 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row205 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 65 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 89 141,
  tropicalOverlapDegreeFiveExponent8 7 11 42 89 141,
  tropicalOverlapDegreeFiveExponent8 7 11 52 89 129,
  tropicalOverlapDegreeFiveExponent8 7 20 52 76 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row205 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 65 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 89 141,
  tropicalOverlapDegreeFiveExponent8 1 17 42 89 141,
  tropicalOverlapDegreeFiveExponent8 1 17 52 89 129,
  tropicalOverlapDegreeFiveExponent8 1 26 52 76 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 205. -/
theorem tropicalOverlapSourceIExponent8_replay_row205 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row205.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row205.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row205 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 205. -/
theorem tropicalOverlapSourceJExponent8_replay_row205 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row205.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row205.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row205 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row205 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row205.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row205 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row205 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row205 :
    tropicalOverlapRelation8Row205 =
      tropicalOverlapSourceCombination8Row205 := by
  simp [tropicalOverlapRelation8Row205,
    tropicalOverlapSourceCombination8Row205,
    tropicalOverlapProvenance8Row205,
    tropicalOverlapSourceIExponent8Row205,
    tropicalOverlapSourceJExponent8Row205, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 205. -/
theorem tropicalOverlapRelation8_provenance_row205 :
    tropicalOverlapRelation8Row205 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row205 := by
  rw [tropicalOverlapRelation8_sourceCombination_row205]
  unfold tropicalOverlapSourceCombination8Row205
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row205,
    tropicalOverlapSourceJExponent8_replay_row205]

end

end MonochromaticQuantumGraphs.N8D3
