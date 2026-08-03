import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 350. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 350. -/
def tropicalOverlapProvenance8Row350 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 188, coordinateB := 1, sourceJ := 190, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 350. -/
def tropicalOverlapRelation8Row350 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 76 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row350 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 102 142,
  tropicalOverlapDegreeFiveExponent8 0 1 65 112 130,
  tropicalOverlapDegreeFiveExponent8 0 1 76 89 142,
  tropicalOverlapDegreeFiveExponent8 1 11 39 89 142,
  tropicalOverlapDegreeFiveExponent8 1 11 49 89 130,
  tropicalOverlapDegreeFiveExponent8 1 20 49 76 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row350 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 102 142,
  tropicalOverlapDegreeFiveExponent8 0 1 65 112 130,
  tropicalOverlapDegreeFiveExponent8 0 1 76 89 142,
  tropicalOverlapDegreeFiveExponent8 0 11 42 89 142,
  tropicalOverlapDegreeFiveExponent8 0 11 52 89 130,
  tropicalOverlapDegreeFiveExponent8 0 20 52 76 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 350. -/
theorem tropicalOverlapSourceIExponent8_replay_row350 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row350.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row350.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row350 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 350. -/
theorem tropicalOverlapSourceJExponent8_replay_row350 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row350.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row350.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row350 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row350 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row350.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row350 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row350 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row350 :
    tropicalOverlapRelation8Row350 =
      tropicalOverlapSourceCombination8Row350 := by
  simp [tropicalOverlapRelation8Row350,
    tropicalOverlapSourceCombination8Row350,
    tropicalOverlapProvenance8Row350,
    tropicalOverlapSourceIExponent8Row350,
    tropicalOverlapSourceJExponent8Row350, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 350. -/
theorem tropicalOverlapRelation8_provenance_row350 :
    tropicalOverlapRelation8Row350 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row350 := by
  rw [tropicalOverlapRelation8_sourceCombination_row350]
  unfold tropicalOverlapSourceCombination8Row350
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row350,
    tropicalOverlapSourceJExponent8_replay_row350]

end

end MonochromaticQuantumGraphs.N8D3
