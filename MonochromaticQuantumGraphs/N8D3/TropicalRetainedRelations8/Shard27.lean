import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 135--139. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 27. -/
def tropicalOverlapProvenance8Shard27 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 41, coordinateB := 89, sourceJ := 51, coordinateA := 85 },
  { epsilon := -1, sourceI := 41, coordinateB := 87, sourceJ := 55, coordinateA := 85 },
  { epsilon := 1, sourceI := 41, coordinateB := 90, sourceJ := 59, coordinateA := 85 },
  { epsilon := 1, sourceI := 42, coordinateB := 139, sourceJ := 141, coordinateA := 138 },
  { epsilon := 1, sourceI := 43, coordinateB := 139, sourceJ := 143, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 27. -/
def tropicalOverlapRelation8Shard27 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 87 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 117 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 117 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard27 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 89 100 138,
    tropicalOverlapDegreeFiveExponent8 7 64 89 108 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 89 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 89 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 89 132,
    tropicalOverlapDegreeFiveExponent8 25 51 77 89 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 87 100 138,
    tropicalOverlapDegreeFiveExponent8 7 64 87 108 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 87 132,
    tropicalOverlapDegreeFiveExponent8 25 51 77 87 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 90 100 138,
    tropicalOverlapDegreeFiveExponent8 7 64 90 108 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 90 132,
    tropicalOverlapDegreeFiveExponent8 25 51 77 90 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 100 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 108 132 139,
    tropicalOverlapDegreeFiveExponent8 7 71 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 43 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 132 139,
    tropicalOverlapDegreeFiveExponent8 26 51 71 116 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 100 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 108 132 139,
    tropicalOverlapDegreeFiveExponent8 7 77 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 43 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 132 139,
    tropicalOverlapDegreeFiveExponent8 26 51 77 116 139
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard27 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 103 138,
    tropicalOverlapDegreeFiveExponent8 7 65 85 111 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 89 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 89 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 89 132,
    tropicalOverlapDegreeFiveExponent8 26 51 77 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 85 106 138,
    tropicalOverlapDegreeFiveExponent8 7 64 85 114 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 87 132,
    tropicalOverlapDegreeFiveExponent8 25 51 77 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 106 138,
    tropicalOverlapDegreeFiveExponent8 7 65 85 114 132,
    tropicalOverlapDegreeFiveExponent8 7 77 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 43 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 90 132,
    tropicalOverlapDegreeFiveExponent8 26 51 77 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 100 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 108 133 138,
    tropicalOverlapDegreeFiveExponent8 7 71 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 43 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 133 138,
    tropicalOverlapDegreeFiveExponent8 26 51 71 117 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 100 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 108 133 138,
    tropicalOverlapDegreeFiveExponent8 7 77 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 43 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 133 138,
    tropicalOverlapDegreeFiveExponent8 26 51 77 117 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 27. -/
theorem tropicalOverlapSourceIExponent8_replay_shard27
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard27 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard27 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard27 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 27. -/
theorem tropicalOverlapSourceJExponent8_replay_shard27
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard27 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard27 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard27 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard27
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard27 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard27 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard27 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard27
    (i : Fin 5) :
    tropicalOverlapRelation8Shard27 i =
      tropicalOverlapSourceCombination8Shard27 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard27,
      tropicalOverlapSourceCombination8Shard27,
      tropicalOverlapProvenance8Shard27,
      tropicalOverlapSourceIExponent8Shard27,
      tropicalOverlapSourceJExponent8Shard27, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 27. -/
theorem tropicalOverlapRelation8_provenance_shard27 (i : Fin 5) :
    tropicalOverlapRelation8Shard27 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard27 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard27]
  unfold tropicalOverlapSourceCombination8Shard27
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard27,
    tropicalOverlapSourceJExponent8_replay_shard27]

end

end MonochromaticQuantumGraphs.N8D3
