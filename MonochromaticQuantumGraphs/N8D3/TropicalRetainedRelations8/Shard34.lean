import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 170--174. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 34. -/
def tropicalOverlapProvenance8Shard34 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 61, coordinateB := 87, sourceJ := 75, coordinateA := 85 },
  { epsilon := 1, sourceI := 61, coordinateB := 90, sourceJ := 79, coordinateA := 85 },
  { epsilon := -1, sourceI := 64, coordinateB := 7, sourceJ := 65, coordinateA := 1 },
  { epsilon := 1, sourceI := 64, coordinateB := 89, sourceJ := 68, coordinateA := 86 },
  { epsilon := -1, sourceI := 64, coordinateB := 87, sourceJ := 72, coordinateA := 86 }
]

/-- The five explicit sparse target polynomials in overlap shard 34. -/
def tropicalOverlapRelation8Shard34 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 115 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 87 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 104 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 115 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 85 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 86 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 86 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 69 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 115 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 87 119) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard34 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 87 98 141,
    tropicalOverlapDegreeFiveExponent8 7 64 87 109 126,
    tropicalOverlapDegreeFiveExponent8 7 75 85 87 141,
    tropicalOverlapDegreeFiveExponent8 17 41 85 87 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 87 126,
    tropicalOverlapDegreeFiveExponent8 25 52 75 87 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 90 98 141,
    tropicalOverlapDegreeFiveExponent8 7 64 90 109 126,
    tropicalOverlapDegreeFiveExponent8 7 75 85 90 141,
    tropicalOverlapDegreeFiveExponent8 17 41 85 90 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 90 126,
    tropicalOverlapDegreeFiveExponent8 25 52 75 90 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 101 141,
    tropicalOverlapDegreeFiveExponent8 1 7 58 112 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 86 141,
    tropicalOverlapDegreeFiveExponent8 7 9 41 86 141,
    tropicalOverlapDegreeFiveExponent8 7 9 52 86 126,
    tropicalOverlapDegreeFiveExponent8 7 19 52 69 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 89 101 141,
    tropicalOverlapDegreeFiveExponent8 1 58 89 112 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 89 141,
    tropicalOverlapDegreeFiveExponent8 9 41 86 89 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 89 126,
    tropicalOverlapDegreeFiveExponent8 19 52 69 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 87 101 141,
    tropicalOverlapDegreeFiveExponent8 1 58 87 112 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 87 141,
    tropicalOverlapDegreeFiveExponent8 9 41 86 87 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 87 126,
    tropicalOverlapDegreeFiveExponent8 19 52 69 87 119
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard34 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 85 104 141,
    tropicalOverlapDegreeFiveExponent8 7 64 85 115 126,
    tropicalOverlapDegreeFiveExponent8 7 75 85 87 141,
    tropicalOverlapDegreeFiveExponent8 17 41 85 87 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 87 126,
    tropicalOverlapDegreeFiveExponent8 25 52 75 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 104 141,
    tropicalOverlapDegreeFiveExponent8 7 65 85 115 126,
    tropicalOverlapDegreeFiveExponent8 7 75 85 90 141,
    tropicalOverlapDegreeFiveExponent8 17 41 85 90 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 90 126,
    tropicalOverlapDegreeFiveExponent8 26 52 75 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 101 141,
    tropicalOverlapDegreeFiveExponent8 1 7 58 112 126,
    tropicalOverlapDegreeFiveExponent8 1 7 69 86 141,
    tropicalOverlapDegreeFiveExponent8 1 15 41 86 141,
    tropicalOverlapDegreeFiveExponent8 1 15 52 86 126,
    tropicalOverlapDegreeFiveExponent8 1 25 52 69 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 101 141,
    tropicalOverlapDegreeFiveExponent8 1 59 86 112 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 89 141,
    tropicalOverlapDegreeFiveExponent8 9 41 86 89 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 89 126,
    tropicalOverlapDegreeFiveExponent8 20 52 69 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 86 104 141,
    tropicalOverlapDegreeFiveExponent8 1 58 86 115 126,
    tropicalOverlapDegreeFiveExponent8 1 69 86 87 141,
    tropicalOverlapDegreeFiveExponent8 9 41 86 87 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 87 126,
    tropicalOverlapDegreeFiveExponent8 19 52 69 86 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 34. -/
theorem tropicalOverlapSourceIExponent8_replay_shard34
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard34 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard34 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard34 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 34. -/
theorem tropicalOverlapSourceJExponent8_replay_shard34
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard34 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard34 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard34 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard34
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard34 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard34 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard34 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard34
    (i : Fin 5) :
    tropicalOverlapRelation8Shard34 i =
      tropicalOverlapSourceCombination8Shard34 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard34,
      tropicalOverlapSourceCombination8Shard34,
      tropicalOverlapProvenance8Shard34,
      tropicalOverlapSourceIExponent8Shard34,
      tropicalOverlapSourceJExponent8Shard34, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 34. -/
theorem tropicalOverlapRelation8_provenance_shard34 (i : Fin 5) :
    tropicalOverlapRelation8Shard34 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard34 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard34]
  unfold tropicalOverlapSourceCombination8Shard34
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard34,
    tropicalOverlapSourceJExponent8_replay_shard34]

end

end MonochromaticQuantumGraphs.N8D3
