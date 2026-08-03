import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 195. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 195. -/
def tropicalOverlapProvenance8Row195 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 81, coordinateB := 90, sourceJ := 99, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 195. -/
def tropicalOverlapRelation8Row195 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row195 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 90 99 141,
  tropicalOverlapDegreeFiveExponent8 7 64 90 109 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 90 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 90 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 90 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row195 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 105 141,
  tropicalOverlapDegreeFiveExponent8 7 65 85 115 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 90 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 90 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 90 129,
  tropicalOverlapDegreeFiveExponent8 26 52 76 85 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 195. -/
theorem tropicalOverlapSourceIExponent8_replay_row195 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row195.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row195.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row195 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 195. -/
theorem tropicalOverlapSourceJExponent8_replay_row195 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row195.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row195.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row195 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row195 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row195.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row195 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row195 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row195 :
    tropicalOverlapRelation8Row195 =
      tropicalOverlapSourceCombination8Row195 := by
  simp [tropicalOverlapRelation8Row195,
    tropicalOverlapSourceCombination8Row195,
    tropicalOverlapProvenance8Row195,
    tropicalOverlapSourceIExponent8Row195,
    tropicalOverlapSourceJExponent8Row195, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 195. -/
theorem tropicalOverlapRelation8_provenance_row195 :
    tropicalOverlapRelation8Row195 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row195 := by
  rw [tropicalOverlapRelation8_sourceCombination_row195]
  unfold tropicalOverlapSourceCombination8Row195
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row195,
    tropicalOverlapSourceJExponent8_replay_row195]

end

end MonochromaticQuantumGraphs.N8D3
