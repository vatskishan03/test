import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 208. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 208. -/
def tropicalOverlapProvenance8Row208 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 96, coordinateB := 7, sourceJ := 97, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 208. -/
def tropicalOverlapRelation8Row208 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 70 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 70 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row208 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 90 141,
  tropicalOverlapDegreeFiveExponent8 7 9 42 90 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 90 129,
  tropicalOverlapDegreeFiveExponent8 7 20 52 70 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row208 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 90 141,
  tropicalOverlapDegreeFiveExponent8 1 15 42 90 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 90 129,
  tropicalOverlapDegreeFiveExponent8 1 26 52 70 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 208. -/
theorem tropicalOverlapSourceIExponent8_replay_row208 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row208.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row208.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row208 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 208. -/
theorem tropicalOverlapSourceJExponent8_replay_row208 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row208.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row208.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row208 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row208 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row208.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row208 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row208 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row208 :
    tropicalOverlapRelation8Row208 =
      tropicalOverlapSourceCombination8Row208 := by
  simp [tropicalOverlapRelation8Row208,
    tropicalOverlapSourceCombination8Row208,
    tropicalOverlapProvenance8Row208,
    tropicalOverlapSourceIExponent8Row208,
    tropicalOverlapSourceJExponent8Row208, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 208. -/
theorem tropicalOverlapRelation8_provenance_row208 :
    tropicalOverlapRelation8Row208 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row208 := by
  rw [tropicalOverlapRelation8_sourceCombination_row208]
  unfold tropicalOverlapSourceCombination8Row208
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row208,
    tropicalOverlapSourceJExponent8_replay_row208]

end

end MonochromaticQuantumGraphs.N8D3
