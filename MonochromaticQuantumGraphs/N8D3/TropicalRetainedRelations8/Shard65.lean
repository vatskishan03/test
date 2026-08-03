import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 325--329. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 65. -/
def tropicalOverlapProvenance8Shard65 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 168, coordinateB := 7, sourceJ := 171, coordinateA := 0 },
  { epsilon := -1, sourceI := 168, coordinateB := 90, sourceJ := 176, coordinateA := 89 },
  { epsilon := -1, sourceI := 170, coordinateB := 90, sourceJ := 178, coordinateA := 89 },
  { epsilon := -1, sourceI := 172, coordinateB := 6, sourceJ := 173, coordinateA := 0 },
  { epsilon := -1, sourceI := 172, coordinateB := 1, sourceJ := 174, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 65. -/
def tropicalOverlapRelation8Shard65 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 75 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 101 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 112 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 101 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 112 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 69 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 69 123) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard65 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 101 142,
    tropicalOverlapDegreeFiveExponent8 0 7 65 112 127,
    tropicalOverlapDegreeFiveExponent8 0 7 75 89 142,
    tropicalOverlapDegreeFiveExponent8 7 11 38 89 142,
    tropicalOverlapDegreeFiveExponent8 7 11 49 89 127,
    tropicalOverlapDegreeFiveExponent8 7 20 49 75 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 90 101 142,
    tropicalOverlapDegreeFiveExponent8 0 65 90 112 127,
    tropicalOverlapDegreeFiveExponent8 0 75 89 90 142,
    tropicalOverlapDegreeFiveExponent8 11 38 89 90 142,
    tropicalOverlapDegreeFiveExponent8 11 49 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 49 75 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 90 101 142,
    tropicalOverlapDegreeFiveExponent8 1 65 90 112 127,
    tropicalOverlapDegreeFiveExponent8 1 75 89 90 142,
    tropicalOverlapDegreeFiveExponent8 11 41 89 90 142,
    tropicalOverlapDegreeFiveExponent8 11 52 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 52 75 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 104 142,
    tropicalOverlapDegreeFiveExponent8 0 6 59 115 127,
    tropicalOverlapDegreeFiveExponent8 0 6 69 90 142,
    tropicalOverlapDegreeFiveExponent8 6 9 38 90 142,
    tropicalOverlapDegreeFiveExponent8 6 9 49 90 127,
    tropicalOverlapDegreeFiveExponent8 6 20 49 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 104 142,
    tropicalOverlapDegreeFiveExponent8 0 1 59 115 127,
    tropicalOverlapDegreeFiveExponent8 0 1 69 90 142,
    tropicalOverlapDegreeFiveExponent8 1 9 38 90 142,
    tropicalOverlapDegreeFiveExponent8 1 9 49 90 127,
    tropicalOverlapDegreeFiveExponent8 1 20 49 69 123
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard65 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 101 142,
    tropicalOverlapDegreeFiveExponent8 0 7 65 112 127,
    tropicalOverlapDegreeFiveExponent8 0 7 75 89 142,
    tropicalOverlapDegreeFiveExponent8 0 17 41 89 142,
    tropicalOverlapDegreeFiveExponent8 0 17 52 89 127,
    tropicalOverlapDegreeFiveExponent8 0 26 52 75 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 89 104 142,
    tropicalOverlapDegreeFiveExponent8 0 65 89 115 127,
    tropicalOverlapDegreeFiveExponent8 0 75 89 90 142,
    tropicalOverlapDegreeFiveExponent8 11 38 89 90 142,
    tropicalOverlapDegreeFiveExponent8 11 49 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 49 75 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 89 104 142,
    tropicalOverlapDegreeFiveExponent8 1 65 89 115 127,
    tropicalOverlapDegreeFiveExponent8 1 75 89 90 142,
    tropicalOverlapDegreeFiveExponent8 11 41 89 90 142,
    tropicalOverlapDegreeFiveExponent8 11 52 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 52 75 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 104 142,
    tropicalOverlapDegreeFiveExponent8 0 6 59 115 127,
    tropicalOverlapDegreeFiveExponent8 0 6 69 90 142,
    tropicalOverlapDegreeFiveExponent8 0 15 38 90 142,
    tropicalOverlapDegreeFiveExponent8 0 15 49 90 127,
    tropicalOverlapDegreeFiveExponent8 0 26 49 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 104 142,
    tropicalOverlapDegreeFiveExponent8 0 1 59 115 127,
    tropicalOverlapDegreeFiveExponent8 0 1 69 90 142,
    tropicalOverlapDegreeFiveExponent8 0 9 41 90 142,
    tropicalOverlapDegreeFiveExponent8 0 9 52 90 127,
    tropicalOverlapDegreeFiveExponent8 0 20 52 69 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 65. -/
theorem tropicalOverlapSourceIExponent8_replay_shard65
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard65 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard65 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard65 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 65. -/
theorem tropicalOverlapSourceJExponent8_replay_shard65
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard65 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard65 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard65 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard65
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard65 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard65 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard65 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard65
    (i : Fin 5) :
    tropicalOverlapRelation8Shard65 i =
      tropicalOverlapSourceCombination8Shard65 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard65,
      tropicalOverlapSourceCombination8Shard65,
      tropicalOverlapProvenance8Shard65,
      tropicalOverlapSourceIExponent8Shard65,
      tropicalOverlapSourceJExponent8Shard65, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 65. -/
theorem tropicalOverlapRelation8_provenance_shard65 (i : Fin 5) :
    tropicalOverlapRelation8Shard65 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard65 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard65]
  unfold tropicalOverlapSourceCombination8Shard65
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard65,
    tropicalOverlapSourceJExponent8_replay_shard65]

end

end MonochromaticQuantumGraphs.N8D3
