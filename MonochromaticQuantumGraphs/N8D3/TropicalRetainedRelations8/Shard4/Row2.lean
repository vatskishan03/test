import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 22. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 22. -/
def tropicalOverlapProvenance8Row22 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 4, coordinateB := 90, sourceJ := 16, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 22. -/
def tropicalOverlapRelation8Row22 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 104 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 114 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row22 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 90 101 138,
  tropicalOverlapDegreeFiveExponent8 1 58 90 111 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 41 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 90 126,
  tropicalOverlapDegreeFiveExponent8 19 51 69 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row22 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 104 138,
  tropicalOverlapDegreeFiveExponent8 1 59 86 114 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 41 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 90 126,
  tropicalOverlapDegreeFiveExponent8 20 51 69 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 22. -/
theorem tropicalOverlapSourceIExponent8_replay_row22 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row22.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row22.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row22 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 22. -/
theorem tropicalOverlapSourceJExponent8_replay_row22 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row22.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row22.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row22 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row22 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row22.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row22 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row22 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row22 :
    tropicalOverlapRelation8Row22 =
      tropicalOverlapSourceCombination8Row22 := by
  simp [tropicalOverlapRelation8Row22,
    tropicalOverlapSourceCombination8Row22,
    tropicalOverlapProvenance8Row22,
    tropicalOverlapSourceIExponent8Row22,
    tropicalOverlapSourceJExponent8Row22, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 22. -/
theorem tropicalOverlapRelation8_provenance_row22 :
    tropicalOverlapRelation8Row22 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row22 := by
  rw [tropicalOverlapRelation8_sourceCombination_row22]
  unfold tropicalOverlapSourceCombination8Row22
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row22,
    tropicalOverlapSourceJExponent8_replay_row22]

end

end MonochromaticQuantumGraphs.N8D3
