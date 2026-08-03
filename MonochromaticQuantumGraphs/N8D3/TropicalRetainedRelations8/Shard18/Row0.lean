import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 90. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 90. -/
def tropicalOverlapProvenance8Row90 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 26, coordinateB := 89, sourceJ := 30, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 90. -/
def tropicalOverlapRelation8Row90 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row90 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 89 102 138,
  tropicalOverlapDegreeFiveExponent8 1 64 89 111 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 42 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 89 129,
  tropicalOverlapDegreeFiveExponent8 19 51 76 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row90 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 102 138,
  tropicalOverlapDegreeFiveExponent8 1 65 86 111 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 42 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 89 129,
  tropicalOverlapDegreeFiveExponent8 20 51 76 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 90. -/
theorem tropicalOverlapSourceIExponent8_replay_row90 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row90.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row90.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row90 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 90. -/
theorem tropicalOverlapSourceJExponent8_replay_row90 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row90.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row90.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row90 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row90 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row90.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row90 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row90 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row90 :
    tropicalOverlapRelation8Row90 =
      tropicalOverlapSourceCombination8Row90 := by
  simp [tropicalOverlapRelation8Row90,
    tropicalOverlapSourceCombination8Row90,
    tropicalOverlapProvenance8Row90,
    tropicalOverlapSourceIExponent8Row90,
    tropicalOverlapSourceJExponent8Row90, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 90. -/
theorem tropicalOverlapRelation8_provenance_row90 :
    tropicalOverlapRelation8Row90 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row90 := by
  rw [tropicalOverlapRelation8_sourceCombination_row90]
  unfold tropicalOverlapSourceCombination8Row90
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row90,
    tropicalOverlapSourceJExponent8_replay_row90]

end

end MonochromaticQuantumGraphs.N8D3
