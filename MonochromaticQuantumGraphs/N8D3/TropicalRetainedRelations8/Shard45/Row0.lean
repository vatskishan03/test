import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 225. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 225. -/
def tropicalOverlapProvenance8Row225 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 104, coordinateB := 142, sourceJ := 164, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 225. -/
def tropicalOverlapRelation8Row225 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 69 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row225 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 101 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 111 127 142,
  tropicalOverlapDegreeFiveExponent8 0 69 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 48 89 127 142,
  tropicalOverlapDegreeFiveExponent8 20 48 69 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row225 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 101 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 112 127 139,
  tropicalOverlapDegreeFiveExponent8 0 69 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 49 89 127 139,
  tropicalOverlapDegreeFiveExponent8 20 49 69 120 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 225. -/
theorem tropicalOverlapSourceIExponent8_replay_row225 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row225.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row225.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row225 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 225. -/
theorem tropicalOverlapSourceJExponent8_replay_row225 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row225.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row225.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row225 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row225 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row225.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row225 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row225 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row225 :
    tropicalOverlapRelation8Row225 =
      tropicalOverlapSourceCombination8Row225 := by
  simp [tropicalOverlapRelation8Row225,
    tropicalOverlapSourceCombination8Row225,
    tropicalOverlapProvenance8Row225,
    tropicalOverlapSourceIExponent8Row225,
    tropicalOverlapSourceJExponent8Row225, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 225. -/
theorem tropicalOverlapRelation8_provenance_row225 :
    tropicalOverlapRelation8Row225 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row225 := by
  rw [tropicalOverlapRelation8_sourceCombination_row225]
  unfold tropicalOverlapSourceCombination8Row225
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row225,
    tropicalOverlapSourceJExponent8_replay_row225]

end

end MonochromaticQuantumGraphs.N8D3
