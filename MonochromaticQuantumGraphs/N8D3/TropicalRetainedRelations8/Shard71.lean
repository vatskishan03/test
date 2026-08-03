import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 355--359. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 71. -/
def tropicalOverlapProvenance8Shard71 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 192, coordinateB := 1, sourceJ := 194, coordinateA := 0 },
  { epsilon := -1, sourceI := 192, coordinateB := 7, sourceJ := 195, coordinateA := 0 },
  { epsilon := -1, sourceI := 196, coordinateB := 6, sourceJ := 197, coordinateA := 0 },
  { epsilon := -1, sourceI := 196, coordinateB := 1, sourceJ := 198, coordinateA := 0 },
  { epsilon := -1, sourceI := 196, coordinateB := 7, sourceJ := 199, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 71. -/
def tropicalOverlapRelation8Shard71 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 70 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 70 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 76 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 76 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 76 123) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard71 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 105 142,
    tropicalOverlapDegreeFiveExponent8 0 1 59 115 130,
    tropicalOverlapDegreeFiveExponent8 0 1 70 90 142,
    tropicalOverlapDegreeFiveExponent8 1 9 39 90 142,
    tropicalOverlapDegreeFiveExponent8 1 9 49 90 130,
    tropicalOverlapDegreeFiveExponent8 1 20 49 70 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 105 142,
    tropicalOverlapDegreeFiveExponent8 0 7 59 115 130,
    tropicalOverlapDegreeFiveExponent8 0 7 70 90 142,
    tropicalOverlapDegreeFiveExponent8 7 9 39 90 142,
    tropicalOverlapDegreeFiveExponent8 7 9 49 90 130,
    tropicalOverlapDegreeFiveExponent8 7 20 49 70 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 105 142,
    tropicalOverlapDegreeFiveExponent8 0 6 65 115 130,
    tropicalOverlapDegreeFiveExponent8 0 6 76 90 142,
    tropicalOverlapDegreeFiveExponent8 6 11 39 90 142,
    tropicalOverlapDegreeFiveExponent8 6 11 49 90 130,
    tropicalOverlapDegreeFiveExponent8 6 20 49 76 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 105 142,
    tropicalOverlapDegreeFiveExponent8 0 1 65 115 130,
    tropicalOverlapDegreeFiveExponent8 0 1 76 90 142,
    tropicalOverlapDegreeFiveExponent8 1 11 39 90 142,
    tropicalOverlapDegreeFiveExponent8 1 11 49 90 130,
    tropicalOverlapDegreeFiveExponent8 1 20 49 76 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 105 142,
    tropicalOverlapDegreeFiveExponent8 0 7 65 115 130,
    tropicalOverlapDegreeFiveExponent8 0 7 76 90 142,
    tropicalOverlapDegreeFiveExponent8 7 11 39 90 142,
    tropicalOverlapDegreeFiveExponent8 7 11 49 90 130,
    tropicalOverlapDegreeFiveExponent8 7 20 49 76 123
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard71 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 105 142,
    tropicalOverlapDegreeFiveExponent8 0 1 59 115 130,
    tropicalOverlapDegreeFiveExponent8 0 1 70 90 142,
    tropicalOverlapDegreeFiveExponent8 0 9 42 90 142,
    tropicalOverlapDegreeFiveExponent8 0 9 52 90 130,
    tropicalOverlapDegreeFiveExponent8 0 20 52 70 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 105 142,
    tropicalOverlapDegreeFiveExponent8 0 7 59 115 130,
    tropicalOverlapDegreeFiveExponent8 0 7 70 90 142,
    tropicalOverlapDegreeFiveExponent8 0 15 42 90 142,
    tropicalOverlapDegreeFiveExponent8 0 15 52 90 130,
    tropicalOverlapDegreeFiveExponent8 0 26 52 70 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 105 142,
    tropicalOverlapDegreeFiveExponent8 0 6 65 115 130,
    tropicalOverlapDegreeFiveExponent8 0 6 76 90 142,
    tropicalOverlapDegreeFiveExponent8 0 17 39 90 142,
    tropicalOverlapDegreeFiveExponent8 0 17 49 90 130,
    tropicalOverlapDegreeFiveExponent8 0 26 49 76 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 105 142,
    tropicalOverlapDegreeFiveExponent8 0 1 65 115 130,
    tropicalOverlapDegreeFiveExponent8 0 1 76 90 142,
    tropicalOverlapDegreeFiveExponent8 0 11 42 90 142,
    tropicalOverlapDegreeFiveExponent8 0 11 52 90 130,
    tropicalOverlapDegreeFiveExponent8 0 20 52 76 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 105 142,
    tropicalOverlapDegreeFiveExponent8 0 7 65 115 130,
    tropicalOverlapDegreeFiveExponent8 0 7 76 90 142,
    tropicalOverlapDegreeFiveExponent8 0 17 42 90 142,
    tropicalOverlapDegreeFiveExponent8 0 17 52 90 130,
    tropicalOverlapDegreeFiveExponent8 0 26 52 76 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 71. -/
theorem tropicalOverlapSourceIExponent8_replay_shard71
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard71 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard71 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard71 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 71. -/
theorem tropicalOverlapSourceJExponent8_replay_shard71
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard71 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard71 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard71 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard71
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard71 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard71 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard71 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard71
    (i : Fin 5) :
    tropicalOverlapRelation8Shard71 i =
      tropicalOverlapSourceCombination8Shard71 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard71,
      tropicalOverlapSourceCombination8Shard71,
      tropicalOverlapProvenance8Shard71,
      tropicalOverlapSourceIExponent8Shard71,
      tropicalOverlapSourceJExponent8Shard71, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 71. -/
theorem tropicalOverlapRelation8_provenance_shard71 (i : Fin 5) :
    tropicalOverlapRelation8Shard71 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard71 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard71]
  unfold tropicalOverlapSourceCombination8Shard71
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard71,
    tropicalOverlapSourceJExponent8_replay_shard71]

end

end MonochromaticQuantumGraphs.N8D3
