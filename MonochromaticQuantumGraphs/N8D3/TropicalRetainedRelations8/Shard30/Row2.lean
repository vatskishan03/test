import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 152. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 152. -/
def tropicalOverlapProvenance8Row152 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 50, coordinateB := 139, sourceJ := 150, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 152. -/
def tropicalOverlapRelation8Row152 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row152 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 103 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 111 132 139,
  tropicalOverlapDegreeFiveExponent8 1 77 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 132 139,
  tropicalOverlapDegreeFiveExponent8 20 51 77 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row152 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 103 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 111 133 138,
  tropicalOverlapDegreeFiveExponent8 1 77 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 133 138,
  tropicalOverlapDegreeFiveExponent8 20 51 77 120 138
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 152. -/
theorem tropicalOverlapSourceIExponent8_replay_row152 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row152.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row152.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row152 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 152. -/
theorem tropicalOverlapSourceJExponent8_replay_row152 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row152.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row152.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row152 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row152 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row152.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row152 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row152 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row152 :
    tropicalOverlapRelation8Row152 =
      tropicalOverlapSourceCombination8Row152 := by
  simp [tropicalOverlapRelation8Row152,
    tropicalOverlapSourceCombination8Row152,
    tropicalOverlapProvenance8Row152,
    tropicalOverlapSourceIExponent8Row152,
    tropicalOverlapSourceJExponent8Row152, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 152. -/
theorem tropicalOverlapRelation8_provenance_row152 :
    tropicalOverlapRelation8Row152 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row152 := by
  rw [tropicalOverlapRelation8_sourceCombination_row152]
  unfold tropicalOverlapSourceCombination8Row152
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row152,
    tropicalOverlapSourceJExponent8_replay_row152]

end

end MonochromaticQuantumGraphs.N8D3
