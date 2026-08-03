import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 190--194. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 38. -/
def tropicalOverlapProvenance8Shard38 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 80, coordinateB := 90, sourceJ := 97, coordinateA := 85 },
  { epsilon := 1, sourceI := 81, coordinateB := 88, sourceJ := 83, coordinateA := 85 },
  { epsilon := -1, sourceI := 81, coordinateB := 86, sourceJ := 87, coordinateA := 85 },
  { epsilon := 1, sourceI := 81, coordinateB := 89, sourceJ := 91, coordinateA := 85 },
  { epsilon := -1, sourceI := 81, coordinateB := 87, sourceJ := 95, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 38. -/
def tropicalOverlapRelation8Shard38 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 86 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 87 116) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard38 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 90 99 141,
    tropicalOverlapDegreeFiveExponent8 7 58 90 109 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 90 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 90 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 90 129,
    tropicalOverlapDegreeFiveExponent8 25 52 70 90 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 88 99 141,
    tropicalOverlapDegreeFiveExponent8 7 64 88 109 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 88 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 88 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 88 129,
    tropicalOverlapDegreeFiveExponent8 25 52 76 88 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 86 99 141,
    tropicalOverlapDegreeFiveExponent8 7 64 86 109 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 86 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 86 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 86 129,
    tropicalOverlapDegreeFiveExponent8 25 52 76 86 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 89 99 141,
    tropicalOverlapDegreeFiveExponent8 7 64 89 109 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 89 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 89 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 89 129,
    tropicalOverlapDegreeFiveExponent8 25 52 76 89 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 87 99 141,
    tropicalOverlapDegreeFiveExponent8 7 64 87 109 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 87 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 87 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 87 129,
    tropicalOverlapDegreeFiveExponent8 25 52 76 87 116
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard38 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 105 141,
    tropicalOverlapDegreeFiveExponent8 7 59 85 115 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 90 141,
    tropicalOverlapDegreeFiveExponent8 15 42 85 90 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 90 129,
    tropicalOverlapDegreeFiveExponent8 26 52 70 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 99 141,
    tropicalOverlapDegreeFiveExponent8 7 65 85 109 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 88 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 88 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 88 129,
    tropicalOverlapDegreeFiveExponent8 26 52 76 85 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 85 102 141,
    tropicalOverlapDegreeFiveExponent8 7 64 85 112 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 86 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 86 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 86 129,
    tropicalOverlapDegreeFiveExponent8 25 52 76 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 102 141,
    tropicalOverlapDegreeFiveExponent8 7 65 85 112 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 89 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 89 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 89 129,
    tropicalOverlapDegreeFiveExponent8 26 52 76 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 85 105 141,
    tropicalOverlapDegreeFiveExponent8 7 64 85 115 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 87 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 87 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 87 129,
    tropicalOverlapDegreeFiveExponent8 25 52 76 85 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 38. -/
theorem tropicalOverlapSourceIExponent8_replay_shard38
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard38 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard38 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard38 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 38. -/
theorem tropicalOverlapSourceJExponent8_replay_shard38
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard38 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard38 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard38 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard38
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard38 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard38 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard38 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard38
    (i : Fin 5) :
    tropicalOverlapRelation8Shard38 i =
      tropicalOverlapSourceCombination8Shard38 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard38,
      tropicalOverlapSourceCombination8Shard38,
      tropicalOverlapProvenance8Shard38,
      tropicalOverlapSourceIExponent8Shard38,
      tropicalOverlapSourceJExponent8Shard38, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 38. -/
theorem tropicalOverlapRelation8_provenance_shard38 (i : Fin 5) :
    tropicalOverlapRelation8Shard38 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard38 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard38]
  unfold tropicalOverlapSourceCombination8Shard38
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard38,
    tropicalOverlapSourceJExponent8_replay_shard38]

end

end MonochromaticQuantumGraphs.N8D3
