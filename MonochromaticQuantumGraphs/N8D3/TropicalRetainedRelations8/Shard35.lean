import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 175--179. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 35. -/
def tropicalOverlapProvenance8Shard35 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 64, coordinateB := 90, sourceJ := 76, coordinateA := 86 },
  { epsilon := -1, sourceI := 66, coordinateB := 7, sourceJ := 67, coordinateA := 1 },
  { epsilon := 1, sourceI := 66, coordinateB := 89, sourceJ := 70, coordinateA := 86 },
  { epsilon := -1, sourceI := 66, coordinateB := 87, sourceJ := 74, coordinateA := 86 },
  { epsilon := 1, sourceI := 66, coordinateB := 90, sourceJ := 78, coordinateA := 86 }
]

/-- The five explicit sparse target polynomials in overlap shard 35. -/
def tropicalOverlapRelation8Shard35 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 104 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 115 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 86 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 75 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 86 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 86 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 75 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 115 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 87 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 104 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 115 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 86 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard35 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 90 101 141,
    tropicalOverlapDegreeFiveExponent8 1 58 90 112 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 90 141,
    tropicalOverlapDegreeFiveExponent8 9 41 86 90 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 90 126,
    tropicalOverlapDegreeFiveExponent8 19 52 69 90 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 101 141,
    tropicalOverlapDegreeFiveExponent8 1 7 64 112 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 86 141,
    tropicalOverlapDegreeFiveExponent8 7 11 41 86 141,
    tropicalOverlapDegreeFiveExponent8 7 11 52 86 126,
    tropicalOverlapDegreeFiveExponent8 7 19 52 75 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 89 101 141,
    tropicalOverlapDegreeFiveExponent8 1 64 89 112 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 89 141,
    tropicalOverlapDegreeFiveExponent8 11 41 86 89 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 89 126,
    tropicalOverlapDegreeFiveExponent8 19 52 75 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 87 101 141,
    tropicalOverlapDegreeFiveExponent8 1 64 87 112 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 87 141,
    tropicalOverlapDegreeFiveExponent8 11 41 86 87 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 87 126,
    tropicalOverlapDegreeFiveExponent8 19 52 75 87 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 90 101 141,
    tropicalOverlapDegreeFiveExponent8 1 64 90 112 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 90 141,
    tropicalOverlapDegreeFiveExponent8 11 41 86 90 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 90 126,
    tropicalOverlapDegreeFiveExponent8 19 52 75 90 119
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard35 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 104 141,
    tropicalOverlapDegreeFiveExponent8 1 59 86 115 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 90 141,
    tropicalOverlapDegreeFiveExponent8 9 41 86 90 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 90 126,
    tropicalOverlapDegreeFiveExponent8 20 52 69 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 101 141,
    tropicalOverlapDegreeFiveExponent8 1 7 64 112 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 86 141,
    tropicalOverlapDegreeFiveExponent8 1 17 41 86 141,
    tropicalOverlapDegreeFiveExponent8 1 17 52 86 126,
    tropicalOverlapDegreeFiveExponent8 1 25 52 75 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 101 141,
    tropicalOverlapDegreeFiveExponent8 1 65 86 112 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 89 141,
    tropicalOverlapDegreeFiveExponent8 11 41 86 89 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 89 126,
    tropicalOverlapDegreeFiveExponent8 20 52 75 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 86 104 141,
    tropicalOverlapDegreeFiveExponent8 1 64 86 115 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 87 141,
    tropicalOverlapDegreeFiveExponent8 11 41 86 87 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 87 126,
    tropicalOverlapDegreeFiveExponent8 19 52 75 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 104 141,
    tropicalOverlapDegreeFiveExponent8 1 65 86 115 126,
    tropicalOverlapDegreeFiveExponent8 1 75 86 90 141,
    tropicalOverlapDegreeFiveExponent8 11 41 86 90 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 90 126,
    tropicalOverlapDegreeFiveExponent8 20 52 75 86 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 35. -/
theorem tropicalOverlapSourceIExponent8_replay_shard35
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard35 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard35 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard35 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 35. -/
theorem tropicalOverlapSourceJExponent8_replay_shard35
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard35 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard35 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard35 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard35
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard35 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard35 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard35 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard35
    (i : Fin 5) :
    tropicalOverlapRelation8Shard35 i =
      tropicalOverlapSourceCombination8Shard35 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard35,
      tropicalOverlapSourceCombination8Shard35,
      tropicalOverlapProvenance8Shard35,
      tropicalOverlapSourceIExponent8Shard35,
      tropicalOverlapSourceJExponent8Shard35, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 35. -/
theorem tropicalOverlapRelation8_provenance_shard35 (i : Fin 5) :
    tropicalOverlapRelation8Shard35 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard35 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard35]
  unfold tropicalOverlapSourceCombination8Shard35
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard35,
    tropicalOverlapSourceJExponent8_replay_shard35]

end

end MonochromaticQuantumGraphs.N8D3
