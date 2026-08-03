import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 311. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 311. -/
def tropicalOverlapProvenance8Row311 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 161, coordinateB := 89, sourceJ := 167, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 311. -/
def tropicalOverlapRelation8Row311 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 112 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row311 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 89 98 142,
  tropicalOverlapDegreeFiveExponent8 7 59 89 109 127,
  tropicalOverlapDegreeFiveExponent8 7 69 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 41 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 52 69 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row311 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 101 142,
  tropicalOverlapDegreeFiveExponent8 7 59 88 112 127,
  tropicalOverlapDegreeFiveExponent8 7 69 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 41 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 52 69 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 311. -/
theorem tropicalOverlapSourceIExponent8_replay_row311 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row311.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row311.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row311 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 311. -/
theorem tropicalOverlapSourceJExponent8_replay_row311 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row311.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row311.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row311 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row311 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row311.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row311 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row311 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row311 :
    tropicalOverlapRelation8Row311 =
      tropicalOverlapSourceCombination8Row311 := by
  simp [tropicalOverlapRelation8Row311,
    tropicalOverlapSourceCombination8Row311,
    tropicalOverlapProvenance8Row311,
    tropicalOverlapSourceIExponent8Row311,
    tropicalOverlapSourceJExponent8Row311, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 311. -/
theorem tropicalOverlapRelation8_provenance_row311 :
    tropicalOverlapRelation8Row311 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row311 := by
  rw [tropicalOverlapRelation8_sourceCombination_row311]
  unfold tropicalOverlapSourceCombination8Row311
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row311,
    tropicalOverlapSourceJExponent8_replay_row311]

end

end MonochromaticQuantumGraphs.N8D3
