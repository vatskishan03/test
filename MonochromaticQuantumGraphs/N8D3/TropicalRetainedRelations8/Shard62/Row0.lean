import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 310. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 310. -/
def tropicalOverlapProvenance8Row310 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 160, coordinateB := 90, sourceJ := 173, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 310. -/
def tropicalOverlapRelation8Row310 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row310 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 90 98 142,
  tropicalOverlapDegreeFiveExponent8 6 59 90 109 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 38 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 49 69 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row310 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 104 142,
  tropicalOverlapDegreeFiveExponent8 6 59 88 115 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 38 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 49 69 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 310. -/
theorem tropicalOverlapSourceIExponent8_replay_row310 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row310.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row310.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row310 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 310. -/
theorem tropicalOverlapSourceJExponent8_replay_row310 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row310.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row310.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row310 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row310 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row310.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row310 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row310 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row310 :
    tropicalOverlapRelation8Row310 =
      tropicalOverlapSourceCombination8Row310 := by
  simp [tropicalOverlapRelation8Row310,
    tropicalOverlapSourceCombination8Row310,
    tropicalOverlapProvenance8Row310,
    tropicalOverlapSourceIExponent8Row310,
    tropicalOverlapSourceJExponent8Row310, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 310. -/
theorem tropicalOverlapRelation8_provenance_row310 :
    tropicalOverlapRelation8Row310 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row310 := by
  rw [tropicalOverlapRelation8_sourceCombination_row310]
  unfold tropicalOverlapSourceCombination8Row310
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row310,
    tropicalOverlapSourceJExponent8_replay_row310]

end

end MonochromaticQuantumGraphs.N8D3
