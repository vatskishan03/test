import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 15--19. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 3. -/
def tropicalOverlapProvenance8Shard3 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 3, coordinateB := 141, sourceJ := 63, coordinateA := 138 },
  { epsilon := 1, sourceI := 3, coordinateB := 139, sourceJ := 103, coordinateA := 138 },
  { epsilon := 1, sourceI := 3, coordinateB := 142, sourceJ := 163, coordinateA := 138 },
  { epsilon := -1, sourceI := 4, coordinateB := 7, sourceJ := 5, coordinateA := 1 },
  { epsilon := 1, sourceI := 4, coordinateB := 141, sourceJ := 64, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 3. -/
def tropicalOverlapRelation8Shard3 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 116 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 117 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 117 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 86 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 69 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 119 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard3 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 98 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 108 126 141,
    tropicalOverlapDegreeFiveExponent8 7 75 88 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 88 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 88 126 141,
    tropicalOverlapDegreeFiveExponent8 26 51 75 116 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 98 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 108 126 139,
    tropicalOverlapDegreeFiveExponent8 7 75 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 41 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 126 139,
    tropicalOverlapDegreeFiveExponent8 26 51 75 116 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 98 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 108 126 142,
    tropicalOverlapDegreeFiveExponent8 7 75 88 138 142,
    tropicalOverlapDegreeFiveExponent8 17 41 88 138 142,
    tropicalOverlapDegreeFiveExponent8 17 51 88 126 142,
    tropicalOverlapDegreeFiveExponent8 26 51 75 116 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 101 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 111 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 86 138,
    tropicalOverlapDegreeFiveExponent8 7 9 41 86 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 86 126,
    tropicalOverlapDegreeFiveExponent8 7 19 51 69 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 101 138 141,
    tropicalOverlapDegreeFiveExponent8 1 58 111 126 141,
    tropicalOverlapDegreeFiveExponent8 1 69 86 138 141,
    tropicalOverlapDegreeFiveExponent8 9 41 86 138 141,
    tropicalOverlapDegreeFiveExponent8 9 51 86 126 141,
    tropicalOverlapDegreeFiveExponent8 19 51 69 119 141
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard3 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 98 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 109 126 138,
    tropicalOverlapDegreeFiveExponent8 7 75 88 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 88 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 88 126 138,
    tropicalOverlapDegreeFiveExponent8 26 52 75 116 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 98 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 108 127 138,
    tropicalOverlapDegreeFiveExponent8 7 75 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 41 88 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 127 138,
    tropicalOverlapDegreeFiveExponent8 26 51 75 117 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 98 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 109 127 138,
    tropicalOverlapDegreeFiveExponent8 7 75 88 138 142,
    tropicalOverlapDegreeFiveExponent8 17 41 88 138 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 127 138,
    tropicalOverlapDegreeFiveExponent8 26 52 75 117 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 101 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 111 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 86 138,
    tropicalOverlapDegreeFiveExponent8 1 15 41 86 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 86 126,
    tropicalOverlapDegreeFiveExponent8 1 25 51 69 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 101 138 141,
    tropicalOverlapDegreeFiveExponent8 1 58 112 126 138,
    tropicalOverlapDegreeFiveExponent8 1 69 86 138 141,
    tropicalOverlapDegreeFiveExponent8 9 41 86 138 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 126 138,
    tropicalOverlapDegreeFiveExponent8 19 52 69 119 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 3. -/
theorem tropicalOverlapSourceIExponent8_replay_shard3
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard3 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard3 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard3 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 3. -/
theorem tropicalOverlapSourceJExponent8_replay_shard3
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard3 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard3 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard3 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard3
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard3 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard3 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard3 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard3
    (i : Fin 5) :
    tropicalOverlapRelation8Shard3 i =
      tropicalOverlapSourceCombination8Shard3 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard3,
      tropicalOverlapSourceCombination8Shard3,
      tropicalOverlapProvenance8Shard3,
      tropicalOverlapSourceIExponent8Shard3,
      tropicalOverlapSourceJExponent8Shard3, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 3. -/
theorem tropicalOverlapRelation8_provenance_shard3 (i : Fin 5) :
    tropicalOverlapRelation8Shard3 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard3 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard3]
  unfold tropicalOverlapSourceCombination8Shard3
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard3,
    tropicalOverlapSourceJExponent8_replay_shard3]

end

end MonochromaticQuantumGraphs.N8D3
