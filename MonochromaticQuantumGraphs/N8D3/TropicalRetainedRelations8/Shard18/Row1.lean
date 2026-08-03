import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 91. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 91. -/
def tropicalOverlapProvenance8Row91 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 26, coordinateB := 87, sourceJ := 34, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 91. -/
def tropicalOverlapRelation8Row91 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row91 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 87 102 138,
  tropicalOverlapDegreeFiveExponent8 1 64 87 111 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 42 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 51 76 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row91 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 86 105 138,
  tropicalOverlapDegreeFiveExponent8 1 64 86 114 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 42 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 51 76 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 91. -/
theorem tropicalOverlapSourceIExponent8_replay_row91 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row91.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row91.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row91 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 91. -/
theorem tropicalOverlapSourceJExponent8_replay_row91 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row91.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row91.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row91 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row91 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row91.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row91 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row91 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row91 :
    tropicalOverlapRelation8Row91 =
      tropicalOverlapSourceCombination8Row91 := by
  simp [tropicalOverlapRelation8Row91,
    tropicalOverlapSourceCombination8Row91,
    tropicalOverlapProvenance8Row91,
    tropicalOverlapSourceIExponent8Row91,
    tropicalOverlapSourceJExponent8Row91, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 91. -/
theorem tropicalOverlapRelation8_provenance_row91 :
    tropicalOverlapRelation8Row91 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row91 := by
  rw [tropicalOverlapRelation8_sourceCombination_row91]
  unfold tropicalOverlapSourceCombination8Row91
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row91,
    tropicalOverlapSourceJExponent8_replay_row91]

end

end MonochromaticQuantumGraphs.N8D3
