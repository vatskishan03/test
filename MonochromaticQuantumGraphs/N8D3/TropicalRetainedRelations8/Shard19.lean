import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 95--99. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 19. -/
def tropicalOverlapProvenance8Shard19 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 28, coordinateB := 141, sourceJ := 88, coordinateA := 138 },
  { epsilon := 1, sourceI := 28, coordinateB := 139, sourceJ := 126, coordinateA := 138 },
  { epsilon := 1, sourceI := 28, coordinateB := 142, sourceJ := 186, coordinateA := 138 },
  { epsilon := 1, sourceI := 29, coordinateB := 141, sourceJ := 89, coordinateA := 138 },
  { epsilon := 1, sourceI := 29, coordinateB := 139, sourceJ := 127, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 19. -/
def tropicalOverlapRelation8Shard19 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 120 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard19 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 102 138 141,
    tropicalOverlapDegreeFiveExponent8 1 59 111 129 141,
    tropicalOverlapDegreeFiveExponent8 1 70 89 138 141,
    tropicalOverlapDegreeFiveExponent8 9 42 89 138 141,
    tropicalOverlapDegreeFiveExponent8 9 51 89 129 141,
    tropicalOverlapDegreeFiveExponent8 20 51 70 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 102 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 111 129 139,
    tropicalOverlapDegreeFiveExponent8 1 70 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 42 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 129 139,
    tropicalOverlapDegreeFiveExponent8 20 51 70 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 102 138 142,
    tropicalOverlapDegreeFiveExponent8 1 59 111 129 142,
    tropicalOverlapDegreeFiveExponent8 1 70 89 138 142,
    tropicalOverlapDegreeFiveExponent8 9 42 89 138 142,
    tropicalOverlapDegreeFiveExponent8 9 51 89 129 142,
    tropicalOverlapDegreeFiveExponent8 20 51 70 119 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 102 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 111 129 141,
    tropicalOverlapDegreeFiveExponent8 7 70 89 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 89 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 89 129 141,
    tropicalOverlapDegreeFiveExponent8 26 51 70 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 102 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 111 129 139,
    tropicalOverlapDegreeFiveExponent8 7 70 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 42 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 89 129 139,
    tropicalOverlapDegreeFiveExponent8 26 51 70 119 139
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard19 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 102 138 141,
    tropicalOverlapDegreeFiveExponent8 1 59 112 129 138,
    tropicalOverlapDegreeFiveExponent8 1 70 89 138 141,
    tropicalOverlapDegreeFiveExponent8 9 42 89 138 141,
    tropicalOverlapDegreeFiveExponent8 9 52 89 129 138,
    tropicalOverlapDegreeFiveExponent8 20 52 70 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 102 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 111 130 138,
    tropicalOverlapDegreeFiveExponent8 1 70 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 42 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 130 138,
    tropicalOverlapDegreeFiveExponent8 20 51 70 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 102 138 142,
    tropicalOverlapDegreeFiveExponent8 1 59 112 130 138,
    tropicalOverlapDegreeFiveExponent8 1 70 89 138 142,
    tropicalOverlapDegreeFiveExponent8 9 42 89 138 142,
    tropicalOverlapDegreeFiveExponent8 9 52 89 130 138,
    tropicalOverlapDegreeFiveExponent8 20 52 70 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 102 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 112 129 138,
    tropicalOverlapDegreeFiveExponent8 7 70 89 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 89 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 89 129 138,
    tropicalOverlapDegreeFiveExponent8 26 52 70 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 102 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 111 130 138,
    tropicalOverlapDegreeFiveExponent8 7 70 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 42 89 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 89 130 138,
    tropicalOverlapDegreeFiveExponent8 26 51 70 120 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 19. -/
theorem tropicalOverlapSourceIExponent8_replay_shard19
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard19 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard19 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard19 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 19. -/
theorem tropicalOverlapSourceJExponent8_replay_shard19
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard19 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard19 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard19 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard19
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard19 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard19 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard19 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard19
    (i : Fin 5) :
    tropicalOverlapRelation8Shard19 i =
      tropicalOverlapSourceCombination8Shard19 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard19,
      tropicalOverlapSourceCombination8Shard19,
      tropicalOverlapProvenance8Shard19,
      tropicalOverlapSourceIExponent8Shard19,
      tropicalOverlapSourceJExponent8Shard19, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 19. -/
theorem tropicalOverlapRelation8_provenance_shard19 (i : Fin 5) :
    tropicalOverlapRelation8Shard19 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard19 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard19]
  unfold tropicalOverlapSourceCombination8Shard19
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard19,
    tropicalOverlapSourceJExponent8_replay_shard19]

end

end MonochromaticQuantumGraphs.N8D3
