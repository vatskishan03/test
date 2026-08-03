import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 60--64. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 12. -/
def tropicalOverlapProvenance8Shard12 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 18, coordinateB := 142, sourceJ := 178, coordinateA := 138 },
  { epsilon := 1, sourceI := 19, coordinateB := 141, sourceJ := 79, coordinateA := 138 },
  { epsilon := 1, sourceI := 19, coordinateB := 139, sourceJ := 119, coordinateA := 138 },
  { epsilon := 1, sourceI := 19, coordinateB := 142, sourceJ := 179, coordinateA := 138 },
  { epsilon := 1, sourceI := 20, coordinateB := 141, sourceJ := 80, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 12. -/
def tropicalOverlapRelation8Shard12 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 108 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 109 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 85 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 85 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 116 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard12 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 104 138 142,
    tropicalOverlapDegreeFiveExponent8 1 65 114 126 142,
    tropicalOverlapDegreeFiveExponent8 1 75 90 138 142,
    tropicalOverlapDegreeFiveExponent8 11 41 90 138 142,
    tropicalOverlapDegreeFiveExponent8 11 51 90 126 142,
    tropicalOverlapDegreeFiveExponent8 20 51 75 122 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 104 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 114 126 141,
    tropicalOverlapDegreeFiveExponent8 7 75 90 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 90 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 90 126 141,
    tropicalOverlapDegreeFiveExponent8 26 51 75 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 104 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 114 126 139,
    tropicalOverlapDegreeFiveExponent8 7 75 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 41 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 90 126 139,
    tropicalOverlapDegreeFiveExponent8 26 51 75 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 104 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 114 126 142,
    tropicalOverlapDegreeFiveExponent8 7 75 90 138 142,
    tropicalOverlapDegreeFiveExponent8 17 41 90 138 142,
    tropicalOverlapDegreeFiveExponent8 17 51 90 126 142,
    tropicalOverlapDegreeFiveExponent8 26 51 75 122 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 99 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 108 129 141,
    tropicalOverlapDegreeFiveExponent8 7 70 85 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 85 129 141,
    tropicalOverlapDegreeFiveExponent8 25 51 70 116 141
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard12 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 104 138 142,
    tropicalOverlapDegreeFiveExponent8 1 65 115 127 138,
    tropicalOverlapDegreeFiveExponent8 1 75 90 138 142,
    tropicalOverlapDegreeFiveExponent8 11 41 90 138 142,
    tropicalOverlapDegreeFiveExponent8 11 52 90 127 138,
    tropicalOverlapDegreeFiveExponent8 20 52 75 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 104 138 141,
    tropicalOverlapDegreeFiveExponent8 7 65 115 126 138,
    tropicalOverlapDegreeFiveExponent8 7 75 90 138 141,
    tropicalOverlapDegreeFiveExponent8 17 41 90 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 90 126 138,
    tropicalOverlapDegreeFiveExponent8 26 52 75 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 104 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 114 127 138,
    tropicalOverlapDegreeFiveExponent8 7 75 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 41 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 90 127 138,
    tropicalOverlapDegreeFiveExponent8 26 51 75 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 104 138 142,
    tropicalOverlapDegreeFiveExponent8 7 65 115 127 138,
    tropicalOverlapDegreeFiveExponent8 7 75 90 138 142,
    tropicalOverlapDegreeFiveExponent8 17 41 90 138 142,
    tropicalOverlapDegreeFiveExponent8 17 52 90 127 138,
    tropicalOverlapDegreeFiveExponent8 26 52 75 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 99 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 109 129 138,
    tropicalOverlapDegreeFiveExponent8 7 70 85 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 129 138,
    tropicalOverlapDegreeFiveExponent8 25 52 70 116 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 12. -/
theorem tropicalOverlapSourceIExponent8_replay_shard12
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard12 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard12 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard12 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 12. -/
theorem tropicalOverlapSourceJExponent8_replay_shard12
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard12 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard12 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard12 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard12
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard12 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard12 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard12 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard12
    (i : Fin 5) :
    tropicalOverlapRelation8Shard12 i =
      tropicalOverlapSourceCombination8Shard12 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard12,
      tropicalOverlapSourceCombination8Shard12,
      tropicalOverlapProvenance8Shard12,
      tropicalOverlapSourceIExponent8Shard12,
      tropicalOverlapSourceJExponent8Shard12, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 12. -/
theorem tropicalOverlapRelation8_provenance_shard12 (i : Fin 5) :
    tropicalOverlapRelation8Shard12 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard12 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard12]
  unfold tropicalOverlapSourceCombination8Shard12
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard12,
    tropicalOverlapSourceJExponent8_replay_shard12]

end

end MonochromaticQuantumGraphs.N8D3
