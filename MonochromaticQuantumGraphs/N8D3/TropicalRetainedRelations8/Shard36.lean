import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 180--184. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 36. -/
def tropicalOverlapProvenance8Shard36 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 68, coordinateB := 7, sourceJ := 69, coordinateA := 1 },
  { epsilon := -1, sourceI := 70, coordinateB := 7, sourceJ := 71, coordinateA := 1 },
  { epsilon := -1, sourceI := 72, coordinateB := 7, sourceJ := 73, coordinateA := 1 },
  { epsilon := -1, sourceI := 74, coordinateB := 7, sourceJ := 75, coordinateA := 1 },
  { epsilon := -1, sourceI := 76, coordinateB := 7, sourceJ := 77, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 36. -/
def tropicalOverlapRelation8Shard36 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 89 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 69 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 75 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 89 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 75 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 87 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 69 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 75 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 87 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 75 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 90 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 69 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard36 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 101 141,
    tropicalOverlapDegreeFiveExponent8 1 7 59 112 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 89 141,
    tropicalOverlapDegreeFiveExponent8 7 9 41 89 141,
    tropicalOverlapDegreeFiveExponent8 7 9 52 89 126,
    tropicalOverlapDegreeFiveExponent8 7 20 52 69 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 101 141,
    tropicalOverlapDegreeFiveExponent8 1 7 65 112 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 89 141,
    tropicalOverlapDegreeFiveExponent8 7 11 41 89 141,
    tropicalOverlapDegreeFiveExponent8 7 11 52 89 126,
    tropicalOverlapDegreeFiveExponent8 7 20 52 75 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 104 141,
    tropicalOverlapDegreeFiveExponent8 1 7 58 115 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 87 141,
    tropicalOverlapDegreeFiveExponent8 7 9 41 87 141,
    tropicalOverlapDegreeFiveExponent8 7 9 52 87 126,
    tropicalOverlapDegreeFiveExponent8 7 19 52 69 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 104 141,
    tropicalOverlapDegreeFiveExponent8 1 7 64 115 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 87 141,
    tropicalOverlapDegreeFiveExponent8 7 11 41 87 141,
    tropicalOverlapDegreeFiveExponent8 7 11 52 87 126,
    tropicalOverlapDegreeFiveExponent8 7 19 52 75 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 104 141,
    tropicalOverlapDegreeFiveExponent8 1 7 59 115 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 90 141,
    tropicalOverlapDegreeFiveExponent8 7 9 41 90 141,
    tropicalOverlapDegreeFiveExponent8 7 9 52 90 126,
    tropicalOverlapDegreeFiveExponent8 7 20 52 69 122
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard36 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 101 141,
    tropicalOverlapDegreeFiveExponent8 1 7 59 112 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 89 141,
    tropicalOverlapDegreeFiveExponent8 1 15 41 89 141,
    tropicalOverlapDegreeFiveExponent8 1 15 52 89 126,
    tropicalOverlapDegreeFiveExponent8 1 26 52 69 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 101 141,
    tropicalOverlapDegreeFiveExponent8 1 7 65 112 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 89 141,
    tropicalOverlapDegreeFiveExponent8 1 17 41 89 141,
    tropicalOverlapDegreeFiveExponent8 1 17 52 89 126,
    tropicalOverlapDegreeFiveExponent8 1 26 52 75 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 104 141,
    tropicalOverlapDegreeFiveExponent8 1 7 58 115 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 87 141,
    tropicalOverlapDegreeFiveExponent8 1 15 41 87 141,
    tropicalOverlapDegreeFiveExponent8 1 15 52 87 126,
    tropicalOverlapDegreeFiveExponent8 1 25 52 69 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 104 141,
    tropicalOverlapDegreeFiveExponent8 1 7 64 115 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 87 141,
    tropicalOverlapDegreeFiveExponent8 1 17 41 87 141,
    tropicalOverlapDegreeFiveExponent8 1 17 52 87 126,
    tropicalOverlapDegreeFiveExponent8 1 25 52 75 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 104 141,
    tropicalOverlapDegreeFiveExponent8 1 7 59 115 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 90 141,
    tropicalOverlapDegreeFiveExponent8 1 15 41 90 141,
    tropicalOverlapDegreeFiveExponent8 1 15 52 90 126,
    tropicalOverlapDegreeFiveExponent8 1 26 52 69 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 36. -/
theorem tropicalOverlapSourceIExponent8_replay_shard36
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard36 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard36 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard36 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 36. -/
theorem tropicalOverlapSourceJExponent8_replay_shard36
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard36 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard36 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard36 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard36
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard36 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard36 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard36 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard36
    (i : Fin 5) :
    tropicalOverlapRelation8Shard36 i =
      tropicalOverlapSourceCombination8Shard36 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard36,
      tropicalOverlapSourceCombination8Shard36,
      tropicalOverlapProvenance8Shard36,
      tropicalOverlapSourceIExponent8Shard36,
      tropicalOverlapSourceJExponent8Shard36, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 36. -/
theorem tropicalOverlapRelation8_provenance_shard36 (i : Fin 5) :
    tropicalOverlapRelation8Shard36 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard36 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard36]
  unfold tropicalOverlapSourceCombination8Shard36
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard36,
    tropicalOverlapSourceJExponent8_replay_shard36]

end

end MonochromaticQuantumGraphs.N8D3
