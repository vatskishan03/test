import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 25--29. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 5. -/
def tropicalOverlapProvenance8Shard5 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 6, coordinateB := 141, sourceJ := 66, coordinateA := 138 },
  { epsilon := 1, sourceI := 6, coordinateB := 89, sourceJ := 10, coordinateA := 86 },
  { epsilon := -1, sourceI := 6, coordinateB := 87, sourceJ := 14, coordinateA := 86 },
  { epsilon := 1, sourceI := 6, coordinateB := 90, sourceJ := 18, coordinateA := 86 },
  { epsilon := 1, sourceI := 7, coordinateB := 141, sourceJ := 67, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 5. -/
def tropicalOverlapRelation8Shard5 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 87 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 104 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 86 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 119 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard5 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 101 138 141,
    tropicalOverlapDegreeFiveExponent8 1 64 111 126 141,
    tropicalOverlapDegreeFiveExponent8 1 75 86 138 141,
    tropicalOverlapDegreeFiveExponent8 11 41 86 138 141,
    tropicalOverlapDegreeFiveExponent8 11 51 86 126 141,
    tropicalOverlapDegreeFiveExponent8 19 51 75 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 89 101 138,
    tropicalOverlapDegreeFiveExponent8 1 64 89 111 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 41 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 89 126,
    tropicalOverlapDegreeFiveExponent8 19 51 75 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 87 101 138,
    tropicalOverlapDegreeFiveExponent8 1 64 87 111 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 41 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 87 126,
    tropicalOverlapDegreeFiveExponent8 19 51 75 87 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 90 101 138,
    tropicalOverlapDegreeFiveExponent8 1 64 90 111 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 41 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 90 126,
    tropicalOverlapDegreeFiveExponent8 19 51 75 90 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 101 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 111 126 141,
    tropicalOverlapDegreeFiveExponent8 7 75 86 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 86 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 86 126 141,
    tropicalOverlapDegreeFiveExponent8 25 51 75 119 141
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard5 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 101 138 141,
    tropicalOverlapDegreeFiveExponent8 1 64 112 126 138,
    tropicalOverlapDegreeFiveExponent8 1 75 86 138 141,
    tropicalOverlapDegreeFiveExponent8 11 41 86 138 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 126 138,
    tropicalOverlapDegreeFiveExponent8 19 52 75 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 101 138,
    tropicalOverlapDegreeFiveExponent8 1 65 86 111 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 41 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 89 126,
    tropicalOverlapDegreeFiveExponent8 20 51 75 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 86 104 138,
    tropicalOverlapDegreeFiveExponent8 1 64 86 114 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 41 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 87 126,
    tropicalOverlapDegreeFiveExponent8 19 51 75 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 104 138,
    tropicalOverlapDegreeFiveExponent8 1 65 86 114 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 41 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 90 126,
    tropicalOverlapDegreeFiveExponent8 20 51 75 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 101 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 112 126 138,
    tropicalOverlapDegreeFiveExponent8 7 75 86 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 86 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 86 126 138,
    tropicalOverlapDegreeFiveExponent8 25 52 75 119 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 5. -/
theorem tropicalOverlapSourceIExponent8_replay_shard5
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard5 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard5 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard5 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 5. -/
theorem tropicalOverlapSourceJExponent8_replay_shard5
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard5 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard5 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard5 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard5
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard5 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard5 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard5 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard5
    (i : Fin 5) :
    tropicalOverlapRelation8Shard5 i =
      tropicalOverlapSourceCombination8Shard5 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard5,
      tropicalOverlapSourceCombination8Shard5,
      tropicalOverlapProvenance8Shard5,
      tropicalOverlapSourceIExponent8Shard5,
      tropicalOverlapSourceJExponent8Shard5, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 5. -/
theorem tropicalOverlapRelation8_provenance_shard5 (i : Fin 5) :
    tropicalOverlapRelation8Shard5 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard5 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard5]
  unfold tropicalOverlapSourceCombination8Shard5
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard5,
    tropicalOverlapSourceJExponent8_replay_shard5]

end

end MonochromaticQuantumGraphs.N8D3
