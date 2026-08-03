import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 125--129. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 25. -/
def tropicalOverlapProvenance8Shard25 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 39, coordinateB := 141, sourceJ := 99, coordinateA := 138 },
  { epsilon := 1, sourceI := 39, coordinateB := 139, sourceJ := 139, coordinateA := 138 },
  { epsilon := 1, sourceI := 39, coordinateB := 142, sourceJ := 199, coordinateA := 138 },
  { epsilon := 1, sourceI := 40, coordinateB := 88, sourceJ := 42, coordinateA := 85 },
  { epsilon := -1, sourceI := 40, coordinateB := 86, sourceJ := 45, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 25. -/
def tropicalOverlapRelation8Shard25 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 86 116) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard25 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 105 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 114 129 141,
    tropicalOverlapDegreeFiveExponent8 7 76 90 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 90 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 90 129 141,
    tropicalOverlapDegreeFiveExponent8 26 51 76 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 105 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 114 129 139,
    tropicalOverlapDegreeFiveExponent8 7 76 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 42 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 90 129 139,
    tropicalOverlapDegreeFiveExponent8 26 51 76 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 105 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 114 129 142,
    tropicalOverlapDegreeFiveExponent8 7 76 90 138 142,
    tropicalOverlapDegreeFiveExponent8 17 42 90 138 142,
    tropicalOverlapDegreeFiveExponent8 17 51 90 129 142,
    tropicalOverlapDegreeFiveExponent8 26 51 76 122 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 88 100 138,
    tropicalOverlapDegreeFiveExponent8 7 58 88 108 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 88 132,
    tropicalOverlapDegreeFiveExponent8 25 51 71 88 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 86 100 138,
    tropicalOverlapDegreeFiveExponent8 7 58 86 108 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 86 132,
    tropicalOverlapDegreeFiveExponent8 25 51 71 86 116
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard25 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 105 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 115 129 138,
    tropicalOverlapDegreeFiveExponent8 7 76 90 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 90 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 90 129 138,
    tropicalOverlapDegreeFiveExponent8 26 52 76 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 105 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 114 130 138,
    tropicalOverlapDegreeFiveExponent8 7 76 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 42 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 90 130 138,
    tropicalOverlapDegreeFiveExponent8 26 51 76 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 105 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 115 130 138,
    tropicalOverlapDegreeFiveExponent8 7 76 90 138 142,
    tropicalOverlapDegreeFiveExponent8 17 42 90 138 142,
    tropicalOverlapDegreeFiveExponent8 17 52 90 130 138,
    tropicalOverlapDegreeFiveExponent8 26 52 76 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 100 138,
    tropicalOverlapDegreeFiveExponent8 7 59 85 108 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 88 132,
    tropicalOverlapDegreeFiveExponent8 26 51 71 85 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 103 138,
    tropicalOverlapDegreeFiveExponent8 7 58 85 111 132,
    tropicalOverlapDegreeFiveExponent8 7 71 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 43 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 86 132,
    tropicalOverlapDegreeFiveExponent8 25 51 71 85 119
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 25. -/
theorem tropicalOverlapSourceIExponent8_replay_shard25
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard25 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard25 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard25 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 25. -/
theorem tropicalOverlapSourceJExponent8_replay_shard25
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard25 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard25 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard25 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard25
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard25 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard25 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard25 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard25
    (i : Fin 5) :
    tropicalOverlapRelation8Shard25 i =
      tropicalOverlapSourceCombination8Shard25 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard25,
      tropicalOverlapSourceCombination8Shard25,
      tropicalOverlapProvenance8Shard25,
      tropicalOverlapSourceIExponent8Shard25,
      tropicalOverlapSourceJExponent8Shard25, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 25. -/
theorem tropicalOverlapRelation8_provenance_shard25 (i : Fin 5) :
    tropicalOverlapRelation8Shard25 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard25 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard25]
  unfold tropicalOverlapSourceCombination8Shard25
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard25,
    tropicalOverlapSourceJExponent8_replay_shard25]

end

end MonochromaticQuantumGraphs.N8D3
