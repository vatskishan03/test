import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 0--4. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 0. -/
def tropicalOverlapProvenance8Shard0 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 0, coordinateB := 141, sourceJ := 60, coordinateA := 138 },
  { epsilon := 1, sourceI := 0, coordinateB := 88, sourceJ := 2, coordinateA := 85 },
  { epsilon := -1, sourceI := 0, coordinateB := 86, sourceJ := 5, coordinateA := 85 },
  { epsilon := 1, sourceI := 0, coordinateB := 89, sourceJ := 9, coordinateA := 85 },
  { epsilon := -1, sourceI := 0, coordinateB := 87, sourceJ := 13, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 0. -/
def tropicalOverlapRelation8Shard0 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 108 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 109 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 85 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 85 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 116 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 85 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 86 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 85 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 87 116) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard0 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 98 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 108 126 141,
    tropicalOverlapDegreeFiveExponent8 7 69 85 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 85 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 85 126 141,
    tropicalOverlapDegreeFiveExponent8 25 51 69 116 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 88 98 138,
    tropicalOverlapDegreeFiveExponent8 7 58 88 108 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 41 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 88 126,
    tropicalOverlapDegreeFiveExponent8 25 51 69 88 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 86 98 138,
    tropicalOverlapDegreeFiveExponent8 7 58 86 108 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 41 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 86 126,
    tropicalOverlapDegreeFiveExponent8 25 51 69 86 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 89 98 138,
    tropicalOverlapDegreeFiveExponent8 7 58 89 108 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 41 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 89 126,
    tropicalOverlapDegreeFiveExponent8 25 51 69 89 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 87 98 138,
    tropicalOverlapDegreeFiveExponent8 7 58 87 108 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 41 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 87 126,
    tropicalOverlapDegreeFiveExponent8 25 51 69 87 116
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard0 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 98 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 109 126 138,
    tropicalOverlapDegreeFiveExponent8 7 69 85 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 85 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 126 138,
    tropicalOverlapDegreeFiveExponent8 25 52 69 116 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 98 138,
    tropicalOverlapDegreeFiveExponent8 7 59 85 108 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 41 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 88 126,
    tropicalOverlapDegreeFiveExponent8 26 51 69 85 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 101 138,
    tropicalOverlapDegreeFiveExponent8 7 58 85 111 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 41 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 86 126,
    tropicalOverlapDegreeFiveExponent8 25 51 69 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 101 138,
    tropicalOverlapDegreeFiveExponent8 7 59 85 111 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 41 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 89 126,
    tropicalOverlapDegreeFiveExponent8 26 51 69 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 104 138,
    tropicalOverlapDegreeFiveExponent8 7 58 85 114 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 41 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 87 126,
    tropicalOverlapDegreeFiveExponent8 25 51 69 85 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 0. -/
theorem tropicalOverlapSourceIExponent8_replay_shard0
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard0 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard0 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard0 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 0. -/
theorem tropicalOverlapSourceJExponent8_replay_shard0
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard0 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard0 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard0 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard0
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard0 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard0 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard0 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard0
    (i : Fin 5) :
    tropicalOverlapRelation8Shard0 i =
      tropicalOverlapSourceCombination8Shard0 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard0,
      tropicalOverlapSourceCombination8Shard0,
      tropicalOverlapProvenance8Shard0,
      tropicalOverlapSourceIExponent8Shard0,
      tropicalOverlapSourceJExponent8Shard0, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 0. -/
theorem tropicalOverlapRelation8_provenance_shard0 (i : Fin 5) :
    tropicalOverlapRelation8Shard0 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard0 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard0]
  unfold tropicalOverlapSourceCombination8Shard0
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard0,
    tropicalOverlapSourceJExponent8_replay_shard0]

end

end MonochromaticQuantumGraphs.N8D3
