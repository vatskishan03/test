import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 330--334. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 66. -/
def tropicalOverlapProvenance8Shard66 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 172, coordinateB := 7, sourceJ := 175, coordinateA := 0 },
  { epsilon := -1, sourceI := 176, coordinateB := 6, sourceJ := 177, coordinateA := 0 },
  { epsilon := -1, sourceI := 176, coordinateB := 1, sourceJ := 178, coordinateA := 0 },
  { epsilon := -1, sourceI := 176, coordinateB := 7, sourceJ := 179, coordinateA := 0 },
  { epsilon := -1, sourceI := 180, coordinateB := 7, sourceJ := 181, coordinateA := 6 }
]

/-- The five explicit sparse target polynomials in overlap shard 66. -/
def tropicalOverlapRelation8Shard66 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 69 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 75 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 75 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 75 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 42 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 52 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 70 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 39 88 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 49 88 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 70 117) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard66 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 104 142,
    tropicalOverlapDegreeFiveExponent8 0 7 59 115 127,
    tropicalOverlapDegreeFiveExponent8 0 7 69 90 142,
    tropicalOverlapDegreeFiveExponent8 7 9 38 90 142,
    tropicalOverlapDegreeFiveExponent8 7 9 49 90 127,
    tropicalOverlapDegreeFiveExponent8 7 20 49 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 104 142,
    tropicalOverlapDegreeFiveExponent8 0 6 65 115 127,
    tropicalOverlapDegreeFiveExponent8 0 6 75 90 142,
    tropicalOverlapDegreeFiveExponent8 6 11 38 90 142,
    tropicalOverlapDegreeFiveExponent8 6 11 49 90 127,
    tropicalOverlapDegreeFiveExponent8 6 20 49 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 104 142,
    tropicalOverlapDegreeFiveExponent8 0 1 65 115 127,
    tropicalOverlapDegreeFiveExponent8 0 1 75 90 142,
    tropicalOverlapDegreeFiveExponent8 1 11 38 90 142,
    tropicalOverlapDegreeFiveExponent8 1 11 49 90 127,
    tropicalOverlapDegreeFiveExponent8 1 20 49 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 104 142,
    tropicalOverlapDegreeFiveExponent8 0 7 65 115 127,
    tropicalOverlapDegreeFiveExponent8 0 7 75 90 142,
    tropicalOverlapDegreeFiveExponent8 7 11 38 90 142,
    tropicalOverlapDegreeFiveExponent8 7 11 49 90 127,
    tropicalOverlapDegreeFiveExponent8 7 20 49 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 59 99 142,
    tropicalOverlapDegreeFiveExponent8 6 7 59 109 130,
    tropicalOverlapDegreeFiveExponent8 6 7 70 88 142,
    tropicalOverlapDegreeFiveExponent8 7 15 39 88 142,
    tropicalOverlapDegreeFiveExponent8 7 15 49 88 130,
    tropicalOverlapDegreeFiveExponent8 7 26 49 70 117
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard66 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 104 142,
    tropicalOverlapDegreeFiveExponent8 0 7 59 115 127,
    tropicalOverlapDegreeFiveExponent8 0 7 69 90 142,
    tropicalOverlapDegreeFiveExponent8 0 15 41 90 142,
    tropicalOverlapDegreeFiveExponent8 0 15 52 90 127,
    tropicalOverlapDegreeFiveExponent8 0 26 52 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 104 142,
    tropicalOverlapDegreeFiveExponent8 0 6 65 115 127,
    tropicalOverlapDegreeFiveExponent8 0 6 75 90 142,
    tropicalOverlapDegreeFiveExponent8 0 17 38 90 142,
    tropicalOverlapDegreeFiveExponent8 0 17 49 90 127,
    tropicalOverlapDegreeFiveExponent8 0 26 49 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 104 142,
    tropicalOverlapDegreeFiveExponent8 0 1 65 115 127,
    tropicalOverlapDegreeFiveExponent8 0 1 75 90 142,
    tropicalOverlapDegreeFiveExponent8 0 11 41 90 142,
    tropicalOverlapDegreeFiveExponent8 0 11 52 90 127,
    tropicalOverlapDegreeFiveExponent8 0 20 52 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 104 142,
    tropicalOverlapDegreeFiveExponent8 0 7 65 115 127,
    tropicalOverlapDegreeFiveExponent8 0 7 75 90 142,
    tropicalOverlapDegreeFiveExponent8 0 17 41 90 142,
    tropicalOverlapDegreeFiveExponent8 0 17 52 90 127,
    tropicalOverlapDegreeFiveExponent8 0 26 52 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 59 99 142,
    tropicalOverlapDegreeFiveExponent8 6 7 59 109 130,
    tropicalOverlapDegreeFiveExponent8 6 7 70 88 142,
    tropicalOverlapDegreeFiveExponent8 6 15 42 88 142,
    tropicalOverlapDegreeFiveExponent8 6 15 52 88 130,
    tropicalOverlapDegreeFiveExponent8 6 26 52 70 117
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 66. -/
theorem tropicalOverlapSourceIExponent8_replay_shard66
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard66 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard66 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard66 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 66. -/
theorem tropicalOverlapSourceJExponent8_replay_shard66
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard66 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard66 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard66 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard66
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard66 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard66 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard66 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard66
    (i : Fin 5) :
    tropicalOverlapRelation8Shard66 i =
      tropicalOverlapSourceCombination8Shard66 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard66,
      tropicalOverlapSourceCombination8Shard66,
      tropicalOverlapProvenance8Shard66,
      tropicalOverlapSourceIExponent8Shard66,
      tropicalOverlapSourceJExponent8Shard66, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 66. -/
theorem tropicalOverlapRelation8_provenance_shard66 (i : Fin 5) :
    tropicalOverlapRelation8Shard66 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard66 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard66]
  unfold tropicalOverlapSourceCombination8Shard66
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard66,
    tropicalOverlapSourceJExponent8_replay_shard66]

end

end MonochromaticQuantumGraphs.N8D3
