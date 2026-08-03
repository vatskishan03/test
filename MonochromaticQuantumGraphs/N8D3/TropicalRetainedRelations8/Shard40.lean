import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 200--204. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 40. -/
def tropicalOverlapProvenance8Shard40 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 86, coordinateB := 7, sourceJ := 87, coordinateA := 1 },
  { epsilon := 1, sourceI := 86, coordinateB := 89, sourceJ := 90, coordinateA := 86 },
  { epsilon := -1, sourceI := 86, coordinateB := 87, sourceJ := 94, coordinateA := 86 },
  { epsilon := 1, sourceI := 86, coordinateB := 90, sourceJ := 98, coordinateA := 86 },
  { epsilon := -1, sourceI := 88, coordinateB := 7, sourceJ := 89, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 40. -/
def tropicalOverlapRelation8Shard40 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 76 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 86 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 86 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 76 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 87 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 86 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 70 119) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard40 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 102 141,
    tropicalOverlapDegreeFiveExponent8 1 7 64 112 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 86 141,
    tropicalOverlapDegreeFiveExponent8 7 11 42 86 141,
    tropicalOverlapDegreeFiveExponent8 7 11 52 86 129,
    tropicalOverlapDegreeFiveExponent8 7 19 52 76 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 89 102 141,
    tropicalOverlapDegreeFiveExponent8 1 64 89 112 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 89 141,
    tropicalOverlapDegreeFiveExponent8 11 42 86 89 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 89 129,
    tropicalOverlapDegreeFiveExponent8 19 52 76 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 87 102 141,
    tropicalOverlapDegreeFiveExponent8 1 64 87 112 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 87 141,
    tropicalOverlapDegreeFiveExponent8 11 42 86 87 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 87 129,
    tropicalOverlapDegreeFiveExponent8 19 52 76 87 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 90 102 141,
    tropicalOverlapDegreeFiveExponent8 1 64 90 112 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 90 141,
    tropicalOverlapDegreeFiveExponent8 11 42 86 90 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 90 129,
    tropicalOverlapDegreeFiveExponent8 19 52 76 90 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 102 141,
    tropicalOverlapDegreeFiveExponent8 1 7 59 112 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 89 141,
    tropicalOverlapDegreeFiveExponent8 7 9 42 89 141,
    tropicalOverlapDegreeFiveExponent8 7 9 52 89 129,
    tropicalOverlapDegreeFiveExponent8 7 20 52 70 119
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard40 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 102 141,
    tropicalOverlapDegreeFiveExponent8 1 7 64 112 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 86 141,
    tropicalOverlapDegreeFiveExponent8 1 17 42 86 141,
    tropicalOverlapDegreeFiveExponent8 1 17 52 86 129,
    tropicalOverlapDegreeFiveExponent8 1 25 52 76 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 102 141,
    tropicalOverlapDegreeFiveExponent8 1 65 86 112 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 89 141,
    tropicalOverlapDegreeFiveExponent8 11 42 86 89 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 89 129,
    tropicalOverlapDegreeFiveExponent8 20 52 76 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 86 105 141,
    tropicalOverlapDegreeFiveExponent8 1 64 86 115 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 87 141,
    tropicalOverlapDegreeFiveExponent8 11 42 86 87 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 87 129,
    tropicalOverlapDegreeFiveExponent8 19 52 76 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 105 141,
    tropicalOverlapDegreeFiveExponent8 1 65 86 115 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 90 141,
    tropicalOverlapDegreeFiveExponent8 11 42 86 90 141,
    tropicalOverlapDegreeFiveExponent8 11 52 86 90 129,
    tropicalOverlapDegreeFiveExponent8 20 52 76 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 102 141,
    tropicalOverlapDegreeFiveExponent8 1 7 59 112 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 89 141,
    tropicalOverlapDegreeFiveExponent8 1 15 42 89 141,
    tropicalOverlapDegreeFiveExponent8 1 15 52 89 129,
    tropicalOverlapDegreeFiveExponent8 1 26 52 70 119
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 40. -/
theorem tropicalOverlapSourceIExponent8_replay_shard40
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard40 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard40 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard40 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 40. -/
theorem tropicalOverlapSourceJExponent8_replay_shard40
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard40 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard40 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard40 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard40
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard40 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard40 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard40 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard40
    (i : Fin 5) :
    tropicalOverlapRelation8Shard40 i =
      tropicalOverlapSourceCombination8Shard40 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard40,
      tropicalOverlapSourceCombination8Shard40,
      tropicalOverlapProvenance8Shard40,
      tropicalOverlapSourceIExponent8Shard40,
      tropicalOverlapSourceJExponent8Shard40, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 40. -/
theorem tropicalOverlapRelation8_provenance_shard40 (i : Fin 5) :
    tropicalOverlapRelation8Shard40 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard40 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard40]
  unfold tropicalOverlapSourceCombination8Shard40
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard40,
    tropicalOverlapSourceJExponent8_replay_shard40]

end

end MonochromaticQuantumGraphs.N8D3
