import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 193. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 193. -/
def tropicalOverlapProvenance8Row193 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 81, coordinateB := 89, sourceJ := 91, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 193. -/
def tropicalOverlapRelation8Row193 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row193 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 89 99 141,
  tropicalOverlapDegreeFiveExponent8 7 64 89 109 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 89 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row193 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 102 141,
  tropicalOverlapDegreeFiveExponent8 7 65 85 112 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 89 129,
  tropicalOverlapDegreeFiveExponent8 26 52 76 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 193. -/
theorem tropicalOverlapSourceIExponent8_replay_row193 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row193.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row193.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row193 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 193. -/
theorem tropicalOverlapSourceJExponent8_replay_row193 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row193.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row193.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row193 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row193 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row193.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row193 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row193 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row193 :
    tropicalOverlapRelation8Row193 =
      tropicalOverlapSourceCombination8Row193 := by
  simp [tropicalOverlapRelation8Row193,
    tropicalOverlapSourceCombination8Row193,
    tropicalOverlapProvenance8Row193,
    tropicalOverlapSourceIExponent8Row193,
    tropicalOverlapSourceJExponent8Row193, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 193. -/
theorem tropicalOverlapRelation8_provenance_row193 :
    tropicalOverlapRelation8Row193 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row193 := by
  rw [tropicalOverlapRelation8_sourceCombination_row193]
  unfold tropicalOverlapSourceCombination8Row193
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row193,
    tropicalOverlapSourceJExponent8_replay_row193]

end

end MonochromaticQuantumGraphs.N8D3
