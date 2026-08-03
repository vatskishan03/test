import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 318. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 318. -/
def tropicalOverlapProvenance8Row318 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 164, coordinateB := 6, sourceJ := 165, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 318. -/
def tropicalOverlapRelation8Row318 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 69 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row318 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 101 142,
  tropicalOverlapDegreeFiveExponent8 0 6 59 112 127,
  tropicalOverlapDegreeFiveExponent8 0 6 69 89 142,
  tropicalOverlapDegreeFiveExponent8 6 9 38 89 142,
  tropicalOverlapDegreeFiveExponent8 6 9 49 89 127,
  tropicalOverlapDegreeFiveExponent8 6 20 49 69 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row318 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 101 142,
  tropicalOverlapDegreeFiveExponent8 0 6 59 112 127,
  tropicalOverlapDegreeFiveExponent8 0 6 69 89 142,
  tropicalOverlapDegreeFiveExponent8 0 15 38 89 142,
  tropicalOverlapDegreeFiveExponent8 0 15 49 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 49 69 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 318. -/
theorem tropicalOverlapSourceIExponent8_replay_row318 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row318.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row318.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row318 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 318. -/
theorem tropicalOverlapSourceJExponent8_replay_row318 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row318.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row318.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row318 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row318 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row318.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row318 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row318 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row318 :
    tropicalOverlapRelation8Row318 =
      tropicalOverlapSourceCombination8Row318 := by
  simp [tropicalOverlapRelation8Row318,
    tropicalOverlapSourceCombination8Row318,
    tropicalOverlapProvenance8Row318,
    tropicalOverlapSourceIExponent8Row318,
    tropicalOverlapSourceJExponent8Row318, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 318. -/
theorem tropicalOverlapRelation8_provenance_row318 :
    tropicalOverlapRelation8Row318 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row318 := by
  rw [tropicalOverlapRelation8_sourceCombination_row318]
  unfold tropicalOverlapSourceCombination8Row318
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row318,
    tropicalOverlapSourceJExponent8_replay_row318]

end

end MonochromaticQuantumGraphs.N8D3
