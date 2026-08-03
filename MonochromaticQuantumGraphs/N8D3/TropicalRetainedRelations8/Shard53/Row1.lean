import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 266. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 266. -/
def tropicalOverlapProvenance8Row266 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 128, coordinateB := 1, sourceJ := 130, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 266. -/
def tropicalOverlapRelation8Row266 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 76 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row266 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 102 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 111 130,
  tropicalOverlapDegreeFiveExponent8 0 1 76 89 139,
  tropicalOverlapDegreeFiveExponent8 1 11 39 89 139,
  tropicalOverlapDegreeFiveExponent8 1 11 48 89 130,
  tropicalOverlapDegreeFiveExponent8 1 20 48 76 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row266 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 102 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 111 130,
  tropicalOverlapDegreeFiveExponent8 0 1 76 89 139,
  tropicalOverlapDegreeFiveExponent8 0 11 42 89 139,
  tropicalOverlapDegreeFiveExponent8 0 11 51 89 130,
  tropicalOverlapDegreeFiveExponent8 0 20 51 76 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 266. -/
theorem tropicalOverlapSourceIExponent8_replay_row266 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row266.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row266.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row266 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 266. -/
theorem tropicalOverlapSourceJExponent8_replay_row266 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row266.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row266.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row266 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row266 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row266.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row266 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row266 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row266 :
    tropicalOverlapRelation8Row266 =
      tropicalOverlapSourceCombination8Row266 := by
  simp [tropicalOverlapRelation8Row266,
    tropicalOverlapSourceCombination8Row266,
    tropicalOverlapProvenance8Row266,
    tropicalOverlapSourceIExponent8Row266,
    tropicalOverlapSourceJExponent8Row266, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 266. -/
theorem tropicalOverlapRelation8_provenance_row266 :
    tropicalOverlapRelation8Row266 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row266 := by
  rw [tropicalOverlapRelation8_sourceCombination_row266]
  unfold tropicalOverlapSourceCombination8Row266
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row266,
    tropicalOverlapSourceJExponent8_replay_row266]

end

end MonochromaticQuantumGraphs.N8D3
