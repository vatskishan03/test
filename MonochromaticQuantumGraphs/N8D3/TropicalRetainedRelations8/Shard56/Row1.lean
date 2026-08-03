import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 281. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 281. -/
def tropicalOverlapProvenance8Row281 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 137, coordinateB := 142, sourceJ := 197, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 281. -/
def tropicalOverlapRelation8Row281 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 114 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 115 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 90 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 90 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row281 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 105 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 114 130 142,
  tropicalOverlapDegreeFiveExponent8 6 76 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 48 90 130 142,
  tropicalOverlapDegreeFiveExponent8 26 48 76 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row281 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 105 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 115 130 139,
  tropicalOverlapDegreeFiveExponent8 6 76 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 49 90 130 139,
  tropicalOverlapDegreeFiveExponent8 26 49 76 123 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 281. -/
theorem tropicalOverlapSourceIExponent8_replay_row281 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row281.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row281.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row281 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 281. -/
theorem tropicalOverlapSourceJExponent8_replay_row281 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row281.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row281.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row281 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row281 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row281.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row281 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row281 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row281 :
    tropicalOverlapRelation8Row281 =
      tropicalOverlapSourceCombination8Row281 := by
  simp [tropicalOverlapRelation8Row281,
    tropicalOverlapSourceCombination8Row281,
    tropicalOverlapProvenance8Row281,
    tropicalOverlapSourceIExponent8Row281,
    tropicalOverlapSourceJExponent8Row281, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 281. -/
theorem tropicalOverlapRelation8_provenance_row281 :
    tropicalOverlapRelation8Row281 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row281 := by
  rw [tropicalOverlapRelation8_sourceCombination_row281]
  unfold tropicalOverlapSourceCombination8Row281
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row281,
    tropicalOverlapSourceJExponent8_replay_row281]

end

end MonochromaticQuantumGraphs.N8D3
