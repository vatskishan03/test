import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 183. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 183. -/
def tropicalOverlapProvenance8Row183 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 74, coordinateB := 7, sourceJ := 75, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 183. -/
def tropicalOverlapRelation8Row183 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 75 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 87 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 75 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row183 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 104 141,
  tropicalOverlapDegreeFiveExponent8 1 7 64 115 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 87 141,
  tropicalOverlapDegreeFiveExponent8 7 11 41 87 141,
  tropicalOverlapDegreeFiveExponent8 7 11 52 87 126,
  tropicalOverlapDegreeFiveExponent8 7 19 52 75 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row183 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 104 141,
  tropicalOverlapDegreeFiveExponent8 1 7 64 115 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 87 141,
  tropicalOverlapDegreeFiveExponent8 1 17 41 87 141,
  tropicalOverlapDegreeFiveExponent8 1 17 52 87 126,
  tropicalOverlapDegreeFiveExponent8 1 25 52 75 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 183. -/
theorem tropicalOverlapSourceIExponent8_replay_row183 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row183.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row183.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row183 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 183. -/
theorem tropicalOverlapSourceJExponent8_replay_row183 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row183.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row183.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row183 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row183 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row183.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row183 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row183 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row183 :
    tropicalOverlapRelation8Row183 =
      tropicalOverlapSourceCombination8Row183 := by
  simp [tropicalOverlapRelation8Row183,
    tropicalOverlapSourceCombination8Row183,
    tropicalOverlapProvenance8Row183,
    tropicalOverlapSourceIExponent8Row183,
    tropicalOverlapSourceJExponent8Row183, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 183. -/
theorem tropicalOverlapRelation8_provenance_row183 :
    tropicalOverlapRelation8Row183 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row183 := by
  rw [tropicalOverlapRelation8_sourceCombination_row183]
  unfold tropicalOverlapSourceCombination8Row183
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row183,
    tropicalOverlapSourceJExponent8_replay_row183]

end

end MonochromaticQuantumGraphs.N8D3
