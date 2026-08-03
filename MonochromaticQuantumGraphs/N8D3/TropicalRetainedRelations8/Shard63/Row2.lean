import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 317. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 317. -/
def tropicalOverlapProvenance8Row317 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 163, coordinateB := 90, sourceJ := 179, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 317. -/
def tropicalOverlapRelation8Row317 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row317 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 90 98 142,
  tropicalOverlapDegreeFiveExponent8 7 65 90 109 127,
  tropicalOverlapDegreeFiveExponent8 7 75 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 41 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 52 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 52 75 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row317 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 104 142,
  tropicalOverlapDegreeFiveExponent8 7 65 88 115 127,
  tropicalOverlapDegreeFiveExponent8 7 75 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 41 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 52 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 52 75 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 317. -/
theorem tropicalOverlapSourceIExponent8_replay_row317 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row317.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row317.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row317 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 317. -/
theorem tropicalOverlapSourceJExponent8_replay_row317 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row317.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row317.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row317 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row317 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row317.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row317 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row317 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row317 :
    tropicalOverlapRelation8Row317 =
      tropicalOverlapSourceCombination8Row317 := by
  simp [tropicalOverlapRelation8Row317,
    tropicalOverlapSourceCombination8Row317,
    tropicalOverlapProvenance8Row317,
    tropicalOverlapSourceIExponent8Row317,
    tropicalOverlapSourceJExponent8Row317, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 317. -/
theorem tropicalOverlapRelation8_provenance_row317 :
    tropicalOverlapRelation8Row317 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row317 := by
  rw [tropicalOverlapRelation8_sourceCombination_row317]
  unfold tropicalOverlapSourceCombination8Row317
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row317,
    tropicalOverlapSourceJExponent8_replay_row317]

end

end MonochromaticQuantumGraphs.N8D3
