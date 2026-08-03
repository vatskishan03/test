import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 204. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 204. -/
def tropicalOverlapProvenance8Row204 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 88, coordinateB := 7, sourceJ := 89, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 204. -/
def tropicalOverlapRelation8Row204 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 70 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row204 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 89 141,
  tropicalOverlapDegreeFiveExponent8 7 9 42 89 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 89 129,
  tropicalOverlapDegreeFiveExponent8 7 20 52 70 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row204 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 89 141,
  tropicalOverlapDegreeFiveExponent8 1 15 42 89 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 89 129,
  tropicalOverlapDegreeFiveExponent8 1 26 52 70 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 204. -/
theorem tropicalOverlapSourceIExponent8_replay_row204 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row204.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row204.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row204 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 204. -/
theorem tropicalOverlapSourceJExponent8_replay_row204 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row204.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row204.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row204 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row204 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row204.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row204 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row204 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row204 :
    tropicalOverlapRelation8Row204 =
      tropicalOverlapSourceCombination8Row204 := by
  simp [tropicalOverlapRelation8Row204,
    tropicalOverlapSourceCombination8Row204,
    tropicalOverlapProvenance8Row204,
    tropicalOverlapSourceIExponent8Row204,
    tropicalOverlapSourceJExponent8Row204, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 204. -/
theorem tropicalOverlapRelation8_provenance_row204 :
    tropicalOverlapRelation8Row204 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row204 := by
  rw [tropicalOverlapRelation8_sourceCombination_row204]
  unfold tropicalOverlapSourceCombination8Row204
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row204,
    tropicalOverlapSourceJExponent8_replay_row204]

end

end MonochromaticQuantumGraphs.N8D3
