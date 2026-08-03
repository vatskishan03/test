import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 75--79. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 15. -/
def tropicalOverlapProvenance8Shard15 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 21, coordinateB := 90, sourceJ := 39, coordinateA := 85 },
  { epsilon := 1, sourceI := 22, coordinateB := 141, sourceJ := 82, coordinateA := 138 },
  { epsilon := 1, sourceI := 22, coordinateB := 139, sourceJ := 121, coordinateA := 138 },
  { epsilon := 1, sourceI := 22, coordinateB := 142, sourceJ := 181, coordinateA := 138 },
  { epsilon := 1, sourceI := 23, coordinateB := 141, sourceJ := 83, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 15. -/
def tropicalOverlapRelation8Shard15 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 85 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 116 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 117 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 117 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 116 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard15 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 90 99 138,
    tropicalOverlapDegreeFiveExponent8 7 64 90 108 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 90 129,
    tropicalOverlapDegreeFiveExponent8 25 51 76 90 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 99 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 108 129 141,
    tropicalOverlapDegreeFiveExponent8 7 70 88 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 88 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 88 129 141,
    tropicalOverlapDegreeFiveExponent8 26 51 70 116 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 99 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 108 129 139,
    tropicalOverlapDegreeFiveExponent8 7 70 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 42 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 129 139,
    tropicalOverlapDegreeFiveExponent8 26 51 70 116 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 99 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 108 129 142,
    tropicalOverlapDegreeFiveExponent8 7 70 88 138 142,
    tropicalOverlapDegreeFiveExponent8 15 42 88 138 142,
    tropicalOverlapDegreeFiveExponent8 15 51 88 129 142,
    tropicalOverlapDegreeFiveExponent8 26 51 70 116 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 99 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 108 129 141,
    tropicalOverlapDegreeFiveExponent8 7 76 88 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 88 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 88 129 141,
    tropicalOverlapDegreeFiveExponent8 26 51 76 116 141
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard15 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 105 138,
    tropicalOverlapDegreeFiveExponent8 7 65 85 114 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 42 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 90 129,
    tropicalOverlapDegreeFiveExponent8 26 51 76 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 99 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 109 129 138,
    tropicalOverlapDegreeFiveExponent8 7 70 88 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 88 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 88 129 138,
    tropicalOverlapDegreeFiveExponent8 26 52 70 116 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 99 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 108 130 138,
    tropicalOverlapDegreeFiveExponent8 7 70 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 42 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 130 138,
    tropicalOverlapDegreeFiveExponent8 26 51 70 117 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 99 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 109 130 138,
    tropicalOverlapDegreeFiveExponent8 7 70 88 138 142,
    tropicalOverlapDegreeFiveExponent8 15 42 88 138 142,
    tropicalOverlapDegreeFiveExponent8 15 52 88 130 138,
    tropicalOverlapDegreeFiveExponent8 26 52 70 117 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 99 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 109 129 138,
    tropicalOverlapDegreeFiveExponent8 7 76 88 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 88 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 88 129 138,
    tropicalOverlapDegreeFiveExponent8 26 52 76 116 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 15. -/
theorem tropicalOverlapSourceIExponent8_replay_shard15
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard15 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard15 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard15 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 15. -/
theorem tropicalOverlapSourceJExponent8_replay_shard15
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard15 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard15 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard15 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard15
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard15 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard15 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard15 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard15
    (i : Fin 5) :
    tropicalOverlapRelation8Shard15 i =
      tropicalOverlapSourceCombination8Shard15 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard15,
      tropicalOverlapSourceCombination8Shard15,
      tropicalOverlapProvenance8Shard15,
      tropicalOverlapSourceIExponent8Shard15,
      tropicalOverlapSourceJExponent8Shard15, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 15. -/
theorem tropicalOverlapRelation8_provenance_shard15 (i : Fin 5) :
    tropicalOverlapRelation8Shard15 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard15 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard15]
  unfold tropicalOverlapSourceCombination8Shard15
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard15,
    tropicalOverlapSourceJExponent8_replay_shard15]

end

end MonochromaticQuantumGraphs.N8D3
