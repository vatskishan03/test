import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 35--39. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 7. -/
def tropicalOverlapProvenance8Shard7 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 9, coordinateB := 139, sourceJ := 107, coordinateA := 138 },
  { epsilon := 1, sourceI := 9, coordinateB := 142, sourceJ := 167, coordinateA := 138 },
  { epsilon := -1, sourceI := 10, coordinateB := 7, sourceJ := 11, coordinateA := 1 },
  { epsilon := 1, sourceI := 10, coordinateB := 141, sourceJ := 70, coordinateA := 138 },
  { epsilon := 1, sourceI := 10, coordinateB := 139, sourceJ := 110, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 7. -/
def tropicalOverlapRelation8Shard7 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 75 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 89 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 75 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 120 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard7 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 101 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 111 126 139,
    tropicalOverlapDegreeFiveExponent8 7 69 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 41 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 89 126 139,
    tropicalOverlapDegreeFiveExponent8 26 51 69 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 101 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 111 126 142,
    tropicalOverlapDegreeFiveExponent8 7 69 89 138 142,
    tropicalOverlapDegreeFiveExponent8 15 41 89 138 142,
    tropicalOverlapDegreeFiveExponent8 15 51 89 126 142,
    tropicalOverlapDegreeFiveExponent8 26 51 69 119 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 101 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 111 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 89 138,
    tropicalOverlapDegreeFiveExponent8 7 11 41 89 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 89 126,
    tropicalOverlapDegreeFiveExponent8 7 20 51 75 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 101 138 141,
    tropicalOverlapDegreeFiveExponent8 1 65 111 126 141,
    tropicalOverlapDegreeFiveExponent8 1 75 89 138 141,
    tropicalOverlapDegreeFiveExponent8 11 41 89 138 141,
    tropicalOverlapDegreeFiveExponent8 11 51 89 126 141,
    tropicalOverlapDegreeFiveExponent8 20 51 75 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 101 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 111 126 139,
    tropicalOverlapDegreeFiveExponent8 1 75 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 41 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 126 139,
    tropicalOverlapDegreeFiveExponent8 20 51 75 119 139
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard7 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 101 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 111 127 138,
    tropicalOverlapDegreeFiveExponent8 7 69 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 41 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 89 127 138,
    tropicalOverlapDegreeFiveExponent8 26 51 69 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 101 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 112 127 138,
    tropicalOverlapDegreeFiveExponent8 7 69 89 138 142,
    tropicalOverlapDegreeFiveExponent8 15 41 89 138 142,
    tropicalOverlapDegreeFiveExponent8 15 52 89 127 138,
    tropicalOverlapDegreeFiveExponent8 26 52 69 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 101 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 111 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 89 138,
    tropicalOverlapDegreeFiveExponent8 1 17 41 89 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 89 126,
    tropicalOverlapDegreeFiveExponent8 1 26 51 75 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 101 138 141,
    tropicalOverlapDegreeFiveExponent8 1 65 112 126 138,
    tropicalOverlapDegreeFiveExponent8 1 75 89 138 141,
    tropicalOverlapDegreeFiveExponent8 11 41 89 138 141,
    tropicalOverlapDegreeFiveExponent8 11 52 89 126 138,
    tropicalOverlapDegreeFiveExponent8 20 52 75 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 101 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 111 127 138,
    tropicalOverlapDegreeFiveExponent8 1 75 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 41 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 127 138,
    tropicalOverlapDegreeFiveExponent8 20 51 75 120 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 7. -/
theorem tropicalOverlapSourceIExponent8_replay_shard7
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard7 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard7 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard7 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 7. -/
theorem tropicalOverlapSourceJExponent8_replay_shard7
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard7 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard7 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard7 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard7
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard7 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard7 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard7 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard7
    (i : Fin 5) :
    tropicalOverlapRelation8Shard7 i =
      tropicalOverlapSourceCombination8Shard7 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard7,
      tropicalOverlapSourceCombination8Shard7,
      tropicalOverlapProvenance8Shard7,
      tropicalOverlapSourceIExponent8Shard7,
      tropicalOverlapSourceJExponent8Shard7, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 7. -/
theorem tropicalOverlapRelation8_provenance_shard7 (i : Fin 5) :
    tropicalOverlapRelation8Shard7 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard7 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard7]
  unfold tropicalOverlapSourceCombination8Shard7
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard7,
    tropicalOverlapSourceJExponent8_replay_shard7]

end

end MonochromaticQuantumGraphs.N8D3
