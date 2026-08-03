import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 196. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 196. -/
def tropicalOverlapProvenance8Row196 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 84, coordinateB := 7, sourceJ := 85, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 196. -/
def tropicalOverlapRelation8Row196 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 86 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 86 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 70 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row196 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 58 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 86 141,
  tropicalOverlapDegreeFiveExponent8 7 9 42 86 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 86 129,
  tropicalOverlapDegreeFiveExponent8 7 19 52 70 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row196 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 58 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 86 141,
  tropicalOverlapDegreeFiveExponent8 1 15 42 86 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 86 129,
  tropicalOverlapDegreeFiveExponent8 1 25 52 70 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 196. -/
theorem tropicalOverlapSourceIExponent8_replay_row196 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row196.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row196.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row196 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 196. -/
theorem tropicalOverlapSourceJExponent8_replay_row196 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row196.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row196.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row196 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row196 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row196.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row196 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row196 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row196 :
    tropicalOverlapRelation8Row196 =
      tropicalOverlapSourceCombination8Row196 := by
  simp [tropicalOverlapRelation8Row196,
    tropicalOverlapSourceCombination8Row196,
    tropicalOverlapProvenance8Row196,
    tropicalOverlapSourceIExponent8Row196,
    tropicalOverlapSourceJExponent8Row196, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 196. -/
theorem tropicalOverlapRelation8_provenance_row196 :
    tropicalOverlapRelation8Row196 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row196 := by
  rw [tropicalOverlapRelation8_sourceCombination_row196]
  unfold tropicalOverlapSourceCombination8Row196
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row196,
    tropicalOverlapSourceJExponent8_replay_row196]

end

end MonochromaticQuantumGraphs.N8D3
