import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 42. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 42. -/
def tropicalOverlapProvenance8Row42 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 11, coordinateB := 139, sourceJ := 111, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 42. -/
def tropicalOverlapRelation8Row42 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row42 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 101 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 111 126 139,
  tropicalOverlapDegreeFiveExponent8 7 75 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 89 126 139,
  tropicalOverlapDegreeFiveExponent8 26 51 75 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row42 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 101 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 111 127 138,
  tropicalOverlapDegreeFiveExponent8 7 75 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 89 127 138,
  tropicalOverlapDegreeFiveExponent8 26 51 75 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 42. -/
theorem tropicalOverlapSourceIExponent8_replay_row42 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row42.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row42.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row42 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 42. -/
theorem tropicalOverlapSourceJExponent8_replay_row42 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row42.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row42.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row42 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row42 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row42.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row42 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row42 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row42 :
    tropicalOverlapRelation8Row42 =
      tropicalOverlapSourceCombination8Row42 := by
  simp [tropicalOverlapRelation8Row42,
    tropicalOverlapSourceCombination8Row42,
    tropicalOverlapProvenance8Row42,
    tropicalOverlapSourceIExponent8Row42,
    tropicalOverlapSourceJExponent8Row42, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 42. -/
theorem tropicalOverlapRelation8_provenance_row42 :
    tropicalOverlapRelation8Row42 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row42 := by
  rw [tropicalOverlapRelation8_sourceCombination_row42]
  unfold tropicalOverlapSourceCombination8Row42
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row42,
    tropicalOverlapSourceJExponent8_replay_row42]

end

end MonochromaticQuantumGraphs.N8D3
