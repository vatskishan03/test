import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 172. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 172. -/
def tropicalOverlapProvenance8Row172 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 64, coordinateB := 7, sourceJ := 65, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 172. -/
def tropicalOverlapRelation8Row172 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 86 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 86 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 69 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row172 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 101 141,
  tropicalOverlapDegreeFiveExponent8 1 7 58 112 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 86 141,
  tropicalOverlapDegreeFiveExponent8 7 9 41 86 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 86 126,
  tropicalOverlapDegreeFiveExponent8 7 19 52 69 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row172 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 101 141,
  tropicalOverlapDegreeFiveExponent8 1 7 58 112 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 86 141,
  tropicalOverlapDegreeFiveExponent8 1 15 41 86 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 86 126,
  tropicalOverlapDegreeFiveExponent8 1 25 52 69 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 172. -/
theorem tropicalOverlapSourceIExponent8_replay_row172 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row172.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row172.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row172 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 172. -/
theorem tropicalOverlapSourceJExponent8_replay_row172 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row172.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row172.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row172 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row172 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row172.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row172 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row172 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row172 :
    tropicalOverlapRelation8Row172 =
      tropicalOverlapSourceCombination8Row172 := by
  simp [tropicalOverlapRelation8Row172,
    tropicalOverlapSourceCombination8Row172,
    tropicalOverlapProvenance8Row172,
    tropicalOverlapSourceIExponent8Row172,
    tropicalOverlapSourceJExponent8Row172, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 172. -/
theorem tropicalOverlapRelation8_provenance_row172 :
    tropicalOverlapRelation8Row172 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row172 := by
  rw [tropicalOverlapRelation8_sourceCombination_row172]
  unfold tropicalOverlapSourceCombination8Row172
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row172,
    tropicalOverlapSourceJExponent8_replay_row172]

end

end MonochromaticQuantumGraphs.N8D3
