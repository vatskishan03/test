import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 70--74. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 14. -/
def tropicalOverlapProvenance8Shard14 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 21, coordinateB := 141, sourceJ := 81, coordinateA := 138 },
  { epsilon := 1, sourceI := 21, coordinateB := 88, sourceJ := 23, coordinateA := 85 },
  { epsilon := -1, sourceI := 21, coordinateB := 86, sourceJ := 27, coordinateA := 85 },
  { epsilon := 1, sourceI := 21, coordinateB := 89, sourceJ := 31, coordinateA := 85 },
  { epsilon := -1, sourceI := 21, coordinateB := 87, sourceJ := 35, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 14. -/
def tropicalOverlapRelation8Shard14 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 108 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 109 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 85 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 85 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 116 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 85 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 86 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 85 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 114 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 87 116) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard14 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 99 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 108 129 141,
    tropicalOverlapDegreeFiveExponent8 7 76 85 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 85 129 141,
    tropicalOverlapDegreeFiveExponent8 25 51 76 116 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 88 99 138,
    tropicalOverlapDegreeFiveExponent8 7 64 88 108 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 88 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 88 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 88 129,
    tropicalOverlapDegreeFiveExponent8 25 51 76 88 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 86 99 138,
    tropicalOverlapDegreeFiveExponent8 7 64 86 108 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 86 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 86 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 86 129,
    tropicalOverlapDegreeFiveExponent8 25 51 76 86 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 89 99 138,
    tropicalOverlapDegreeFiveExponent8 7 64 89 108 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 89 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 89 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 89 129,
    tropicalOverlapDegreeFiveExponent8 25 51 76 89 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 87 99 138,
    tropicalOverlapDegreeFiveExponent8 7 64 87 108 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 87 129,
    tropicalOverlapDegreeFiveExponent8 25 51 76 87 116
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard14 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 99 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 109 129 138,
    tropicalOverlapDegreeFiveExponent8 7 76 85 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 129 138,
    tropicalOverlapDegreeFiveExponent8 25 52 76 116 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 99 138,
    tropicalOverlapDegreeFiveExponent8 7 65 85 108 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 88 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 88 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 88 129,
    tropicalOverlapDegreeFiveExponent8 26 51 76 85 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 85 102 138,
    tropicalOverlapDegreeFiveExponent8 7 64 85 111 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 86 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 86 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 86 129,
    tropicalOverlapDegreeFiveExponent8 25 51 76 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 102 138,
    tropicalOverlapDegreeFiveExponent8 7 65 85 111 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 89 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 89 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 89 129,
    tropicalOverlapDegreeFiveExponent8 26 51 76 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 85 105 138,
    tropicalOverlapDegreeFiveExponent8 7 64 85 114 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 87 129,
    tropicalOverlapDegreeFiveExponent8 25 51 76 85 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 14. -/
theorem tropicalOverlapSourceIExponent8_replay_shard14
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard14 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard14 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard14 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 14. -/
theorem tropicalOverlapSourceJExponent8_replay_shard14
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard14 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard14 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard14 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard14
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard14 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard14 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard14 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard14
    (i : Fin 5) :
    tropicalOverlapRelation8Shard14 i =
      tropicalOverlapSourceCombination8Shard14 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard14,
      tropicalOverlapSourceCombination8Shard14,
      tropicalOverlapProvenance8Shard14,
      tropicalOverlapSourceIExponent8Shard14,
      tropicalOverlapSourceJExponent8Shard14, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 14. -/
theorem tropicalOverlapRelation8_provenance_shard14 (i : Fin 5) :
    tropicalOverlapRelation8Shard14 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard14 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard14]
  unfold tropicalOverlapSourceCombination8Shard14
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard14,
    tropicalOverlapSourceJExponent8_replay_shard14]

end

end MonochromaticQuantumGraphs.N8D3
