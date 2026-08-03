import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 353. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 353. -/
def tropicalOverlapProvenance8Row353 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 190, coordinateB := 90, sourceJ := 198, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 353. -/
def tropicalOverlapRelation8Row353 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 102 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 112 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row353 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 90 102 142,
  tropicalOverlapDegreeFiveExponent8 1 65 90 112 130,
  tropicalOverlapDegreeFiveExponent8 1 76 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 42 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 52 76 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row353 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 89 105 142,
  tropicalOverlapDegreeFiveExponent8 1 65 89 115 130,
  tropicalOverlapDegreeFiveExponent8 1 76 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 42 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 52 76 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 353. -/
theorem tropicalOverlapSourceIExponent8_replay_row353 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row353.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row353.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row353 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 353. -/
theorem tropicalOverlapSourceJExponent8_replay_row353 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row353.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row353.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row353 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row353 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row353.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row353 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row353 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row353 :
    tropicalOverlapRelation8Row353 =
      tropicalOverlapSourceCombination8Row353 := by
  simp [tropicalOverlapRelation8Row353,
    tropicalOverlapSourceCombination8Row353,
    tropicalOverlapProvenance8Row353,
    tropicalOverlapSourceIExponent8Row353,
    tropicalOverlapSourceJExponent8Row353, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 353. -/
theorem tropicalOverlapRelation8_provenance_row353 :
    tropicalOverlapRelation8Row353 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row353 := by
  rw [tropicalOverlapRelation8_sourceCombination_row353]
  unfold tropicalOverlapSourceCombination8Row353
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row353,
    tropicalOverlapSourceJExponent8_replay_row353]

end

end MonochromaticQuantumGraphs.N8D3
