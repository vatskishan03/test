import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 327. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 327. -/
def tropicalOverlapProvenance8Row327 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 170, coordinateB := 90, sourceJ := 178, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 327. -/
def tropicalOverlapRelation8Row327 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 101 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 112 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row327 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 90 101 142,
  tropicalOverlapDegreeFiveExponent8 1 65 90 112 127,
  tropicalOverlapDegreeFiveExponent8 1 75 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 41 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 52 75 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row327 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 89 104 142,
  tropicalOverlapDegreeFiveExponent8 1 65 89 115 127,
  tropicalOverlapDegreeFiveExponent8 1 75 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 41 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 52 75 89 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 327. -/
theorem tropicalOverlapSourceIExponent8_replay_row327 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row327.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row327.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row327 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 327. -/
theorem tropicalOverlapSourceJExponent8_replay_row327 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row327.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row327.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row327 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row327 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row327.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row327 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row327 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row327 :
    tropicalOverlapRelation8Row327 =
      tropicalOverlapSourceCombination8Row327 := by
  simp [tropicalOverlapRelation8Row327,
    tropicalOverlapSourceCombination8Row327,
    tropicalOverlapProvenance8Row327,
    tropicalOverlapSourceIExponent8Row327,
    tropicalOverlapSourceJExponent8Row327, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 327. -/
theorem tropicalOverlapRelation8_provenance_row327 :
    tropicalOverlapRelation8Row327 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row327 := by
  rw [tropicalOverlapRelation8_sourceCombination_row327]
  unfold tropicalOverlapSourceCombination8Row327
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row327,
    tropicalOverlapSourceJExponent8_replay_row327]

end

end MonochromaticQuantumGraphs.N8D3
