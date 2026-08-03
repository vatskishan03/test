import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 189. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 189. -/
def tropicalOverlapProvenance8Row189 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 80, coordinateB := 87, sourceJ := 93, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 189. -/
def tropicalOverlapRelation8Row189 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row189 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 87 99 141,
  tropicalOverlapDegreeFiveExponent8 7 58 87 109 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 87 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 87 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 87 129,
  tropicalOverlapDegreeFiveExponent8 25 52 70 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row189 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 85 105 141,
  tropicalOverlapDegreeFiveExponent8 7 58 85 115 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 87 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 87 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 87 129,
  tropicalOverlapDegreeFiveExponent8 25 52 70 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 189. -/
theorem tropicalOverlapSourceIExponent8_replay_row189 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row189.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row189.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row189 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 189. -/
theorem tropicalOverlapSourceJExponent8_replay_row189 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row189.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row189.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row189 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row189 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row189.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row189 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row189 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row189 :
    tropicalOverlapRelation8Row189 =
      tropicalOverlapSourceCombination8Row189 := by
  simp [tropicalOverlapRelation8Row189,
    tropicalOverlapSourceCombination8Row189,
    tropicalOverlapProvenance8Row189,
    tropicalOverlapSourceIExponent8Row189,
    tropicalOverlapSourceJExponent8Row189, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 189. -/
theorem tropicalOverlapRelation8_provenance_row189 :
    tropicalOverlapRelation8Row189 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row189 := by
  rw [tropicalOverlapRelation8_sourceCombination_row189]
  unfold tropicalOverlapSourceCombination8Row189
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row189,
    tropicalOverlapSourceJExponent8_replay_row189]

end

end MonochromaticQuantumGraphs.N8D3
