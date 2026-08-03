import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 105--109. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 21. -/
def tropicalOverlapProvenance8Shard21 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 31, coordinateB := 141, sourceJ := 91, coordinateA := 138 },
  { epsilon := 1, sourceI := 31, coordinateB := 139, sourceJ := 131, coordinateA := 138 },
  { epsilon := 1, sourceI := 31, coordinateB := 142, sourceJ := 191, coordinateA := 138 },
  { epsilon := -1, sourceI := 32, coordinateB := 7, sourceJ := 33, coordinateA := 1 },
  { epsilon := 1, sourceI := 32, coordinateB := 141, sourceJ := 92, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 21. -/
def tropicalOverlapRelation8Shard21 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 70 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 70 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 122 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard21 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 102 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 111 129 141,
    tropicalOverlapDegreeFiveExponent8 7 76 89 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 89 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 89 129 141,
    tropicalOverlapDegreeFiveExponent8 26 51 76 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 102 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 111 129 139,
    tropicalOverlapDegreeFiveExponent8 7 76 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 42 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 89 129 139,
    tropicalOverlapDegreeFiveExponent8 26 51 76 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 102 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 111 129 142,
    tropicalOverlapDegreeFiveExponent8 7 76 89 138 142,
    tropicalOverlapDegreeFiveExponent8 17 42 89 138 142,
    tropicalOverlapDegreeFiveExponent8 17 51 89 129 142,
    tropicalOverlapDegreeFiveExponent8 26 51 76 119 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 105 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 114 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 87 138,
    tropicalOverlapDegreeFiveExponent8 7 9 42 87 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 87 129,
    tropicalOverlapDegreeFiveExponent8 7 19 51 70 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 105 138 141,
    tropicalOverlapDegreeFiveExponent8 1 58 114 129 141,
    tropicalOverlapDegreeFiveExponent8 1 70 87 138 141,
    tropicalOverlapDegreeFiveExponent8 9 42 87 138 141,
    tropicalOverlapDegreeFiveExponent8 9 51 87 129 141,
    tropicalOverlapDegreeFiveExponent8 19 51 70 122 141
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard21 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 102 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 112 129 138,
    tropicalOverlapDegreeFiveExponent8 7 76 89 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 89 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 89 129 138,
    tropicalOverlapDegreeFiveExponent8 26 52 76 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 102 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 111 130 138,
    tropicalOverlapDegreeFiveExponent8 7 76 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 42 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 89 130 138,
    tropicalOverlapDegreeFiveExponent8 26 51 76 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 102 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 112 130 138,
    tropicalOverlapDegreeFiveExponent8 7 76 89 138 142,
    tropicalOverlapDegreeFiveExponent8 17 42 89 138 142,
    tropicalOverlapDegreeFiveExponent8 17 52 89 130 138,
    tropicalOverlapDegreeFiveExponent8 26 52 76 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 105 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 114 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 87 138,
    tropicalOverlapDegreeFiveExponent8 1 15 42 87 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 87 129,
    tropicalOverlapDegreeFiveExponent8 1 25 51 70 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 105 138 141,
    tropicalOverlapDegreeFiveExponent8 1 58 115 129 138,
    tropicalOverlapDegreeFiveExponent8 1 70 87 138 141,
    tropicalOverlapDegreeFiveExponent8 9 42 87 138 141,
    tropicalOverlapDegreeFiveExponent8 9 52 87 129 138,
    tropicalOverlapDegreeFiveExponent8 19 52 70 122 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 21. -/
theorem tropicalOverlapSourceIExponent8_replay_shard21
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard21 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard21 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard21 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 21. -/
theorem tropicalOverlapSourceJExponent8_replay_shard21
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard21 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard21 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard21 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard21
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard21 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard21 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard21 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard21
    (i : Fin 5) :
    tropicalOverlapRelation8Shard21 i =
      tropicalOverlapSourceCombination8Shard21 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard21,
      tropicalOverlapSourceCombination8Shard21,
      tropicalOverlapProvenance8Shard21,
      tropicalOverlapSourceIExponent8Shard21,
      tropicalOverlapSourceJExponent8Shard21, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 21. -/
theorem tropicalOverlapRelation8_provenance_shard21 (i : Fin 5) :
    tropicalOverlapRelation8Shard21 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard21 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard21]
  unfold tropicalOverlapSourceCombination8Shard21
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard21,
    tropicalOverlapSourceJExponent8_replay_shard21]

end

end MonochromaticQuantumGraphs.N8D3
