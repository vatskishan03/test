import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 50--54. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 10. -/
def tropicalOverlapProvenance8Shard10 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 16, coordinateB := 7, sourceJ := 17, coordinateA := 1 },
  { epsilon := 1, sourceI := 16, coordinateB := 141, sourceJ := 76, coordinateA := 138 },
  { epsilon := 1, sourceI := 16, coordinateB := 139, sourceJ := 114, coordinateA := 138 },
  { epsilon := 1, sourceI := 16, coordinateB := 142, sourceJ := 174, coordinateA := 138 },
  { epsilon := 1, sourceI := 17, coordinateB := 141, sourceJ := 77, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 10. -/
def tropicalOverlapRelation8Shard10 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 90 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 69 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 122 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard10 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 104 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 114 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 90 138,
    tropicalOverlapDegreeFiveExponent8 7 9 41 90 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 90 126,
    tropicalOverlapDegreeFiveExponent8 7 20 51 69 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 104 138 141,
    tropicalOverlapDegreeFiveExponent8 1 59 114 126 141,
    tropicalOverlapDegreeFiveExponent8 1 69 90 138 141,
    tropicalOverlapDegreeFiveExponent8 9 41 90 138 141,
    tropicalOverlapDegreeFiveExponent8 9 51 90 126 141,
    tropicalOverlapDegreeFiveExponent8 20 51 69 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 104 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 114 126 139,
    tropicalOverlapDegreeFiveExponent8 1 69 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 41 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 90 126 139,
    tropicalOverlapDegreeFiveExponent8 20 51 69 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 104 138 142,
    tropicalOverlapDegreeFiveExponent8 1 59 114 126 142,
    tropicalOverlapDegreeFiveExponent8 1 69 90 138 142,
    tropicalOverlapDegreeFiveExponent8 9 41 90 138 142,
    tropicalOverlapDegreeFiveExponent8 9 51 90 126 142,
    tropicalOverlapDegreeFiveExponent8 20 51 69 122 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 104 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 114 126 141,
    tropicalOverlapDegreeFiveExponent8 7 69 90 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 90 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 90 126 141,
    tropicalOverlapDegreeFiveExponent8 26 51 69 122 141
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard10 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 104 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 114 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 90 138,
    tropicalOverlapDegreeFiveExponent8 1 15 41 90 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 90 126,
    tropicalOverlapDegreeFiveExponent8 1 26 51 69 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 104 138 141,
    tropicalOverlapDegreeFiveExponent8 1 59 115 126 138,
    tropicalOverlapDegreeFiveExponent8 1 69 90 138 141,
    tropicalOverlapDegreeFiveExponent8 9 41 90 138 141,
    tropicalOverlapDegreeFiveExponent8 9 52 90 126 138,
    tropicalOverlapDegreeFiveExponent8 20 52 69 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 104 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 114 127 138,
    tropicalOverlapDegreeFiveExponent8 1 69 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 41 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 90 127 138,
    tropicalOverlapDegreeFiveExponent8 20 51 69 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 104 138 142,
    tropicalOverlapDegreeFiveExponent8 1 59 115 127 138,
    tropicalOverlapDegreeFiveExponent8 1 69 90 138 142,
    tropicalOverlapDegreeFiveExponent8 9 41 90 138 142,
    tropicalOverlapDegreeFiveExponent8 9 52 90 127 138,
    tropicalOverlapDegreeFiveExponent8 20 52 69 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 104 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 115 126 138,
    tropicalOverlapDegreeFiveExponent8 7 69 90 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 90 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 90 126 138,
    tropicalOverlapDegreeFiveExponent8 26 52 69 122 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 10. -/
theorem tropicalOverlapSourceIExponent8_replay_shard10
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard10 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard10 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard10 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 10. -/
theorem tropicalOverlapSourceJExponent8_replay_shard10
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard10 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard10 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard10 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard10
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard10 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard10 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard10 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard10
    (i : Fin 5) :
    tropicalOverlapRelation8Shard10 i =
      tropicalOverlapSourceCombination8Shard10 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard10,
      tropicalOverlapSourceCombination8Shard10,
      tropicalOverlapProvenance8Shard10,
      tropicalOverlapSourceIExponent8Shard10,
      tropicalOverlapSourceJExponent8Shard10, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 10. -/
theorem tropicalOverlapRelation8_provenance_shard10 (i : Fin 5) :
    tropicalOverlapRelation8Shard10 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard10 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard10]
  unfold tropicalOverlapSourceCombination8Shard10
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard10,
    tropicalOverlapSourceJExponent8_replay_shard10]

end

end MonochromaticQuantumGraphs.N8D3
