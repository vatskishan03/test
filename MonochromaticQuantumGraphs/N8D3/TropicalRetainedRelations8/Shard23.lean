import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 115--119. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 23. -/
def tropicalOverlapProvenance8Shard23 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 36, coordinateB := 141, sourceJ := 96, coordinateA := 138 },
  { epsilon := 1, sourceI := 36, coordinateB := 139, sourceJ := 134, coordinateA := 138 },
  { epsilon := 1, sourceI := 36, coordinateB := 142, sourceJ := 194, coordinateA := 138 },
  { epsilon := 1, sourceI := 37, coordinateB := 141, sourceJ := 97, coordinateA := 138 },
  { epsilon := 1, sourceI := 37, coordinateB := 139, sourceJ := 135, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 23. -/
def tropicalOverlapRelation8Shard23 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 123 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard23 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 105 138 141,
    tropicalOverlapDegreeFiveExponent8 1 59 114 129 141,
    tropicalOverlapDegreeFiveExponent8 1 70 90 138 141,
    tropicalOverlapDegreeFiveExponent8 9 42 90 138 141,
    tropicalOverlapDegreeFiveExponent8 9 51 90 129 141,
    tropicalOverlapDegreeFiveExponent8 20 51 70 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 105 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 114 129 139,
    tropicalOverlapDegreeFiveExponent8 1 70 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 42 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 90 129 139,
    tropicalOverlapDegreeFiveExponent8 20 51 70 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 105 138 142,
    tropicalOverlapDegreeFiveExponent8 1 59 114 129 142,
    tropicalOverlapDegreeFiveExponent8 1 70 90 138 142,
    tropicalOverlapDegreeFiveExponent8 9 42 90 138 142,
    tropicalOverlapDegreeFiveExponent8 9 51 90 129 142,
    tropicalOverlapDegreeFiveExponent8 20 51 70 122 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 105 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 114 129 141,
    tropicalOverlapDegreeFiveExponent8 7 70 90 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 90 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 90 129 141,
    tropicalOverlapDegreeFiveExponent8 26 51 70 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 105 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 114 129 139,
    tropicalOverlapDegreeFiveExponent8 7 70 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 42 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 90 129 139,
    tropicalOverlapDegreeFiveExponent8 26 51 70 122 139
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard23 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 105 138 141,
    tropicalOverlapDegreeFiveExponent8 1 59 115 129 138,
    tropicalOverlapDegreeFiveExponent8 1 70 90 138 141,
    tropicalOverlapDegreeFiveExponent8 9 42 90 138 141,
    tropicalOverlapDegreeFiveExponent8 9 52 90 129 138,
    tropicalOverlapDegreeFiveExponent8 20 52 70 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 105 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 114 130 138,
    tropicalOverlapDegreeFiveExponent8 1 70 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 42 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 90 130 138,
    tropicalOverlapDegreeFiveExponent8 20 51 70 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 105 138 142,
    tropicalOverlapDegreeFiveExponent8 1 59 115 130 138,
    tropicalOverlapDegreeFiveExponent8 1 70 90 138 142,
    tropicalOverlapDegreeFiveExponent8 9 42 90 138 142,
    tropicalOverlapDegreeFiveExponent8 9 52 90 130 138,
    tropicalOverlapDegreeFiveExponent8 20 52 70 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 105 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 115 129 138,
    tropicalOverlapDegreeFiveExponent8 7 70 90 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 90 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 90 129 138,
    tropicalOverlapDegreeFiveExponent8 26 52 70 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 105 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 114 130 138,
    tropicalOverlapDegreeFiveExponent8 7 70 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 42 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 90 130 138,
    tropicalOverlapDegreeFiveExponent8 26 51 70 123 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 23. -/
theorem tropicalOverlapSourceIExponent8_replay_shard23
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard23 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard23 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard23 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 23. -/
theorem tropicalOverlapSourceJExponent8_replay_shard23
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard23 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard23 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard23 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard23
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard23 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard23 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard23 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard23
    (i : Fin 5) :
    tropicalOverlapRelation8Shard23 i =
      tropicalOverlapSourceCombination8Shard23 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard23,
      tropicalOverlapSourceCombination8Shard23,
      tropicalOverlapProvenance8Shard23,
      tropicalOverlapSourceIExponent8Shard23,
      tropicalOverlapSourceJExponent8Shard23, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 23. -/
theorem tropicalOverlapRelation8_provenance_shard23 (i : Fin 5) :
    tropicalOverlapRelation8Shard23 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard23 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard23]
  unfold tropicalOverlapSourceCombination8Shard23
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard23,
    tropicalOverlapSourceJExponent8_replay_shard23]

end

end MonochromaticQuantumGraphs.N8D3
