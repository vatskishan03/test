import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 283. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 283. -/
def tropicalOverlapProvenance8Row283 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 140, coordinateB := 89, sourceJ := 145, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 283. -/
def tropicalOverlapRelation8Row283 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 111 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row283 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 89 100 139,
  tropicalOverlapDegreeFiveExponent8 6 59 89 108 133,
  tropicalOverlapDegreeFiveExponent8 6 71 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 40 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 48 71 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row283 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 103 139,
  tropicalOverlapDegreeFiveExponent8 6 59 88 111 133,
  tropicalOverlapDegreeFiveExponent8 6 71 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 40 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 48 71 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 283. -/
theorem tropicalOverlapSourceIExponent8_replay_row283 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row283.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row283.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row283 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 283. -/
theorem tropicalOverlapSourceJExponent8_replay_row283 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row283.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row283.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row283 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row283 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row283.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row283 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row283 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row283 :
    tropicalOverlapRelation8Row283 =
      tropicalOverlapSourceCombination8Row283 := by
  simp [tropicalOverlapRelation8Row283,
    tropicalOverlapSourceCombination8Row283,
    tropicalOverlapProvenance8Row283,
    tropicalOverlapSourceIExponent8Row283,
    tropicalOverlapSourceJExponent8Row283, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 283. -/
theorem tropicalOverlapRelation8_provenance_row283 :
    tropicalOverlapRelation8Row283 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row283 := by
  rw [tropicalOverlapRelation8_sourceCombination_row283]
  unfold tropicalOverlapSourceCombination8Row283
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row283,
    tropicalOverlapSourceJExponent8_replay_row283]

end

end MonochromaticQuantumGraphs.N8D3
