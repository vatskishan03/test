import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 55--59. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 11. -/
def tropicalOverlapProvenance8Shard11 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 17, coordinateB := 139, sourceJ := 115, coordinateA := 138 },
  { epsilon := 1, sourceI := 17, coordinateB := 142, sourceJ := 175, coordinateA := 138 },
  { epsilon := -1, sourceI := 18, coordinateB := 7, sourceJ := 19, coordinateA := 1 },
  { epsilon := 1, sourceI := 18, coordinateB := 141, sourceJ := 78, coordinateA := 138 },
  { epsilon := 1, sourceI := 18, coordinateB := 139, sourceJ := 118, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 11. -/
def tropicalOverlapRelation8Shard11 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 75 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 75 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 123 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard11 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 104 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 114 126 139,
    tropicalOverlapDegreeFiveExponent8 7 69 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 41 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 90 126 139,
    tropicalOverlapDegreeFiveExponent8 26 51 69 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 104 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 114 126 142,
    tropicalOverlapDegreeFiveExponent8 7 69 90 138 142,
    tropicalOverlapDegreeFiveExponent8 15 41 90 138 142,
    tropicalOverlapDegreeFiveExponent8 15 51 90 126 142,
    tropicalOverlapDegreeFiveExponent8 26 51 69 122 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 104 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 114 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 90 138,
    tropicalOverlapDegreeFiveExponent8 7 11 41 90 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 90 126,
    tropicalOverlapDegreeFiveExponent8 7 20 51 75 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 104 138 141,
    tropicalOverlapDegreeFiveExponent8 1 65 114 126 141,
    tropicalOverlapDegreeFiveExponent8 1 75 90 138 141,
    tropicalOverlapDegreeFiveExponent8 11 41 90 138 141,
    tropicalOverlapDegreeFiveExponent8 11 51 90 126 141,
    tropicalOverlapDegreeFiveExponent8 20 51 75 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 104 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 114 126 139,
    tropicalOverlapDegreeFiveExponent8 1 75 90 138 139,
    tropicalOverlapDegreeFiveExponent8 11 41 90 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 90 126 139,
    tropicalOverlapDegreeFiveExponent8 20 51 75 122 139
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard11 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 104 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 114 127 138,
    tropicalOverlapDegreeFiveExponent8 7 69 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 41 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 90 127 138,
    tropicalOverlapDegreeFiveExponent8 26 51 69 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 104 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 115 127 138,
    tropicalOverlapDegreeFiveExponent8 7 69 90 138 142,
    tropicalOverlapDegreeFiveExponent8 15 41 90 138 142,
    tropicalOverlapDegreeFiveExponent8 15 52 90 127 138,
    tropicalOverlapDegreeFiveExponent8 26 52 69 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 104 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 114 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 90 138,
    tropicalOverlapDegreeFiveExponent8 1 17 41 90 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 90 126,
    tropicalOverlapDegreeFiveExponent8 1 26 51 75 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 104 138 141,
    tropicalOverlapDegreeFiveExponent8 1 65 115 126 138,
    tropicalOverlapDegreeFiveExponent8 1 75 90 138 141,
    tropicalOverlapDegreeFiveExponent8 11 41 90 138 141,
    tropicalOverlapDegreeFiveExponent8 11 52 90 126 138,
    tropicalOverlapDegreeFiveExponent8 20 52 75 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 104 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 114 127 138,
    tropicalOverlapDegreeFiveExponent8 1 75 90 138 139,
    tropicalOverlapDegreeFiveExponent8 11 41 90 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 90 127 138,
    tropicalOverlapDegreeFiveExponent8 20 51 75 123 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 11. -/
theorem tropicalOverlapSourceIExponent8_replay_shard11
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard11 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard11 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard11 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 11. -/
theorem tropicalOverlapSourceJExponent8_replay_shard11
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard11 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard11 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard11 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard11
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard11 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard11 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard11 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard11
    (i : Fin 5) :
    tropicalOverlapRelation8Shard11 i =
      tropicalOverlapSourceCombination8Shard11 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard11,
      tropicalOverlapSourceCombination8Shard11,
      tropicalOverlapProvenance8Shard11,
      tropicalOverlapSourceIExponent8Shard11,
      tropicalOverlapSourceJExponent8Shard11, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 11. -/
theorem tropicalOverlapRelation8_provenance_shard11 (i : Fin 5) :
    tropicalOverlapRelation8Shard11 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard11 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard11]
  unfold tropicalOverlapSourceCombination8Shard11
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard11,
    tropicalOverlapSourceJExponent8_replay_shard11]

end

end MonochromaticQuantumGraphs.N8D3
