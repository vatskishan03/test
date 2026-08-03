import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 177. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 177. -/
def tropicalOverlapProvenance8Row177 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 66, coordinateB := 89, sourceJ := 70, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 177. -/
def tropicalOverlapRelation8Row177 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row177 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 89 101 141,
  tropicalOverlapDegreeFiveExponent8 1 64 89 112 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 41 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 89 126,
  tropicalOverlapDegreeFiveExponent8 19 52 75 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row177 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 101 141,
  tropicalOverlapDegreeFiveExponent8 1 65 86 112 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 41 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 89 126,
  tropicalOverlapDegreeFiveExponent8 20 52 75 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 177. -/
theorem tropicalOverlapSourceIExponent8_replay_row177 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row177.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row177.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row177 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 177. -/
theorem tropicalOverlapSourceJExponent8_replay_row177 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row177.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row177.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row177 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row177 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row177.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row177 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row177 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row177 :
    tropicalOverlapRelation8Row177 =
      tropicalOverlapSourceCombination8Row177 := by
  simp [tropicalOverlapRelation8Row177,
    tropicalOverlapSourceCombination8Row177,
    tropicalOverlapProvenance8Row177,
    tropicalOverlapSourceIExponent8Row177,
    tropicalOverlapSourceJExponent8Row177, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 177. -/
theorem tropicalOverlapRelation8_provenance_row177 :
    tropicalOverlapRelation8Row177 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row177 := by
  rw [tropicalOverlapRelation8_sourceCombination_row177]
  unfold tropicalOverlapSourceCombination8Row177
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row177,
    tropicalOverlapSourceJExponent8_replay_row177]

end

end MonochromaticQuantumGraphs.N8D3
