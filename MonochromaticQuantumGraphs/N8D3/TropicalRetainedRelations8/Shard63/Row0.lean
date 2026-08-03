import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 315. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 315. -/
def tropicalOverlapProvenance8Row315 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 162, coordinateB := 90, sourceJ := 177, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 315. -/
def tropicalOverlapRelation8Row315 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row315 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 98 142,
  tropicalOverlapDegreeFiveExponent8 6 65 90 109 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 38 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 49 75 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row315 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 104 142,
  tropicalOverlapDegreeFiveExponent8 6 65 88 115 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 38 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 49 75 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 315. -/
theorem tropicalOverlapSourceIExponent8_replay_row315 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row315.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row315.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row315 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 315. -/
theorem tropicalOverlapSourceJExponent8_replay_row315 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row315.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row315.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row315 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row315 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row315.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row315 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row315 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row315 :
    tropicalOverlapRelation8Row315 =
      tropicalOverlapSourceCombination8Row315 := by
  simp [tropicalOverlapRelation8Row315,
    tropicalOverlapSourceCombination8Row315,
    tropicalOverlapProvenance8Row315,
    tropicalOverlapSourceIExponent8Row315,
    tropicalOverlapSourceJExponent8Row315, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 315. -/
theorem tropicalOverlapRelation8_provenance_row315 :
    tropicalOverlapRelation8Row315 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row315 := by
  rw [tropicalOverlapRelation8_sourceCombination_row315]
  unfold tropicalOverlapSourceCombination8Row315
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row315,
    tropicalOverlapSourceJExponent8_replay_row315]

end

end MonochromaticQuantumGraphs.N8D3
