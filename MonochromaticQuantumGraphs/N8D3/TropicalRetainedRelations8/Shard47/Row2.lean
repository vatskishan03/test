import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 237. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 237. -/
def tropicalOverlapProvenance8Row237 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 112, coordinateB := 1, sourceJ := 114, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 237. -/
def tropicalOverlapRelation8Row237 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 69 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row237 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 104 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 114 127,
  tropicalOverlapDegreeFiveExponent8 0 1 69 90 139,
  tropicalOverlapDegreeFiveExponent8 1 9 38 90 139,
  tropicalOverlapDegreeFiveExponent8 1 9 48 90 127,
  tropicalOverlapDegreeFiveExponent8 1 20 48 69 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row237 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 104 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 114 127,
  tropicalOverlapDegreeFiveExponent8 0 1 69 90 139,
  tropicalOverlapDegreeFiveExponent8 0 9 41 90 139,
  tropicalOverlapDegreeFiveExponent8 0 9 51 90 127,
  tropicalOverlapDegreeFiveExponent8 0 20 51 69 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 237. -/
theorem tropicalOverlapSourceIExponent8_replay_row237 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row237.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row237.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row237 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 237. -/
theorem tropicalOverlapSourceJExponent8_replay_row237 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row237.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row237.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row237 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row237 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row237.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row237 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row237 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row237 :
    tropicalOverlapRelation8Row237 =
      tropicalOverlapSourceCombination8Row237 := by
  simp [tropicalOverlapRelation8Row237,
    tropicalOverlapSourceCombination8Row237,
    tropicalOverlapProvenance8Row237,
    tropicalOverlapSourceIExponent8Row237,
    tropicalOverlapSourceJExponent8Row237, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 237. -/
theorem tropicalOverlapRelation8_provenance_row237 :
    tropicalOverlapRelation8Row237 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row237 := by
  rw [tropicalOverlapRelation8_sourceCombination_row237]
  unfold tropicalOverlapSourceCombination8Row237
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row237,
    tropicalOverlapSourceJExponent8_replay_row237]

end

end MonochromaticQuantumGraphs.N8D3
