import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 185--189. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 37. -/
def tropicalOverlapProvenance8Shard37 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 78, coordinateB := 7, sourceJ := 79, coordinateA := 1 },
  { epsilon := 1, sourceI := 80, coordinateB := 88, sourceJ := 82, coordinateA := 85 },
  { epsilon := -1, sourceI := 80, coordinateB := 86, sourceJ := 85, coordinateA := 85 },
  { epsilon := 1, sourceI := 80, coordinateB := 89, sourceJ := 89, coordinateA := 85 },
  { epsilon := -1, sourceI := 80, coordinateB := 87, sourceJ := 93, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 37. -/
def tropicalOverlapRelation8Shard37 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 75 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 90 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 75 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 86 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 87 116) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard37 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 104 141,
    tropicalOverlapDegreeFiveExponent8 1 7 65 115 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 90 141,
    tropicalOverlapDegreeFiveExponent8 7 11 41 90 141,
    tropicalOverlapDegreeFiveExponent8 7 11 52 90 126,
    tropicalOverlapDegreeFiveExponent8 7 20 52 75 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 88 99 141,
    tropicalOverlapDegreeFiveExponent8 7 58 88 109 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 88 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 88 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 88 129,
    tropicalOverlapDegreeFiveExponent8 25 52 70 88 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 86 99 141,
    tropicalOverlapDegreeFiveExponent8 7 58 86 109 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 86 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 86 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 86 129,
    tropicalOverlapDegreeFiveExponent8 25 52 70 86 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 89 99 141,
    tropicalOverlapDegreeFiveExponent8 7 58 89 109 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 89 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 89 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 89 129,
    tropicalOverlapDegreeFiveExponent8 25 52 70 89 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 87 99 141,
    tropicalOverlapDegreeFiveExponent8 7 58 87 109 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 87 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 87 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 87 129,
    tropicalOverlapDegreeFiveExponent8 25 52 70 87 116
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard37 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 104 141,
    tropicalOverlapDegreeFiveExponent8 1 7 65 115 126,
    tropicalOverlapDegreeFiveExponent8 1 7 75 90 141,
    tropicalOverlapDegreeFiveExponent8 1 17 41 90 141,
    tropicalOverlapDegreeFiveExponent8 1 17 52 90 126,
    tropicalOverlapDegreeFiveExponent8 1 26 52 75 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 99 141,
    tropicalOverlapDegreeFiveExponent8 7 59 85 109 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 88 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 88 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 88 129,
    tropicalOverlapDegreeFiveExponent8 26 52 70 85 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 102 141,
    tropicalOverlapDegreeFiveExponent8 7 58 85 112 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 86 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 86 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 86 129,
    tropicalOverlapDegreeFiveExponent8 25 52 70 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 102 141,
    tropicalOverlapDegreeFiveExponent8 7 59 85 112 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 89 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 89 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 89 129,
    tropicalOverlapDegreeFiveExponent8 26 52 70 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 105 141,
    tropicalOverlapDegreeFiveExponent8 7 58 85 115 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 87 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 87 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 87 129,
    tropicalOverlapDegreeFiveExponent8 25 52 70 85 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 37. -/
theorem tropicalOverlapSourceIExponent8_replay_shard37
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard37 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard37 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard37 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 37. -/
theorem tropicalOverlapSourceJExponent8_replay_shard37
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard37 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard37 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard37 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard37
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard37 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard37 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard37 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard37
    (i : Fin 5) :
    tropicalOverlapRelation8Shard37 i =
      tropicalOverlapSourceCombination8Shard37 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard37,
      tropicalOverlapSourceCombination8Shard37,
      tropicalOverlapProvenance8Shard37,
      tropicalOverlapSourceIExponent8Shard37,
      tropicalOverlapSourceJExponent8Shard37, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 37. -/
theorem tropicalOverlapRelation8_provenance_shard37 (i : Fin 5) :
    tropicalOverlapRelation8Shard37 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard37 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard37]
  unfold tropicalOverlapSourceCombination8Shard37
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard37,
    tropicalOverlapSourceJExponent8_replay_shard37]

end

end MonochromaticQuantumGraphs.N8D3
