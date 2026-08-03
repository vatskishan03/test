import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 167. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 167. -/
def tropicalOverlapProvenance8Row167 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 61, coordinateB := 88, sourceJ := 63, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 167. -/
def tropicalOverlapRelation8Row167 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row167 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 88 98 141,
  tropicalOverlapDegreeFiveExponent8 7 64 88 109 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 88 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 88 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 88 126,
  tropicalOverlapDegreeFiveExponent8 25 52 75 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row167 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 98 141,
  tropicalOverlapDegreeFiveExponent8 7 65 85 109 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 88 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 88 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 88 126,
  tropicalOverlapDegreeFiveExponent8 26 52 75 85 116
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 167. -/
theorem tropicalOverlapSourceIExponent8_replay_row167 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row167.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row167.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row167 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 167. -/
theorem tropicalOverlapSourceJExponent8_replay_row167 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row167.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row167.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row167 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row167 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row167.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row167 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row167 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row167 :
    tropicalOverlapRelation8Row167 =
      tropicalOverlapSourceCombination8Row167 := by
  simp [tropicalOverlapRelation8Row167,
    tropicalOverlapSourceCombination8Row167,
    tropicalOverlapProvenance8Row167,
    tropicalOverlapSourceIExponent8Row167,
    tropicalOverlapSourceJExponent8Row167, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 167. -/
theorem tropicalOverlapRelation8_provenance_row167 :
    tropicalOverlapRelation8Row167 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row167 := by
  rw [tropicalOverlapRelation8_sourceCombination_row167]
  unfold tropicalOverlapSourceCombination8Row167
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row167,
    tropicalOverlapSourceJExponent8_replay_row167]

end

end MonochromaticQuantumGraphs.N8D3
