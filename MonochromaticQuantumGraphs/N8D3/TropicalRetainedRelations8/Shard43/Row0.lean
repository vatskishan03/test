import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 215. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 215. -/
def tropicalOverlapProvenance8Row215 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 101, coordinateB := 90, sourceJ := 115, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 215. -/
def tropicalOverlapRelation8Row215 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row215 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 90 98 139,
  tropicalOverlapDegreeFiveExponent8 7 59 90 108 127,
  tropicalOverlapDegreeFiveExponent8 7 69 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 41 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 51 69 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row215 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 104 139,
  tropicalOverlapDegreeFiveExponent8 7 59 88 114 127,
  tropicalOverlapDegreeFiveExponent8 7 69 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 41 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 51 69 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 215. -/
theorem tropicalOverlapSourceIExponent8_replay_row215 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row215.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row215.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row215 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 215. -/
theorem tropicalOverlapSourceJExponent8_replay_row215 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row215.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row215.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row215 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row215 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row215.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row215 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row215 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row215 :
    tropicalOverlapRelation8Row215 =
      tropicalOverlapSourceCombination8Row215 := by
  simp [tropicalOverlapRelation8Row215,
    tropicalOverlapSourceCombination8Row215,
    tropicalOverlapProvenance8Row215,
    tropicalOverlapSourceIExponent8Row215,
    tropicalOverlapSourceJExponent8Row215, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 215. -/
theorem tropicalOverlapRelation8_provenance_row215 :
    tropicalOverlapRelation8Row215 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row215 := by
  rw [tropicalOverlapRelation8_sourceCombination_row215]
  unfold tropicalOverlapSourceCombination8Row215
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row215,
    tropicalOverlapSourceJExponent8_replay_row215]

end

end MonochromaticQuantumGraphs.N8D3
