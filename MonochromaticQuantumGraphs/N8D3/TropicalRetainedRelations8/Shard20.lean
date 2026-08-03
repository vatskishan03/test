import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 100--104. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 20. -/
def tropicalOverlapProvenance8Shard20 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 29, coordinateB := 142, sourceJ := 187, coordinateA := 138 },
  { epsilon := -1, sourceI := 30, coordinateB := 7, sourceJ := 31, coordinateA := 1 },
  { epsilon := 1, sourceI := 30, coordinateB := 141, sourceJ := 90, coordinateA := 138 },
  { epsilon := 1, sourceI := 30, coordinateB := 139, sourceJ := 130, coordinateA := 138 },
  { epsilon := 1, sourceI := 30, coordinateB := 142, sourceJ := 190, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 20. -/
def tropicalOverlapRelation8Shard20 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 76 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 76 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 120 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 120 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard20 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 102 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 111 129 142,
    tropicalOverlapDegreeFiveExponent8 7 70 89 138 142,
    tropicalOverlapDegreeFiveExponent8 15 42 89 138 142,
    tropicalOverlapDegreeFiveExponent8 15 51 89 129 142,
    tropicalOverlapDegreeFiveExponent8 26 51 70 119 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 102 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 111 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 89 138,
    tropicalOverlapDegreeFiveExponent8 7 11 42 89 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 89 129,
    tropicalOverlapDegreeFiveExponent8 7 20 51 76 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 102 138 141,
    tropicalOverlapDegreeFiveExponent8 1 65 111 129 141,
    tropicalOverlapDegreeFiveExponent8 1 76 89 138 141,
    tropicalOverlapDegreeFiveExponent8 11 42 89 138 141,
    tropicalOverlapDegreeFiveExponent8 11 51 89 129 141,
    tropicalOverlapDegreeFiveExponent8 20 51 76 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 102 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 111 129 139,
    tropicalOverlapDegreeFiveExponent8 1 76 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 42 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 129 139,
    tropicalOverlapDegreeFiveExponent8 20 51 76 119 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 102 138 142,
    tropicalOverlapDegreeFiveExponent8 1 65 111 129 142,
    tropicalOverlapDegreeFiveExponent8 1 76 89 138 142,
    tropicalOverlapDegreeFiveExponent8 11 42 89 138 142,
    tropicalOverlapDegreeFiveExponent8 11 51 89 129 142,
    tropicalOverlapDegreeFiveExponent8 20 51 76 119 142
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard20 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 102 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 112 130 138,
    tropicalOverlapDegreeFiveExponent8 7 70 89 138 142,
    tropicalOverlapDegreeFiveExponent8 15 42 89 138 142,
    tropicalOverlapDegreeFiveExponent8 15 52 89 130 138,
    tropicalOverlapDegreeFiveExponent8 26 52 70 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 102 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 111 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 89 138,
    tropicalOverlapDegreeFiveExponent8 1 17 42 89 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 89 129,
    tropicalOverlapDegreeFiveExponent8 1 26 51 76 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 102 138 141,
    tropicalOverlapDegreeFiveExponent8 1 65 112 129 138,
    tropicalOverlapDegreeFiveExponent8 1 76 89 138 141,
    tropicalOverlapDegreeFiveExponent8 11 42 89 138 141,
    tropicalOverlapDegreeFiveExponent8 11 52 89 129 138,
    tropicalOverlapDegreeFiveExponent8 20 52 76 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 102 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 111 130 138,
    tropicalOverlapDegreeFiveExponent8 1 76 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 42 89 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 130 138,
    tropicalOverlapDegreeFiveExponent8 20 51 76 120 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 102 138 142,
    tropicalOverlapDegreeFiveExponent8 1 65 112 130 138,
    tropicalOverlapDegreeFiveExponent8 1 76 89 138 142,
    tropicalOverlapDegreeFiveExponent8 11 42 89 138 142,
    tropicalOverlapDegreeFiveExponent8 11 52 89 130 138,
    tropicalOverlapDegreeFiveExponent8 20 52 76 120 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 20. -/
theorem tropicalOverlapSourceIExponent8_replay_shard20
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard20 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard20 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard20 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 20. -/
theorem tropicalOverlapSourceJExponent8_replay_shard20
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard20 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard20 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard20 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard20
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard20 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard20 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard20 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard20
    (i : Fin 5) :
    tropicalOverlapRelation8Shard20 i =
      tropicalOverlapSourceCombination8Shard20 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard20,
      tropicalOverlapSourceCombination8Shard20,
      tropicalOverlapProvenance8Shard20,
      tropicalOverlapSourceIExponent8Shard20,
      tropicalOverlapSourceJExponent8Shard20, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 20. -/
theorem tropicalOverlapRelation8_provenance_shard20 (i : Fin 5) :
    tropicalOverlapRelation8Shard20 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard20 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard20]
  unfold tropicalOverlapSourceCombination8Shard20
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard20,
    tropicalOverlapSourceJExponent8_replay_shard20]

end

end MonochromaticQuantumGraphs.N8D3
