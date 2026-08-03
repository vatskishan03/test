import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 293. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 293. -/
def tropicalOverlapProvenance8Row293 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 144, coordinateB := 1, sourceJ := 146, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 293. -/
def tropicalOverlapRelation8Row293 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 71 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 71 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row293 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 103 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 111 133,
  tropicalOverlapDegreeFiveExponent8 0 1 71 89 139,
  tropicalOverlapDegreeFiveExponent8 1 9 40 89 139,
  tropicalOverlapDegreeFiveExponent8 1 9 48 89 133,
  tropicalOverlapDegreeFiveExponent8 1 20 48 71 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row293 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 103 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 111 133,
  tropicalOverlapDegreeFiveExponent8 0 1 71 89 139,
  tropicalOverlapDegreeFiveExponent8 0 9 43 89 139,
  tropicalOverlapDegreeFiveExponent8 0 9 51 89 133,
  tropicalOverlapDegreeFiveExponent8 0 20 51 71 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 293. -/
theorem tropicalOverlapSourceIExponent8_replay_row293 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row293.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row293.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row293 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 293. -/
theorem tropicalOverlapSourceJExponent8_replay_row293 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row293.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row293.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row293 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row293 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row293.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row293 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row293 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row293 :
    tropicalOverlapRelation8Row293 =
      tropicalOverlapSourceCombination8Row293 := by
  simp [tropicalOverlapRelation8Row293,
    tropicalOverlapSourceCombination8Row293,
    tropicalOverlapProvenance8Row293,
    tropicalOverlapSourceIExponent8Row293,
    tropicalOverlapSourceJExponent8Row293, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 293. -/
theorem tropicalOverlapRelation8_provenance_row293 :
    tropicalOverlapRelation8Row293 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row293 := by
  rw [tropicalOverlapRelation8_sourceCombination_row293]
  unfold tropicalOverlapSourceCombination8Row293
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row293,
    tropicalOverlapSourceJExponent8_replay_row293]

end

end MonochromaticQuantumGraphs.N8D3
