import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 235. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 235. -/
def tropicalOverlapProvenance8Row235 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 110, coordinateB := 90, sourceJ := 118, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 235. -/
def tropicalOverlapRelation8Row235 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 101 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row235 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 90 101 139,
  tropicalOverlapDegreeFiveExponent8 1 65 90 111 127,
  tropicalOverlapDegreeFiveExponent8 1 75 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 41 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 51 75 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row235 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 89 104 139,
  tropicalOverlapDegreeFiveExponent8 1 65 89 114 127,
  tropicalOverlapDegreeFiveExponent8 1 75 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 41 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 51 75 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 235. -/
theorem tropicalOverlapSourceIExponent8_replay_row235 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row235.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row235.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row235 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 235. -/
theorem tropicalOverlapSourceJExponent8_replay_row235 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row235.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row235.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row235 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row235 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row235.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row235 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row235 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row235 :
    tropicalOverlapRelation8Row235 =
      tropicalOverlapSourceCombination8Row235 := by
  simp [tropicalOverlapRelation8Row235,
    tropicalOverlapSourceCombination8Row235,
    tropicalOverlapProvenance8Row235,
    tropicalOverlapSourceIExponent8Row235,
    tropicalOverlapSourceJExponent8Row235, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 235. -/
theorem tropicalOverlapRelation8_provenance_row235 :
    tropicalOverlapRelation8Row235 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row235 := by
  rw [tropicalOverlapRelation8_sourceCombination_row235]
  unfold tropicalOverlapSourceCombination8Row235
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row235,
    tropicalOverlapSourceJExponent8_replay_row235]

end

end MonochromaticQuantumGraphs.N8D3
