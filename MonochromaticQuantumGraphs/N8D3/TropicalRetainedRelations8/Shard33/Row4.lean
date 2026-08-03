import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 169. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 169. -/
def tropicalOverlapProvenance8Row169 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 61, coordinateB := 89, sourceJ := 71, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 169. -/
def tropicalOverlapRelation8Row169 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row169 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 89 98 141,
  tropicalOverlapDegreeFiveExponent8 7 64 89 109 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 89 126,
  tropicalOverlapDegreeFiveExponent8 25 52 75 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row169 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 101 141,
  tropicalOverlapDegreeFiveExponent8 7 65 85 112 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 89 126,
  tropicalOverlapDegreeFiveExponent8 26 52 75 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 169. -/
theorem tropicalOverlapSourceIExponent8_replay_row169 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row169.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row169.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row169 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 169. -/
theorem tropicalOverlapSourceJExponent8_replay_row169 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row169.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row169.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row169 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row169 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row169.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row169 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row169 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row169 :
    tropicalOverlapRelation8Row169 =
      tropicalOverlapSourceCombination8Row169 := by
  simp [tropicalOverlapRelation8Row169,
    tropicalOverlapSourceCombination8Row169,
    tropicalOverlapProvenance8Row169,
    tropicalOverlapSourceIExponent8Row169,
    tropicalOverlapSourceJExponent8Row169, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 169. -/
theorem tropicalOverlapRelation8_provenance_row169 :
    tropicalOverlapRelation8Row169 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row169 := by
  rw [tropicalOverlapRelation8_sourceCombination_row169]
  unfold tropicalOverlapSourceCombination8Row169
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row169,
    tropicalOverlapSourceJExponent8_replay_row169]

end

end MonochromaticQuantumGraphs.N8D3
