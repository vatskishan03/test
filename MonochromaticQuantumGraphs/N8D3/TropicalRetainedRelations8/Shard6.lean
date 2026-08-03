import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 30--34. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 6. -/
def tropicalOverlapProvenance8Shard6 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 8, coordinateB := 7, sourceJ := 9, coordinateA := 1 },
  { epsilon := 1, sourceI := 8, coordinateB := 141, sourceJ := 68, coordinateA := 138 },
  { epsilon := 1, sourceI := 8, coordinateB := 139, sourceJ := 106, coordinateA := 138 },
  { epsilon := 1, sourceI := 8, coordinateB := 142, sourceJ := 166, coordinateA := 138 },
  { epsilon := 1, sourceI := 9, coordinateB := 141, sourceJ := 69, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 6. -/
def tropicalOverlapRelation8Shard6 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 69 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 119 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard6 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 101 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 111 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 89 138,
    tropicalOverlapDegreeFiveExponent8 7 9 41 89 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 89 126,
    tropicalOverlapDegreeFiveExponent8 7 20 51 69 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 101 138 141,
    tropicalOverlapDegreeFiveExponent8 1 59 111 126 141,
    tropicalOverlapDegreeFiveExponent8 1 69 89 138 141,
    tropicalOverlapDegreeFiveExponent8 9 41 89 138 141,
    tropicalOverlapDegreeFiveExponent8 9 51 89 126 141,
    tropicalOverlapDegreeFiveExponent8 20 51 69 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 101 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 111 126 139,
    tropicalOverlapDegreeFiveExponent8 1 69 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 41 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 126 139,
    tropicalOverlapDegreeFiveExponent8 20 51 69 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 101 138 142,
    tropicalOverlapDegreeFiveExponent8 1 59 111 126 142,
    tropicalOverlapDegreeFiveExponent8 1 69 89 138 142,
    tropicalOverlapDegreeFiveExponent8 9 41 89 138 142,
    tropicalOverlapDegreeFiveExponent8 9 51 89 126 142,
    tropicalOverlapDegreeFiveExponent8 20 51 69 119 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 101 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 111 126 141,
    tropicalOverlapDegreeFiveExponent8 7 69 89 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 89 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 89 126 141,
    tropicalOverlapDegreeFiveExponent8 26 51 69 119 141
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard6 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 101 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 111 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 89 138,
    tropicalOverlapDegreeFiveExponent8 1 15 41 89 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 89 126,
    tropicalOverlapDegreeFiveExponent8 1 26 51 69 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 101 138 141,
    tropicalOverlapDegreeFiveExponent8 1 59 112 126 138,
    tropicalOverlapDegreeFiveExponent8 1 69 89 138 141,
    tropicalOverlapDegreeFiveExponent8 9 41 89 138 141,
    tropicalOverlapDegreeFiveExponent8 9 52 89 126 138,
    tropicalOverlapDegreeFiveExponent8 20 52 69 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 101 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 111 127 138,
    tropicalOverlapDegreeFiveExponent8 1 69 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 41 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 127 138,
    tropicalOverlapDegreeFiveExponent8 20 51 69 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 101 138 142,
    tropicalOverlapDegreeFiveExponent8 1 59 112 127 138,
    tropicalOverlapDegreeFiveExponent8 1 69 89 138 142,
    tropicalOverlapDegreeFiveExponent8 9 41 89 138 142,
    tropicalOverlapDegreeFiveExponent8 9 52 89 127 138,
    tropicalOverlapDegreeFiveExponent8 20 52 69 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 101 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 112 126 138,
    tropicalOverlapDegreeFiveExponent8 7 69 89 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 89 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 89 126 138,
    tropicalOverlapDegreeFiveExponent8 26 52 69 119 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 6. -/
theorem tropicalOverlapSourceIExponent8_replay_shard6
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard6 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard6 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard6 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 6. -/
theorem tropicalOverlapSourceJExponent8_replay_shard6
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard6 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard6 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard6 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard6
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard6 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard6 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard6 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard6
    (i : Fin 5) :
    tropicalOverlapRelation8Shard6 i =
      tropicalOverlapSourceCombination8Shard6 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard6,
      tropicalOverlapSourceCombination8Shard6,
      tropicalOverlapProvenance8Shard6,
      tropicalOverlapSourceIExponent8Shard6,
      tropicalOverlapSourceJExponent8Shard6, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 6. -/
theorem tropicalOverlapRelation8_provenance_shard6 (i : Fin 5) :
    tropicalOverlapRelation8Shard6 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard6 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard6]
  unfold tropicalOverlapSourceCombination8Shard6
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard6,
    tropicalOverlapSourceJExponent8_replay_shard6]

end

end MonochromaticQuantumGraphs.N8D3
