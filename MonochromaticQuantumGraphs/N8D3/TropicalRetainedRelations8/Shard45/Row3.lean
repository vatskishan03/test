import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 228. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 228. -/
def tropicalOverlapProvenance8Row228 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 106, coordinateB := 90, sourceJ := 114, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 228. -/
def tropicalOverlapRelation8Row228 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 101 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 111 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row228 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 90 101 139,
  tropicalOverlapDegreeFiveExponent8 1 59 90 111 127,
  tropicalOverlapDegreeFiveExponent8 1 69 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 41 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 51 69 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row228 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 89 104 139,
  tropicalOverlapDegreeFiveExponent8 1 59 89 114 127,
  tropicalOverlapDegreeFiveExponent8 1 69 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 41 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 51 69 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 228. -/
theorem tropicalOverlapSourceIExponent8_replay_row228 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row228.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row228.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row228 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 228. -/
theorem tropicalOverlapSourceJExponent8_replay_row228 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row228.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row228.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row228 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row228 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row228.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row228 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row228 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row228 :
    tropicalOverlapRelation8Row228 =
      tropicalOverlapSourceCombination8Row228 := by
  simp [tropicalOverlapRelation8Row228,
    tropicalOverlapSourceCombination8Row228,
    tropicalOverlapProvenance8Row228,
    tropicalOverlapSourceIExponent8Row228,
    tropicalOverlapSourceJExponent8Row228, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 228. -/
theorem tropicalOverlapRelation8_provenance_row228 :
    tropicalOverlapRelation8Row228 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row228 := by
  rw [tropicalOverlapRelation8_sourceCombination_row228]
  unfold tropicalOverlapSourceCombination8Row228
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row228,
    tropicalOverlapSourceJExponent8_replay_row228]

end

end MonochromaticQuantumGraphs.N8D3
