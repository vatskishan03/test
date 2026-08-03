import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 174. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 174. -/
def tropicalOverlapProvenance8Row174 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 64, coordinateB := 87, sourceJ := 72, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 174. -/
def tropicalOverlapRelation8Row174 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 115 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row174 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 87 101 141,
  tropicalOverlapDegreeFiveExponent8 1 58 87 112 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 52 69 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row174 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 86 104 141,
  tropicalOverlapDegreeFiveExponent8 1 58 86 115 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 52 69 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 174. -/
theorem tropicalOverlapSourceIExponent8_replay_row174 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row174.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row174.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row174 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 174. -/
theorem tropicalOverlapSourceJExponent8_replay_row174 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row174.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row174.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row174 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row174 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row174.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row174 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row174 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row174 :
    tropicalOverlapRelation8Row174 =
      tropicalOverlapSourceCombination8Row174 := by
  simp [tropicalOverlapRelation8Row174,
    tropicalOverlapSourceCombination8Row174,
    tropicalOverlapProvenance8Row174,
    tropicalOverlapSourceIExponent8Row174,
    tropicalOverlapSourceJExponent8Row174, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 174. -/
theorem tropicalOverlapRelation8_provenance_row174 :
    tropicalOverlapRelation8Row174 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row174 := by
  rw [tropicalOverlapRelation8_sourceCombination_row174]
  unfold tropicalOverlapSourceCombination8Row174
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row174,
    tropicalOverlapSourceJExponent8_replay_row174]

end

end MonochromaticQuantumGraphs.N8D3
