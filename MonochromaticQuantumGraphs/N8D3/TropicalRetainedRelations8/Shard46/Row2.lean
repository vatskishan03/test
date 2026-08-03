import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 232. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 232. -/
def tropicalOverlapProvenance8Row232 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 108, coordinateB := 142, sourceJ := 168, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 232. -/
def tropicalOverlapRelation8Row232 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row232 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 101 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 111 127 142,
  tropicalOverlapDegreeFiveExponent8 0 75 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 48 89 127 142,
  tropicalOverlapDegreeFiveExponent8 20 48 75 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row232 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 101 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 112 127 139,
  tropicalOverlapDegreeFiveExponent8 0 75 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 49 89 127 139,
  tropicalOverlapDegreeFiveExponent8 20 49 75 120 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 232. -/
theorem tropicalOverlapSourceIExponent8_replay_row232 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row232.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row232.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row232 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 232. -/
theorem tropicalOverlapSourceJExponent8_replay_row232 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row232.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row232.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row232 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row232 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row232.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row232 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row232 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row232 :
    tropicalOverlapRelation8Row232 =
      tropicalOverlapSourceCombination8Row232 := by
  simp [tropicalOverlapRelation8Row232,
    tropicalOverlapSourceCombination8Row232,
    tropicalOverlapProvenance8Row232,
    tropicalOverlapSourceIExponent8Row232,
    tropicalOverlapSourceJExponent8Row232, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 232. -/
theorem tropicalOverlapRelation8_provenance_row232 :
    tropicalOverlapRelation8Row232 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row232 := by
  rw [tropicalOverlapRelation8_sourceCombination_row232]
  unfold tropicalOverlapSourceCombination8Row232
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row232,
    tropicalOverlapSourceJExponent8_replay_row232]

end

end MonochromaticQuantumGraphs.N8D3
