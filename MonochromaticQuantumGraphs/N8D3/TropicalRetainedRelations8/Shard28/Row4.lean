import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 144. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 144. -/
def tropicalOverlapProvenance8Row144 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 46, coordinateB := 7, sourceJ := 47, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 144. -/
def tropicalOverlapRelation8Row144 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 86 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 77 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 86 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 77 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row144 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 103 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 111 132,
  tropicalOverlapDegreeFiveExponent8 1 7 77 86 138,
  tropicalOverlapDegreeFiveExponent8 7 11 43 86 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 86 132,
  tropicalOverlapDegreeFiveExponent8 7 19 51 77 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row144 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 103 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 111 132,
  tropicalOverlapDegreeFiveExponent8 1 7 77 86 138,
  tropicalOverlapDegreeFiveExponent8 1 17 43 86 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 86 132,
  tropicalOverlapDegreeFiveExponent8 1 25 51 77 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 144. -/
theorem tropicalOverlapSourceIExponent8_replay_row144 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row144.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row144.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row144 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 144. -/
theorem tropicalOverlapSourceJExponent8_replay_row144 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row144.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row144.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row144 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row144 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row144.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row144 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row144 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row144 :
    tropicalOverlapRelation8Row144 =
      tropicalOverlapSourceCombination8Row144 := by
  simp [tropicalOverlapRelation8Row144,
    tropicalOverlapSourceCombination8Row144,
    tropicalOverlapProvenance8Row144,
    tropicalOverlapSourceIExponent8Row144,
    tropicalOverlapSourceJExponent8Row144, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 144. -/
theorem tropicalOverlapRelation8_provenance_row144 :
    tropicalOverlapRelation8Row144 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row144 := by
  rw [tropicalOverlapRelation8_sourceCombination_row144]
  unfold tropicalOverlapSourceCombination8Row144
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row144,
    tropicalOverlapSourceJExponent8_replay_row144]

end

end MonochromaticQuantumGraphs.N8D3
