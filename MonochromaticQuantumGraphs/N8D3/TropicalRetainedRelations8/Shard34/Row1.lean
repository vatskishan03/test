import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 171. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 171. -/
def tropicalOverlapProvenance8Row171 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 61, coordinateB := 90, sourceJ := 79, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 171. -/
def tropicalOverlapRelation8Row171 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 104 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 115 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row171 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 90 98 141,
  tropicalOverlapDegreeFiveExponent8 7 64 90 109 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 90 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 90 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 90 126,
  tropicalOverlapDegreeFiveExponent8 25 52 75 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row171 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 104 141,
  tropicalOverlapDegreeFiveExponent8 7 65 85 115 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 90 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 90 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 90 126,
  tropicalOverlapDegreeFiveExponent8 26 52 75 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 171. -/
theorem tropicalOverlapSourceIExponent8_replay_row171 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row171.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row171.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row171 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 171. -/
theorem tropicalOverlapSourceJExponent8_replay_row171 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row171.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row171.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row171 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row171 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row171.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row171 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row171 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row171 :
    tropicalOverlapRelation8Row171 =
      tropicalOverlapSourceCombination8Row171 := by
  simp [tropicalOverlapRelation8Row171,
    tropicalOverlapSourceCombination8Row171,
    tropicalOverlapProvenance8Row171,
    tropicalOverlapSourceIExponent8Row171,
    tropicalOverlapSourceJExponent8Row171, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 171. -/
theorem tropicalOverlapRelation8_provenance_row171 :
    tropicalOverlapRelation8Row171 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row171 := by
  rw [tropicalOverlapRelation8_sourceCombination_row171]
  unfold tropicalOverlapSourceCombination8Row171
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row171,
    tropicalOverlapSourceJExponent8_replay_row171]

end

end MonochromaticQuantumGraphs.N8D3
