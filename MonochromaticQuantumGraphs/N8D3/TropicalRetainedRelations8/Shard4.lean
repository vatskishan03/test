import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 20--24. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 4. -/
def tropicalOverlapProvenance8Shard4 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 4, coordinateB := 89, sourceJ := 8, coordinateA := 86 },
  { epsilon := -1, sourceI := 4, coordinateB := 87, sourceJ := 12, coordinateA := 86 },
  { epsilon := 1, sourceI := 4, coordinateB := 90, sourceJ := 16, coordinateA := 86 },
  { epsilon := 1, sourceI := 5, coordinateB := 141, sourceJ := 65, coordinateA := 138 },
  { epsilon := -1, sourceI := 6, coordinateB := 7, sourceJ := 7, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 4. -/
def tropicalOverlapRelation8Shard4 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 87 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 101 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 111 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 104 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 114 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 86 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 75 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 86 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 75 119) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard4 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 89 101 138,
    tropicalOverlapDegreeFiveExponent8 1 58 89 111 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 41 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 89 126,
    tropicalOverlapDegreeFiveExponent8 19 51 69 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 87 101 138,
    tropicalOverlapDegreeFiveExponent8 1 58 87 111 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 87 138,
    tropicalOverlapDegreeFiveExponent8 9 41 86 87 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 87 126,
    tropicalOverlapDegreeFiveExponent8 19 51 69 87 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 90 101 138,
    tropicalOverlapDegreeFiveExponent8 1 58 90 111 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 90 138,
    tropicalOverlapDegreeFiveExponent8 9 41 86 90 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 90 126,
    tropicalOverlapDegreeFiveExponent8 19 51 69 90 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 101 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 111 126 141,
    tropicalOverlapDegreeFiveExponent8 7 69 86 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 86 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 86 126 141,
    tropicalOverlapDegreeFiveExponent8 25 51 69 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 101 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 111 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 86 138,
    tropicalOverlapDegreeFiveExponent8 7 11 41 86 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 86 126,
    tropicalOverlapDegreeFiveExponent8 7 19 51 75 119
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard4 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 101 138,
    tropicalOverlapDegreeFiveExponent8 1 59 86 111 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 41 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 89 126,
    tropicalOverlapDegreeFiveExponent8 20 51 69 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 86 104 138,
    tropicalOverlapDegreeFiveExponent8 1 58 86 114 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 87 138,
    tropicalOverlapDegreeFiveExponent8 9 41 86 87 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 87 126,
    tropicalOverlapDegreeFiveExponent8 19 51 69 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 104 138,
    tropicalOverlapDegreeFiveExponent8 1 59 86 114 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 90 138,
    tropicalOverlapDegreeFiveExponent8 9 41 86 90 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 90 126,
    tropicalOverlapDegreeFiveExponent8 20 51 69 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 101 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 112 126 138,
    tropicalOverlapDegreeFiveExponent8 7 69 86 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 86 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 86 126 138,
    tropicalOverlapDegreeFiveExponent8 25 52 69 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 101 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 111 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 86 138,
    tropicalOverlapDegreeFiveExponent8 1 17 41 86 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 86 126,
    tropicalOverlapDegreeFiveExponent8 1 25 51 75 119
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 4. -/
theorem tropicalOverlapSourceIExponent8_replay_shard4
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard4 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard4 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard4 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 4. -/
theorem tropicalOverlapSourceJExponent8_replay_shard4
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard4 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard4 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard4 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard4
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard4 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard4 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard4 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard4
    (i : Fin 5) :
    tropicalOverlapRelation8Shard4 i =
      tropicalOverlapSourceCombination8Shard4 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard4,
      tropicalOverlapSourceCombination8Shard4,
      tropicalOverlapProvenance8Shard4,
      tropicalOverlapSourceIExponent8Shard4,
      tropicalOverlapSourceJExponent8Shard4, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 4. -/
theorem tropicalOverlapRelation8_provenance_shard4 (i : Fin 5) :
    tropicalOverlapRelation8Shard4 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard4 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard4]
  unfold tropicalOverlapSourceCombination8Shard4
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard4,
    tropicalOverlapSourceJExponent8_replay_shard4]

end

end MonochromaticQuantumGraphs.N8D3
