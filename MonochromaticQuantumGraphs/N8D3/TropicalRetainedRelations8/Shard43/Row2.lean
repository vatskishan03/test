import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 217. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 217. -/
def tropicalOverlapProvenance8Row217 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 102, coordinateB := 142, sourceJ := 162, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 217. -/
def tropicalOverlapRelation8Row217 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 108 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 109 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 88 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 88 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 117 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 117 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row217 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 98 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 108 127 142,
  tropicalOverlapDegreeFiveExponent8 6 75 88 139 142,
  tropicalOverlapDegreeFiveExponent8 17 38 88 139 142,
  tropicalOverlapDegreeFiveExponent8 17 48 88 127 142,
  tropicalOverlapDegreeFiveExponent8 26 48 75 117 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row217 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 98 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 109 127 139,
  tropicalOverlapDegreeFiveExponent8 6 75 88 139 142,
  tropicalOverlapDegreeFiveExponent8 17 38 88 139 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 127 139,
  tropicalOverlapDegreeFiveExponent8 26 49 75 117 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 217. -/
theorem tropicalOverlapSourceIExponent8_replay_row217 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row217.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row217.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row217 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 217. -/
theorem tropicalOverlapSourceJExponent8_replay_row217 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row217.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row217.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row217 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row217 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row217.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row217 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row217 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row217 :
    tropicalOverlapRelation8Row217 =
      tropicalOverlapSourceCombination8Row217 := by
  simp [tropicalOverlapRelation8Row217,
    tropicalOverlapSourceCombination8Row217,
    tropicalOverlapProvenance8Row217,
    tropicalOverlapSourceIExponent8Row217,
    tropicalOverlapSourceJExponent8Row217, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 217. -/
theorem tropicalOverlapRelation8_provenance_row217 :
    tropicalOverlapRelation8Row217 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row217 := by
  rw [tropicalOverlapRelation8_sourceCombination_row217]
  unfold tropicalOverlapSourceCombination8Row217
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row217,
    tropicalOverlapSourceJExponent8_replay_row217]

end

end MonochromaticQuantumGraphs.N8D3
