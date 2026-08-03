import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 188. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 188. -/
def tropicalOverlapProvenance8Row188 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 80, coordinateB := 89, sourceJ := 89, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 188. -/
def tropicalOverlapRelation8Row188 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row188 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 89 99 141,
  tropicalOverlapDegreeFiveExponent8 7 58 89 109 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 89 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 89 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 89 129,
  tropicalOverlapDegreeFiveExponent8 25 52 70 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row188 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 102 141,
  tropicalOverlapDegreeFiveExponent8 7 59 85 112 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 89 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 89 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 89 129,
  tropicalOverlapDegreeFiveExponent8 26 52 70 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 188. -/
theorem tropicalOverlapSourceIExponent8_replay_row188 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row188.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row188.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row188 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 188. -/
theorem tropicalOverlapSourceJExponent8_replay_row188 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row188.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row188.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row188 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row188 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row188.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row188 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row188 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row188 :
    tropicalOverlapRelation8Row188 =
      tropicalOverlapSourceCombination8Row188 := by
  simp [tropicalOverlapRelation8Row188,
    tropicalOverlapSourceCombination8Row188,
    tropicalOverlapProvenance8Row188,
    tropicalOverlapSourceIExponent8Row188,
    tropicalOverlapSourceJExponent8Row188, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 188. -/
theorem tropicalOverlapRelation8_provenance_row188 :
    tropicalOverlapRelation8Row188 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row188 := by
  rw [tropicalOverlapRelation8_sourceCombination_row188]
  unfold tropicalOverlapSourceCombination8Row188
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row188,
    tropicalOverlapSourceJExponent8_replay_row188]

end

end MonochromaticQuantumGraphs.N8D3
