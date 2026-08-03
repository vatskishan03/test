import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 27. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 27. -/
def tropicalOverlapProvenance8Row27 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 6, coordinateB := 87, sourceJ := 14, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 27. -/
def tropicalOverlapRelation8Row27 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row27 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 87 101 138,
  tropicalOverlapDegreeFiveExponent8 1 64 87 111 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 41 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 51 75 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row27 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 86 104 138,
  tropicalOverlapDegreeFiveExponent8 1 64 86 114 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 41 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 51 75 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 27. -/
theorem tropicalOverlapSourceIExponent8_replay_row27 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row27.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row27.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row27 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 27. -/
theorem tropicalOverlapSourceJExponent8_replay_row27 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row27.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row27.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row27 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row27 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row27.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row27 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row27 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row27 :
    tropicalOverlapRelation8Row27 =
      tropicalOverlapSourceCombination8Row27 := by
  simp [tropicalOverlapRelation8Row27,
    tropicalOverlapSourceCombination8Row27,
    tropicalOverlapProvenance8Row27,
    tropicalOverlapSourceIExponent8Row27,
    tropicalOverlapSourceJExponent8Row27, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 27. -/
theorem tropicalOverlapRelation8_provenance_row27 :
    tropicalOverlapRelation8Row27 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row27 := by
  rw [tropicalOverlapRelation8_sourceCombination_row27]
  unfold tropicalOverlapSourceCombination8Row27
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row27,
    tropicalOverlapSourceJExponent8_replay_row27]

end

end MonochromaticQuantumGraphs.N8D3
