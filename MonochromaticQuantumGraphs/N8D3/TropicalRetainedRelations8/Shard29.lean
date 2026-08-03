import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 145--149. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 29. -/
def tropicalOverlapProvenance8Shard29 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 46, coordinateB := 89, sourceJ := 50, coordinateA := 86 },
  { epsilon := -1, sourceI := 46, coordinateB := 87, sourceJ := 54, coordinateA := 86 },
  { epsilon := 1, sourceI := 46, coordinateB := 90, sourceJ := 58, coordinateA := 86 },
  { epsilon := -1, sourceI := 48, coordinateB := 7, sourceJ := 49, coordinateA := 1 },
  { epsilon := 1, sourceI := 48, coordinateB := 139, sourceJ := 146, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 29. -/
def tropicalOverlapRelation8Shard29 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 87 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 86 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 71 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 71 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 120 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard29 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 89 103 138,
    tropicalOverlapDegreeFiveExponent8 1 64 89 111 132,
    tropicalOverlapDegreeFiveExponent8 1 77 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 43 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 89 132,
    tropicalOverlapDegreeFiveExponent8 19 51 77 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 87 103 138,
    tropicalOverlapDegreeFiveExponent8 1 64 87 111 132,
    tropicalOverlapDegreeFiveExponent8 1 77 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 43 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 87 132,
    tropicalOverlapDegreeFiveExponent8 19 51 77 87 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 90 103 138,
    tropicalOverlapDegreeFiveExponent8 1 64 90 111 132,
    tropicalOverlapDegreeFiveExponent8 1 77 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 43 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 90 132,
    tropicalOverlapDegreeFiveExponent8 19 51 77 90 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 103 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 111 132,
    tropicalOverlapDegreeFiveExponent8 1 7 71 89 138,
    tropicalOverlapDegreeFiveExponent8 7 9 43 89 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 89 132,
    tropicalOverlapDegreeFiveExponent8 7 20 51 71 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 103 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 111 132 139,
    tropicalOverlapDegreeFiveExponent8 1 71 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 43 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 132 139,
    tropicalOverlapDegreeFiveExponent8 20 51 71 119 139
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard29 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 103 138,
    tropicalOverlapDegreeFiveExponent8 1 65 86 111 132,
    tropicalOverlapDegreeFiveExponent8 1 77 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 43 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 89 132,
    tropicalOverlapDegreeFiveExponent8 20 51 77 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 86 106 138,
    tropicalOverlapDegreeFiveExponent8 1 64 86 114 132,
    tropicalOverlapDegreeFiveExponent8 1 77 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 43 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 87 132,
    tropicalOverlapDegreeFiveExponent8 19 51 77 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 106 138,
    tropicalOverlapDegreeFiveExponent8 1 65 86 114 132,
    tropicalOverlapDegreeFiveExponent8 1 77 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 43 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 90 132,
    tropicalOverlapDegreeFiveExponent8 20 51 77 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 103 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 111 132,
    tropicalOverlapDegreeFiveExponent8 1 7 71 89 138,
    tropicalOverlapDegreeFiveExponent8 1 15 43 89 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 89 132,
    tropicalOverlapDegreeFiveExponent8 1 26 51 71 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 103 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 111 133 138,
    tropicalOverlapDegreeFiveExponent8 1 71 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 43 89 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 133 138,
    tropicalOverlapDegreeFiveExponent8 20 51 71 120 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 29. -/
theorem tropicalOverlapSourceIExponent8_replay_shard29
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard29 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard29 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard29 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 29. -/
theorem tropicalOverlapSourceJExponent8_replay_shard29
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard29 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard29 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard29 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard29
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard29 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard29 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard29 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard29
    (i : Fin 5) :
    tropicalOverlapRelation8Shard29 i =
      tropicalOverlapSourceCombination8Shard29 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard29,
      tropicalOverlapSourceCombination8Shard29,
      tropicalOverlapProvenance8Shard29,
      tropicalOverlapSourceIExponent8Shard29,
      tropicalOverlapSourceJExponent8Shard29, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 29. -/
theorem tropicalOverlapRelation8_provenance_shard29 (i : Fin 5) :
    tropicalOverlapRelation8Shard29 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard29 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard29]
  unfold tropicalOverlapSourceCombination8Shard29
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard29,
    tropicalOverlapSourceJExponent8_replay_shard29]

end

end MonochromaticQuantumGraphs.N8D3
