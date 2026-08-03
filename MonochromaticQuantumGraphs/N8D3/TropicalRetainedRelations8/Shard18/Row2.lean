import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 92. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 92. -/
def tropicalOverlapProvenance8Row92 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 26, coordinateB := 90, sourceJ := 38, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 92. -/
def tropicalOverlapRelation8Row92 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row92 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 90 102 138,
  tropicalOverlapDegreeFiveExponent8 1 64 90 111 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 42 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 90 129,
  tropicalOverlapDegreeFiveExponent8 19 51 76 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row92 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 105 138,
  tropicalOverlapDegreeFiveExponent8 1 65 86 114 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 42 86 90 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 90 129,
  tropicalOverlapDegreeFiveExponent8 20 51 76 86 122
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 92. -/
theorem tropicalOverlapSourceIExponent8_replay_row92 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row92.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row92.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row92 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 92. -/
theorem tropicalOverlapSourceJExponent8_replay_row92 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row92.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row92.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row92 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row92 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row92.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row92 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row92 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row92 :
    tropicalOverlapRelation8Row92 =
      tropicalOverlapSourceCombination8Row92 := by
  simp [tropicalOverlapRelation8Row92,
    tropicalOverlapSourceCombination8Row92,
    tropicalOverlapProvenance8Row92,
    tropicalOverlapSourceIExponent8Row92,
    tropicalOverlapSourceJExponent8Row92, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 92. -/
theorem tropicalOverlapRelation8_provenance_row92 :
    tropicalOverlapRelation8Row92 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row92 := by
  rw [tropicalOverlapRelation8_sourceCombination_row92]
  unfold tropicalOverlapSourceCombination8Row92
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row92,
    tropicalOverlapSourceJExponent8_replay_row92]

end

end MonochromaticQuantumGraphs.N8D3
