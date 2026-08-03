import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 312. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 312. -/
def tropicalOverlapProvenance8Row312 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 161, coordinateB := 90, sourceJ := 175, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 312. -/
def tropicalOverlapRelation8Row312 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row312 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 90 98 142,
  tropicalOverlapDegreeFiveExponent8 7 59 90 109 127,
  tropicalOverlapDegreeFiveExponent8 7 69 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 41 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 52 69 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row312 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 104 142,
  tropicalOverlapDegreeFiveExponent8 7 59 88 115 127,
  tropicalOverlapDegreeFiveExponent8 7 69 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 41 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 52 69 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 312. -/
theorem tropicalOverlapSourceIExponent8_replay_row312 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row312.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row312.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row312 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 312. -/
theorem tropicalOverlapSourceJExponent8_replay_row312 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row312.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row312.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row312 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row312 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row312.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row312 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row312 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row312 :
    tropicalOverlapRelation8Row312 =
      tropicalOverlapSourceCombination8Row312 := by
  simp [tropicalOverlapRelation8Row312,
    tropicalOverlapSourceCombination8Row312,
    tropicalOverlapProvenance8Row312,
    tropicalOverlapSourceIExponent8Row312,
    tropicalOverlapSourceJExponent8Row312, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 312. -/
theorem tropicalOverlapRelation8_provenance_row312 :
    tropicalOverlapRelation8Row312 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row312 := by
  rw [tropicalOverlapRelation8_sourceCombination_row312]
  unfold tropicalOverlapSourceCombination8Row312
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row312,
    tropicalOverlapSourceJExponent8_replay_row312]

end

end MonochromaticQuantumGraphs.N8D3
