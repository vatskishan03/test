import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 168. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 168. -/
def tropicalOverlapProvenance8Row168 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 61, coordinateB := 86, sourceJ := 67, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 168. -/
def tropicalOverlapRelation8Row168 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row168 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 86 98 141,
  tropicalOverlapDegreeFiveExponent8 7 64 86 109 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 86 126,
  tropicalOverlapDegreeFiveExponent8 25 52 75 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row168 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 101 141,
  tropicalOverlapDegreeFiveExponent8 7 64 85 112 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 86 126,
  tropicalOverlapDegreeFiveExponent8 25 52 75 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 168. -/
theorem tropicalOverlapSourceIExponent8_replay_row168 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row168.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row168.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row168 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 168. -/
theorem tropicalOverlapSourceJExponent8_replay_row168 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row168.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row168.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row168 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row168 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row168.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row168 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row168 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row168 :
    tropicalOverlapRelation8Row168 =
      tropicalOverlapSourceCombination8Row168 := by
  simp [tropicalOverlapRelation8Row168,
    tropicalOverlapSourceCombination8Row168,
    tropicalOverlapProvenance8Row168,
    tropicalOverlapSourceIExponent8Row168,
    tropicalOverlapSourceJExponent8Row168, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 168. -/
theorem tropicalOverlapRelation8_provenance_row168 :
    tropicalOverlapRelation8Row168 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row168 := by
  rw [tropicalOverlapRelation8_sourceCombination_row168]
  unfold tropicalOverlapSourceCombination8Row168
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row168,
    tropicalOverlapSourceJExponent8_replay_row168]

end

end MonochromaticQuantumGraphs.N8D3
