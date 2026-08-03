import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 45--49. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 9. -/
def tropicalOverlapProvenance8Shard9 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 12, coordinateB := 141, sourceJ := 72, coordinateA := 138 },
  { epsilon := 1, sourceI := 13, coordinateB := 141, sourceJ := 73, coordinateA := 138 },
  { epsilon := -1, sourceI := 14, coordinateB := 7, sourceJ := 15, coordinateA := 1 },
  { epsilon := 1, sourceI := 14, coordinateB := 141, sourceJ := 74, coordinateA := 138 },
  { epsilon := 1, sourceI := 15, coordinateB := 141, sourceJ := 75, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 9. -/
def tropicalOverlapRelation8Shard9 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 75 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 75 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 122 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard9 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 104 138 141,
    tropicalOverlapDegreeFiveExponent8 1 58 114 126 141,
    tropicalOverlapDegreeFiveExponent8 1 69 87 138 141,
    tropicalOverlapDegreeFiveExponent8 9 41 87 138 141,
    tropicalOverlapDegreeFiveExponent8 9 51 87 126 141,
    tropicalOverlapDegreeFiveExponent8 19 51 69 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 104 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 114 126 141,
    tropicalOverlapDegreeFiveExponent8 7 69 87 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 87 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 87 126 141,
    tropicalOverlapDegreeFiveExponent8 25 51 69 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 104 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 114 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 87 138,
    tropicalOverlapDegreeFiveExponent8 7 11 41 87 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 87 126,
    tropicalOverlapDegreeFiveExponent8 7 19 51 75 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 104 138 141,
    tropicalOverlapDegreeFiveExponent8 1 64 114 126 141,
    tropicalOverlapDegreeFiveExponent8 1 75 87 138 141,
    tropicalOverlapDegreeFiveExponent8 11 41 87 138 141,
    tropicalOverlapDegreeFiveExponent8 11 51 87 126 141,
    tropicalOverlapDegreeFiveExponent8 19 51 75 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 104 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 114 126 141,
    tropicalOverlapDegreeFiveExponent8 7 75 87 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 87 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 87 126 141,
    tropicalOverlapDegreeFiveExponent8 25 51 75 122 141
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard9 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 104 138 141,
    tropicalOverlapDegreeFiveExponent8 1 58 115 126 138,
    tropicalOverlapDegreeFiveExponent8 1 69 87 138 141,
    tropicalOverlapDegreeFiveExponent8 9 41 87 138 141,
    tropicalOverlapDegreeFiveExponent8 9 52 87 126 138,
    tropicalOverlapDegreeFiveExponent8 19 52 69 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 104 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 115 126 138,
    tropicalOverlapDegreeFiveExponent8 7 69 87 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 87 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 87 126 138,
    tropicalOverlapDegreeFiveExponent8 25 52 69 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 104 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 114 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 87 138,
    tropicalOverlapDegreeFiveExponent8 1 17 41 87 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 87 126,
    tropicalOverlapDegreeFiveExponent8 1 25 51 75 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 104 138 141,
    tropicalOverlapDegreeFiveExponent8 1 64 115 126 138,
    tropicalOverlapDegreeFiveExponent8 1 75 87 138 141,
    tropicalOverlapDegreeFiveExponent8 11 41 87 138 141,
    tropicalOverlapDegreeFiveExponent8 11 52 87 126 138,
    tropicalOverlapDegreeFiveExponent8 19 52 75 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 104 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 115 126 138,
    tropicalOverlapDegreeFiveExponent8 7 75 87 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 87 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 87 126 138,
    tropicalOverlapDegreeFiveExponent8 25 52 75 122 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 9. -/
theorem tropicalOverlapSourceIExponent8_replay_shard9
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard9 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard9 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard9 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 9. -/
theorem tropicalOverlapSourceJExponent8_replay_shard9
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard9 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard9 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard9 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard9
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard9 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard9 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard9 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard9
    (i : Fin 5) :
    tropicalOverlapRelation8Shard9 i =
      tropicalOverlapSourceCombination8Shard9 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard9,
      tropicalOverlapSourceCombination8Shard9,
      tropicalOverlapProvenance8Shard9,
      tropicalOverlapSourceIExponent8Shard9,
      tropicalOverlapSourceJExponent8Shard9, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 9. -/
theorem tropicalOverlapRelation8_provenance_shard9 (i : Fin 5) :
    tropicalOverlapRelation8Shard9 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard9 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard9]
  unfold tropicalOverlapSourceCombination8Shard9
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard9,
    tropicalOverlapSourceJExponent8_replay_shard9]

end

end MonochromaticQuantumGraphs.N8D3
