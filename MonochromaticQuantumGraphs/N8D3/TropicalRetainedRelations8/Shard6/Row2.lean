import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 32. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 32. -/
def tropicalOverlapProvenance8Row32 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 8, coordinateB := 139, sourceJ := 106, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 32. -/
def tropicalOverlapRelation8Row32 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row32 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 101 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 126 139,
  tropicalOverlapDegreeFiveExponent8 1 69 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 126 139,
  tropicalOverlapDegreeFiveExponent8 20 51 69 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row32 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 101 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 127 138,
  tropicalOverlapDegreeFiveExponent8 1 69 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 127 138,
  tropicalOverlapDegreeFiveExponent8 20 51 69 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 32. -/
theorem tropicalOverlapSourceIExponent8_replay_row32 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row32.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row32.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row32 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 32. -/
theorem tropicalOverlapSourceJExponent8_replay_row32 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row32.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row32.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row32 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row32 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row32.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row32 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row32 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row32 :
    tropicalOverlapRelation8Row32 =
      tropicalOverlapSourceCombination8Row32 := by
  simp [tropicalOverlapRelation8Row32,
    tropicalOverlapSourceCombination8Row32,
    tropicalOverlapProvenance8Row32,
    tropicalOverlapSourceIExponent8Row32,
    tropicalOverlapSourceJExponent8Row32, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 32. -/
theorem tropicalOverlapRelation8_provenance_row32 :
    tropicalOverlapRelation8Row32 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row32 := by
  rw [tropicalOverlapRelation8_sourceCombination_row32]
  unfold tropicalOverlapSourceCombination8Row32
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row32,
    tropicalOverlapSourceJExponent8_replay_row32]

end

end MonochromaticQuantumGraphs.N8D3
