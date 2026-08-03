import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 275. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 275. -/
def tropicalOverlapProvenance8Row275 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 132, coordinateB := 142, sourceJ := 192, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 275. -/
def tropicalOverlapRelation8Row275 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 114 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 115 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 90 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 90 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row275 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 105 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 114 130 142,
  tropicalOverlapDegreeFiveExponent8 0 70 90 139 142,
  tropicalOverlapDegreeFiveExponent8 9 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 9 48 90 130 142,
  tropicalOverlapDegreeFiveExponent8 20 48 70 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row275 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 105 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 115 130 139,
  tropicalOverlapDegreeFiveExponent8 0 70 90 139 142,
  tropicalOverlapDegreeFiveExponent8 9 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 9 49 90 130 139,
  tropicalOverlapDegreeFiveExponent8 20 49 70 123 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 275. -/
theorem tropicalOverlapSourceIExponent8_replay_row275 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row275.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row275.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row275 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 275. -/
theorem tropicalOverlapSourceJExponent8_replay_row275 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row275.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row275.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row275 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row275 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row275.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row275 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row275 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row275 :
    tropicalOverlapRelation8Row275 =
      tropicalOverlapSourceCombination8Row275 := by
  simp [tropicalOverlapRelation8Row275,
    tropicalOverlapSourceCombination8Row275,
    tropicalOverlapProvenance8Row275,
    tropicalOverlapSourceIExponent8Row275,
    tropicalOverlapSourceJExponent8Row275, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 275. -/
theorem tropicalOverlapRelation8_provenance_row275 :
    tropicalOverlapRelation8Row275 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row275 := by
  rw [tropicalOverlapRelation8_sourceCombination_row275]
  unfold tropicalOverlapSourceCombination8Row275
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row275,
    tropicalOverlapSourceJExponent8_replay_row275]

end

end MonochromaticQuantumGraphs.N8D3
