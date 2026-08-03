import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 258. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 258. -/
def tropicalOverlapProvenance8Row258 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 124, coordinateB := 6, sourceJ := 125, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 258. -/
def tropicalOverlapRelation8Row258 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 70 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row258 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 39 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 89 130,
  tropicalOverlapDegreeFiveExponent8 6 20 48 70 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row258 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 39 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 48 70 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 258. -/
theorem tropicalOverlapSourceIExponent8_replay_row258 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row258.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row258.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row258 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 258. -/
theorem tropicalOverlapSourceJExponent8_replay_row258 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row258.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row258.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row258 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row258 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row258.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row258 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row258 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row258 :
    tropicalOverlapRelation8Row258 =
      tropicalOverlapSourceCombination8Row258 := by
  simp [tropicalOverlapRelation8Row258,
    tropicalOverlapSourceCombination8Row258,
    tropicalOverlapProvenance8Row258,
    tropicalOverlapSourceIExponent8Row258,
    tropicalOverlapSourceJExponent8Row258, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 258. -/
theorem tropicalOverlapRelation8_provenance_row258 :
    tropicalOverlapRelation8Row258 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row258 := by
  rw [tropicalOverlapRelation8_sourceCombination_row258]
  unfold tropicalOverlapSourceCombination8Row258
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row258,
    tropicalOverlapSourceJExponent8_replay_row258]

end

end MonochromaticQuantumGraphs.N8D3
