import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 323. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 323. -/
def tropicalOverlapProvenance8Row323 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 168, coordinateB := 6, sourceJ := 169, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 323. -/
def tropicalOverlapRelation8Row323 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 75 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row323 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 101 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 112 127,
  tropicalOverlapDegreeFiveExponent8 0 6 75 89 142,
  tropicalOverlapDegreeFiveExponent8 6 11 38 89 142,
  tropicalOverlapDegreeFiveExponent8 6 11 49 89 127,
  tropicalOverlapDegreeFiveExponent8 6 20 49 75 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row323 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 101 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 112 127,
  tropicalOverlapDegreeFiveExponent8 0 6 75 89 142,
  tropicalOverlapDegreeFiveExponent8 0 17 38 89 142,
  tropicalOverlapDegreeFiveExponent8 0 17 49 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 49 75 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 323. -/
theorem tropicalOverlapSourceIExponent8_replay_row323 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row323.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row323.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row323 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 323. -/
theorem tropicalOverlapSourceJExponent8_replay_row323 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row323.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row323.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row323 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row323 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row323.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row323 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row323 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row323 :
    tropicalOverlapRelation8Row323 =
      tropicalOverlapSourceCombination8Row323 := by
  simp [tropicalOverlapRelation8Row323,
    tropicalOverlapSourceCombination8Row323,
    tropicalOverlapProvenance8Row323,
    tropicalOverlapSourceIExponent8Row323,
    tropicalOverlapSourceJExponent8Row323, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 323. -/
theorem tropicalOverlapRelation8_provenance_row323 :
    tropicalOverlapRelation8Row323 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row323 := by
  rw [tropicalOverlapRelation8_sourceCombination_row323]
  unfold tropicalOverlapSourceCombination8Row323
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row323,
    tropicalOverlapSourceJExponent8_replay_row323]

end

end MonochromaticQuantumGraphs.N8D3
