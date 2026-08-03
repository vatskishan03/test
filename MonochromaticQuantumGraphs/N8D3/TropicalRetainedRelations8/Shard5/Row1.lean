import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 26. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 26. -/
def tropicalOverlapProvenance8Row26 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 6, coordinateB := 89, sourceJ := 10, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 26. -/
def tropicalOverlapRelation8Row26 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row26 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 89 101 138,
  tropicalOverlapDegreeFiveExponent8 1 64 89 111 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 41 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 89 126,
  tropicalOverlapDegreeFiveExponent8 19 51 75 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row26 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 101 138,
  tropicalOverlapDegreeFiveExponent8 1 65 86 111 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 41 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 89 126,
  tropicalOverlapDegreeFiveExponent8 20 51 75 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 26. -/
theorem tropicalOverlapSourceIExponent8_replay_row26 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row26.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row26.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row26 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 26. -/
theorem tropicalOverlapSourceJExponent8_replay_row26 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row26.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row26.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row26 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row26 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row26.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row26 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row26 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row26 :
    tropicalOverlapRelation8Row26 =
      tropicalOverlapSourceCombination8Row26 := by
  simp [tropicalOverlapRelation8Row26,
    tropicalOverlapSourceCombination8Row26,
    tropicalOverlapProvenance8Row26,
    tropicalOverlapSourceIExponent8Row26,
    tropicalOverlapSourceJExponent8Row26, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 26. -/
theorem tropicalOverlapRelation8_provenance_row26 :
    tropicalOverlapRelation8Row26 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row26 := by
  rw [tropicalOverlapRelation8_sourceCombination_row26]
  unfold tropicalOverlapSourceCombination8Row26
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row26,
    tropicalOverlapSourceJExponent8_replay_row26]

end

end MonochromaticQuantumGraphs.N8D3
