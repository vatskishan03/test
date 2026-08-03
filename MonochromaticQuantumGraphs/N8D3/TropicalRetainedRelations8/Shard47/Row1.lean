import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 236. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 236. -/
def tropicalOverlapProvenance8Row236 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 112, coordinateB := 6, sourceJ := 113, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 236. -/
def tropicalOverlapRelation8Row236 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 69 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row236 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 104 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 114 127,
  tropicalOverlapDegreeFiveExponent8 0 6 69 90 139,
  tropicalOverlapDegreeFiveExponent8 6 9 38 90 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 90 127,
  tropicalOverlapDegreeFiveExponent8 6 20 48 69 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row236 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 104 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 114 127,
  tropicalOverlapDegreeFiveExponent8 0 6 69 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 38 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 90 127,
  tropicalOverlapDegreeFiveExponent8 0 26 48 69 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 236. -/
theorem tropicalOverlapSourceIExponent8_replay_row236 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row236.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row236.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row236 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 236. -/
theorem tropicalOverlapSourceJExponent8_replay_row236 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row236.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row236.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row236 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row236 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row236.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row236 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row236 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row236 :
    tropicalOverlapRelation8Row236 =
      tropicalOverlapSourceCombination8Row236 := by
  simp [tropicalOverlapRelation8Row236,
    tropicalOverlapSourceCombination8Row236,
    tropicalOverlapProvenance8Row236,
    tropicalOverlapSourceIExponent8Row236,
    tropicalOverlapSourceJExponent8Row236, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 236. -/
theorem tropicalOverlapRelation8_provenance_row236 :
    tropicalOverlapRelation8Row236 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row236 := by
  rw [tropicalOverlapRelation8_sourceCombination_row236]
  unfold tropicalOverlapSourceCombination8Row236
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row236,
    tropicalOverlapSourceJExponent8_replay_row236]

end

end MonochromaticQuantumGraphs.N8D3
