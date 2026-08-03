import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 265. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 265. -/
def tropicalOverlapProvenance8Row265 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 128, coordinateB := 6, sourceJ := 129, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 265. -/
def tropicalOverlapRelation8Row265 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 76 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row265 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 102 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 39 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 48 89 130,
  tropicalOverlapDegreeFiveExponent8 6 20 48 76 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row265 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 102 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 39 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 48 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 48 76 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 265. -/
theorem tropicalOverlapSourceIExponent8_replay_row265 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row265.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row265.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row265 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 265. -/
theorem tropicalOverlapSourceJExponent8_replay_row265 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row265.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row265.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row265 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row265 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row265.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row265 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row265 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row265 :
    tropicalOverlapRelation8Row265 =
      tropicalOverlapSourceCombination8Row265 := by
  simp [tropicalOverlapRelation8Row265,
    tropicalOverlapSourceCombination8Row265,
    tropicalOverlapProvenance8Row265,
    tropicalOverlapSourceIExponent8Row265,
    tropicalOverlapSourceJExponent8Row265, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 265. -/
theorem tropicalOverlapRelation8_provenance_row265 :
    tropicalOverlapRelation8Row265 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row265 := by
  rw [tropicalOverlapRelation8_sourceCombination_row265]
  unfold tropicalOverlapSourceCombination8Row265
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row265,
    tropicalOverlapSourceJExponent8_replay_row265]

end

end MonochromaticQuantumGraphs.N8D3
