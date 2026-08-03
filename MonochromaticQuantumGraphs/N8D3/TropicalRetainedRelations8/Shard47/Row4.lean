import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 239. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 239. -/
def tropicalOverlapProvenance8Row239 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 112, coordinateB := 142, sourceJ := 172, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 239. -/
def tropicalOverlapRelation8Row239 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 69 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row239 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 104 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 114 127 142,
  tropicalOverlapDegreeFiveExponent8 0 69 90 139 142,
  tropicalOverlapDegreeFiveExponent8 9 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 9 48 90 127 142,
  tropicalOverlapDegreeFiveExponent8 20 48 69 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row239 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 104 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 115 127 139,
  tropicalOverlapDegreeFiveExponent8 0 69 90 139 142,
  tropicalOverlapDegreeFiveExponent8 9 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 9 49 90 127 139,
  tropicalOverlapDegreeFiveExponent8 20 49 69 123 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 239. -/
theorem tropicalOverlapSourceIExponent8_replay_row239 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row239.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row239.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row239 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 239. -/
theorem tropicalOverlapSourceJExponent8_replay_row239 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row239.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row239.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row239 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row239 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row239.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row239 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row239 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row239 :
    tropicalOverlapRelation8Row239 =
      tropicalOverlapSourceCombination8Row239 := by
  simp [tropicalOverlapRelation8Row239,
    tropicalOverlapSourceCombination8Row239,
    tropicalOverlapProvenance8Row239,
    tropicalOverlapSourceIExponent8Row239,
    tropicalOverlapSourceJExponent8Row239, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 239. -/
theorem tropicalOverlapRelation8_provenance_row239 :
    tropicalOverlapRelation8Row239 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row239 := by
  rw [tropicalOverlapRelation8_sourceCombination_row239]
  unfold tropicalOverlapSourceCombination8Row239
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row239,
    tropicalOverlapSourceJExponent8_replay_row239]

end

end MonochromaticQuantumGraphs.N8D3
