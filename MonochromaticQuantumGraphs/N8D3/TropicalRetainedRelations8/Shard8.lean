import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 40--44. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 8. -/
def tropicalOverlapProvenance8Shard8 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 10, coordinateB := 142, sourceJ := 170, coordinateA := 138 },
  { epsilon := 1, sourceI := 11, coordinateB := 141, sourceJ := 71, coordinateA := 138 },
  { epsilon := 1, sourceI := 11, coordinateB := 139, sourceJ := 111, coordinateA := 138 },
  { epsilon := 1, sourceI := 11, coordinateB := 142, sourceJ := 171, coordinateA := 138 },
  { epsilon := -1, sourceI := 12, coordinateB := 7, sourceJ := 13, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 8. -/
def tropicalOverlapRelation8Shard8 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 69 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard8 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 101 138 142,
    tropicalOverlapDegreeFiveExponent8 1 65 111 126 142,
    tropicalOverlapDegreeFiveExponent8 1 75 89 138 142,
    tropicalOverlapDegreeFiveExponent8 11 41 89 138 142,
    tropicalOverlapDegreeFiveExponent8 11 51 89 126 142,
    tropicalOverlapDegreeFiveExponent8 20 51 75 119 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 101 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 111 126 141,
    tropicalOverlapDegreeFiveExponent8 7 75 89 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 89 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 89 126 141,
    tropicalOverlapDegreeFiveExponent8 26 51 75 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 101 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 111 126 139,
    tropicalOverlapDegreeFiveExponent8 7 75 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 41 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 89 126 139,
    tropicalOverlapDegreeFiveExponent8 26 51 75 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 101 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 111 126 142,
    tropicalOverlapDegreeFiveExponent8 7 75 89 138 142,
    tropicalOverlapDegreeFiveExponent8 17 41 89 138 142,
    tropicalOverlapDegreeFiveExponent8 17 51 89 126 142,
    tropicalOverlapDegreeFiveExponent8 26 51 75 119 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 104 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 114 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 87 138,
    tropicalOverlapDegreeFiveExponent8 7 9 41 87 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 87 126,
    tropicalOverlapDegreeFiveExponent8 7 19 51 69 122
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard8 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 101 138 142,
    tropicalOverlapDegreeFiveExponent8 1 65 112 127 138,
    tropicalOverlapDegreeFiveExponent8 1 75 89 138 142,
    tropicalOverlapDegreeFiveExponent8 11 41 89 138 142,
    tropicalOverlapDegreeFiveExponent8 11 52 89 127 138,
    tropicalOverlapDegreeFiveExponent8 20 52 75 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 101 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 112 126 138,
    tropicalOverlapDegreeFiveExponent8 7 75 89 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 89 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 89 126 138,
    tropicalOverlapDegreeFiveExponent8 26 52 75 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 101 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 111 127 138,
    tropicalOverlapDegreeFiveExponent8 7 75 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 41 89 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 89 127 138,
    tropicalOverlapDegreeFiveExponent8 26 51 75 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 101 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 112 127 138,
    tropicalOverlapDegreeFiveExponent8 7 75 89 138 142,
    tropicalOverlapDegreeFiveExponent8 17 41 89 138 142,
    tropicalOverlapDegreeFiveExponent8 17 52 89 127 138,
    tropicalOverlapDegreeFiveExponent8 26 52 75 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 104 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 114 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 87 138,
    tropicalOverlapDegreeFiveExponent8 1 15 41 87 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 87 126,
    tropicalOverlapDegreeFiveExponent8 1 25 51 69 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 8. -/
theorem tropicalOverlapSourceIExponent8_replay_shard8
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard8 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard8 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard8 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 8. -/
theorem tropicalOverlapSourceJExponent8_replay_shard8
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard8 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard8 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard8 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard8
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard8 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard8 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard8 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard8
    (i : Fin 5) :
    tropicalOverlapRelation8Shard8 i =
      tropicalOverlapSourceCombination8Shard8 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard8,
      tropicalOverlapSourceCombination8Shard8,
      tropicalOverlapProvenance8Shard8,
      tropicalOverlapSourceIExponent8Shard8,
      tropicalOverlapSourceJExponent8Shard8, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 8. -/
theorem tropicalOverlapRelation8_provenance_shard8 (i : Fin 5) :
    tropicalOverlapRelation8Shard8 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard8 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard8]
  unfold tropicalOverlapSourceCombination8Shard8
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard8,
    tropicalOverlapSourceJExponent8_replay_shard8]

end

end MonochromaticQuantumGraphs.N8D3
