import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 209. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 209. -/
def tropicalOverlapProvenance8Row209 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 98, coordinateB := 7, sourceJ := 99, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 209. -/
def tropicalOverlapRelation8Row209 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 76 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row209 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 65 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 90 141,
  tropicalOverlapDegreeFiveExponent8 7 11 42 90 141,
  tropicalOverlapDegreeFiveExponent8 7 11 52 90 129,
  tropicalOverlapDegreeFiveExponent8 7 20 52 76 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row209 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 65 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 90 141,
  tropicalOverlapDegreeFiveExponent8 1 17 42 90 141,
  tropicalOverlapDegreeFiveExponent8 1 17 52 90 129,
  tropicalOverlapDegreeFiveExponent8 1 26 52 76 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 209. -/
theorem tropicalOverlapSourceIExponent8_replay_row209 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row209.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row209.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row209 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 209. -/
theorem tropicalOverlapSourceJExponent8_replay_row209 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row209.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row209.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row209 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row209 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row209.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row209 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row209 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row209 :
    tropicalOverlapRelation8Row209 =
      tropicalOverlapSourceCombination8Row209 := by
  simp [tropicalOverlapRelation8Row209,
    tropicalOverlapSourceCombination8Row209,
    tropicalOverlapProvenance8Row209,
    tropicalOverlapSourceIExponent8Row209,
    tropicalOverlapSourceJExponent8Row209, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 209. -/
theorem tropicalOverlapRelation8_provenance_row209 :
    tropicalOverlapRelation8Row209 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row209 := by
  rw [tropicalOverlapRelation8_sourceCombination_row209]
  unfold tropicalOverlapSourceCombination8Row209
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row209,
    tropicalOverlapSourceJExponent8_replay_row209]

end

end MonochromaticQuantumGraphs.N8D3
