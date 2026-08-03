import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 240. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 240. -/
def tropicalOverlapProvenance8Row240 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 113, coordinateB := 142, sourceJ := 173, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 240. -/
def tropicalOverlapRelation8Row240 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row240 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 104 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 114 127 142,
  tropicalOverlapDegreeFiveExponent8 6 69 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 48 90 127 142,
  tropicalOverlapDegreeFiveExponent8 26 48 69 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row240 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 104 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 115 127 139,
  tropicalOverlapDegreeFiveExponent8 6 69 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 49 90 127 139,
  tropicalOverlapDegreeFiveExponent8 26 49 69 123 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 240. -/
theorem tropicalOverlapSourceIExponent8_replay_row240 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row240.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row240.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row240 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 240. -/
theorem tropicalOverlapSourceJExponent8_replay_row240 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row240.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row240.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row240 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row240 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row240.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row240 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row240 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row240 :
    tropicalOverlapRelation8Row240 =
      tropicalOverlapSourceCombination8Row240 := by
  simp [tropicalOverlapRelation8Row240,
    tropicalOverlapSourceCombination8Row240,
    tropicalOverlapProvenance8Row240,
    tropicalOverlapSourceIExponent8Row240,
    tropicalOverlapSourceJExponent8Row240, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 240. -/
theorem tropicalOverlapRelation8_provenance_row240 :
    tropicalOverlapRelation8Row240 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row240 := by
  rw [tropicalOverlapRelation8_sourceCombination_row240]
  unfold tropicalOverlapSourceCombination8Row240
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row240,
    tropicalOverlapSourceJExponent8_replay_row240]

end

end MonochromaticQuantumGraphs.N8D3
