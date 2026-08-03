import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 28. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 28. -/
def tropicalOverlapProvenance8Row28 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 6, coordinateB := 90, sourceJ := 18, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 28. -/
def tropicalOverlapRelation8Row28 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 104 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row28 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 90 101 138,
  tropicalOverlapDegreeFiveExponent8 1 64 90 111 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 41 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 90 126,
  tropicalOverlapDegreeFiveExponent8 19 51 75 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row28 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 104 138,
  tropicalOverlapDegreeFiveExponent8 1 65 86 114 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 41 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 90 126,
  tropicalOverlapDegreeFiveExponent8 20 51 75 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 28. -/
theorem tropicalOverlapSourceIExponent8_replay_row28 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row28.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row28.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row28 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 28. -/
theorem tropicalOverlapSourceJExponent8_replay_row28 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row28.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row28.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row28 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row28 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row28.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row28 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row28 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row28 :
    tropicalOverlapRelation8Row28 =
      tropicalOverlapSourceCombination8Row28 := by
  simp [tropicalOverlapRelation8Row28,
    tropicalOverlapSourceCombination8Row28,
    tropicalOverlapProvenance8Row28,
    tropicalOverlapSourceIExponent8Row28,
    tropicalOverlapSourceJExponent8Row28, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 28. -/
theorem tropicalOverlapRelation8_provenance_row28 :
    tropicalOverlapRelation8Row28 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row28 := by
  rw [tropicalOverlapRelation8_sourceCombination_row28]
  unfold tropicalOverlapSourceCombination8Row28
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row28,
    tropicalOverlapSourceJExponent8_replay_row28]

end

end MonochromaticQuantumGraphs.N8D3
