import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 270. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 270. -/
def tropicalOverlapProvenance8Row270 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 129, coordinateB := 142, sourceJ := 189, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 270. -/
def tropicalOverlapRelation8Row270 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row270 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 102 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 111 130 142,
  tropicalOverlapDegreeFiveExponent8 6 76 89 139 142,
  tropicalOverlapDegreeFiveExponent8 17 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 17 48 89 130 142,
  tropicalOverlapDegreeFiveExponent8 26 48 76 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row270 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 102 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 112 130 139,
  tropicalOverlapDegreeFiveExponent8 6 76 89 139 142,
  tropicalOverlapDegreeFiveExponent8 17 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 17 49 89 130 139,
  tropicalOverlapDegreeFiveExponent8 26 49 76 120 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 270. -/
theorem tropicalOverlapSourceIExponent8_replay_row270 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row270.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row270.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row270 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 270. -/
theorem tropicalOverlapSourceJExponent8_replay_row270 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row270.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row270.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row270 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row270 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row270.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row270 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row270 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row270 :
    tropicalOverlapRelation8Row270 =
      tropicalOverlapSourceCombination8Row270 := by
  simp [tropicalOverlapRelation8Row270,
    tropicalOverlapSourceCombination8Row270,
    tropicalOverlapProvenance8Row270,
    tropicalOverlapSourceIExponent8Row270,
    tropicalOverlapSourceJExponent8Row270, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 270. -/
theorem tropicalOverlapRelation8_provenance_row270 :
    tropicalOverlapRelation8Row270 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row270 := by
  rw [tropicalOverlapRelation8_sourceCombination_row270]
  unfold tropicalOverlapSourceCombination8Row270
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row270,
    tropicalOverlapSourceJExponent8_replay_row270]

end

end MonochromaticQuantumGraphs.N8D3
