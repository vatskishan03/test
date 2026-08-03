import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 80--84. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 16. -/
def tropicalOverlapProvenance8Shard16 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 23, coordinateB := 139, sourceJ := 123, coordinateA := 138 },
  { epsilon := 1, sourceI := 23, coordinateB := 142, sourceJ := 183, coordinateA := 138 },
  { epsilon := -1, sourceI := 24, coordinateB := 7, sourceJ := 25, coordinateA := 1 },
  { epsilon := 1, sourceI := 24, coordinateB := 141, sourceJ := 84, coordinateA := 138 },
  { epsilon := 1, sourceI := 24, coordinateB := 89, sourceJ := 28, coordinateA := 86 }
]

/-- The five explicit sparse target polynomials in overlap shard 16. -/
def tropicalOverlapRelation8Shard16 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 117 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 116 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 117 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 86 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 70 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 86 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 86 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 86 119) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard16 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 99 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 108 129 139,
    tropicalOverlapDegreeFiveExponent8 7 76 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 42 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 129 139,
    tropicalOverlapDegreeFiveExponent8 26 51 76 116 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 99 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 108 129 142,
    tropicalOverlapDegreeFiveExponent8 7 76 88 138 142,
    tropicalOverlapDegreeFiveExponent8 17 42 88 138 142,
    tropicalOverlapDegreeFiveExponent8 17 51 88 129 142,
    tropicalOverlapDegreeFiveExponent8 26 51 76 116 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 102 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 111 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 86 138,
    tropicalOverlapDegreeFiveExponent8 7 9 42 86 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 86 129,
    tropicalOverlapDegreeFiveExponent8 7 19 51 70 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 102 138 141,
    tropicalOverlapDegreeFiveExponent8 1 58 111 129 141,
    tropicalOverlapDegreeFiveExponent8 1 70 86 138 141,
    tropicalOverlapDegreeFiveExponent8 9 42 86 138 141,
    tropicalOverlapDegreeFiveExponent8 9 51 86 129 141,
    tropicalOverlapDegreeFiveExponent8 19 51 70 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 89 102 138,
    tropicalOverlapDegreeFiveExponent8 1 58 89 111 129,
    tropicalOverlapDegreeFiveExponent8 1 70 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 42 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 89 129,
    tropicalOverlapDegreeFiveExponent8 19 51 70 89 119
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard16 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 99 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 108 130 138,
    tropicalOverlapDegreeFiveExponent8 7 76 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 42 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 130 138,
    tropicalOverlapDegreeFiveExponent8 26 51 76 117 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 99 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 109 130 138,
    tropicalOverlapDegreeFiveExponent8 7 76 88 138 142,
    tropicalOverlapDegreeFiveExponent8 17 42 88 138 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 130 138,
    tropicalOverlapDegreeFiveExponent8 26 52 76 117 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 102 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 111 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 86 138,
    tropicalOverlapDegreeFiveExponent8 1 15 42 86 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 86 129,
    tropicalOverlapDegreeFiveExponent8 1 25 51 70 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 102 138 141,
    tropicalOverlapDegreeFiveExponent8 1 58 112 129 138,
    tropicalOverlapDegreeFiveExponent8 1 70 86 138 141,
    tropicalOverlapDegreeFiveExponent8 9 42 86 138 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 129 138,
    tropicalOverlapDegreeFiveExponent8 19 52 70 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 102 138,
    tropicalOverlapDegreeFiveExponent8 1 59 86 111 129,
    tropicalOverlapDegreeFiveExponent8 1 70 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 42 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 89 129,
    tropicalOverlapDegreeFiveExponent8 20 51 70 86 119
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 16. -/
theorem tropicalOverlapSourceIExponent8_replay_shard16
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard16 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard16 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard16 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 16. -/
theorem tropicalOverlapSourceJExponent8_replay_shard16
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard16 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard16 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard16 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard16
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard16 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard16 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard16 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard16
    (i : Fin 5) :
    tropicalOverlapRelation8Shard16 i =
      tropicalOverlapSourceCombination8Shard16 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard16,
      tropicalOverlapSourceCombination8Shard16,
      tropicalOverlapProvenance8Shard16,
      tropicalOverlapSourceIExponent8Shard16,
      tropicalOverlapSourceJExponent8Shard16, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 16. -/
theorem tropicalOverlapRelation8_provenance_shard16 (i : Fin 5) :
    tropicalOverlapRelation8Shard16 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard16 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard16]
  unfold tropicalOverlapSourceCombination8Shard16
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard16,
    tropicalOverlapSourceJExponent8_replay_shard16]

end

end MonochromaticQuantumGraphs.N8D3
