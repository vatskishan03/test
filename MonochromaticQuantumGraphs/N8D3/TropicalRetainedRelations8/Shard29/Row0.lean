import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 145. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 145. -/
def tropicalOverlapProvenance8Row145 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 46, coordinateB := 89, sourceJ := 50, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 145. -/
def tropicalOverlapRelation8Row145 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row145 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 89 103 138,
  tropicalOverlapDegreeFiveExponent8 1 64 89 111 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 89 132,
  tropicalOverlapDegreeFiveExponent8 19 51 77 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row145 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 103 138,
  tropicalOverlapDegreeFiveExponent8 1 65 86 111 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 89 132,
  tropicalOverlapDegreeFiveExponent8 20 51 77 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 145. -/
theorem tropicalOverlapSourceIExponent8_replay_row145 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row145.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row145.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row145 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 145. -/
theorem tropicalOverlapSourceJExponent8_replay_row145 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row145.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row145.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row145 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row145 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row145.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row145 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row145 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row145 :
    tropicalOverlapRelation8Row145 =
      tropicalOverlapSourceCombination8Row145 := by
  simp [tropicalOverlapRelation8Row145,
    tropicalOverlapSourceCombination8Row145,
    tropicalOverlapProvenance8Row145,
    tropicalOverlapSourceIExponent8Row145,
    tropicalOverlapSourceJExponent8Row145, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 145. -/
theorem tropicalOverlapRelation8_provenance_row145 :
    tropicalOverlapRelation8Row145 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row145 := by
  rw [tropicalOverlapRelation8_sourceCombination_row145]
  unfold tropicalOverlapSourceCombination8Row145
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row145,
    tropicalOverlapSourceJExponent8_replay_row145]

end

end MonochromaticQuantumGraphs.N8D3
