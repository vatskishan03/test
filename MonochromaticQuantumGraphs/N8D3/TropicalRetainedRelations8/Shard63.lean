import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 315--319. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 63. -/
def tropicalOverlapProvenance8Shard63 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 162, coordinateB := 90, sourceJ := 177, coordinateA := 88 },
  { epsilon := -1, sourceI := 163, coordinateB := 89, sourceJ := 171, coordinateA := 88 },
  { epsilon := -1, sourceI := 163, coordinateB := 90, sourceJ := 179, coordinateA := 88 },
  { epsilon := -1, sourceI := 164, coordinateB := 6, sourceJ := 165, coordinateA := 0 },
  { epsilon := -1, sourceI := 164, coordinateB := 1, sourceJ := 166, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 63. -/
def tropicalOverlapRelation8Shard63 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 112 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 69 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 69 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard63 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 90 98 142,
    tropicalOverlapDegreeFiveExponent8 6 65 90 109 127,
    tropicalOverlapDegreeFiveExponent8 6 75 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 38 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 49 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 49 75 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 89 98 142,
    tropicalOverlapDegreeFiveExponent8 7 65 89 109 127,
    tropicalOverlapDegreeFiveExponent8 7 75 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 41 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 52 75 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 90 98 142,
    tropicalOverlapDegreeFiveExponent8 7 65 90 109 127,
    tropicalOverlapDegreeFiveExponent8 7 75 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 41 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 52 75 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 101 142,
    tropicalOverlapDegreeFiveExponent8 0 6 59 112 127,
    tropicalOverlapDegreeFiveExponent8 0 6 69 89 142,
    tropicalOverlapDegreeFiveExponent8 6 9 38 89 142,
    tropicalOverlapDegreeFiveExponent8 6 9 49 89 127,
    tropicalOverlapDegreeFiveExponent8 6 20 49 69 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 101 142,
    tropicalOverlapDegreeFiveExponent8 0 1 59 112 127,
    tropicalOverlapDegreeFiveExponent8 0 1 69 89 142,
    tropicalOverlapDegreeFiveExponent8 1 9 38 89 142,
    tropicalOverlapDegreeFiveExponent8 1 9 49 89 127,
    tropicalOverlapDegreeFiveExponent8 1 20 49 69 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard63 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 104 142,
    tropicalOverlapDegreeFiveExponent8 6 65 88 115 127,
    tropicalOverlapDegreeFiveExponent8 6 75 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 38 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 49 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 49 75 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 101 142,
    tropicalOverlapDegreeFiveExponent8 7 65 88 112 127,
    tropicalOverlapDegreeFiveExponent8 7 75 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 41 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 52 75 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 104 142,
    tropicalOverlapDegreeFiveExponent8 7 65 88 115 127,
    tropicalOverlapDegreeFiveExponent8 7 75 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 41 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 52 75 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 101 142,
    tropicalOverlapDegreeFiveExponent8 0 6 59 112 127,
    tropicalOverlapDegreeFiveExponent8 0 6 69 89 142,
    tropicalOverlapDegreeFiveExponent8 0 15 38 89 142,
    tropicalOverlapDegreeFiveExponent8 0 15 49 89 127,
    tropicalOverlapDegreeFiveExponent8 0 26 49 69 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 101 142,
    tropicalOverlapDegreeFiveExponent8 0 1 59 112 127,
    tropicalOverlapDegreeFiveExponent8 0 1 69 89 142,
    tropicalOverlapDegreeFiveExponent8 0 9 41 89 142,
    tropicalOverlapDegreeFiveExponent8 0 9 52 89 127,
    tropicalOverlapDegreeFiveExponent8 0 20 52 69 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 63. -/
theorem tropicalOverlapSourceIExponent8_replay_shard63
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard63 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard63 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard63 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 63. -/
theorem tropicalOverlapSourceJExponent8_replay_shard63
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard63 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard63 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard63 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard63
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard63 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard63 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard63 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard63
    (i : Fin 5) :
    tropicalOverlapRelation8Shard63 i =
      tropicalOverlapSourceCombination8Shard63 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard63,
      tropicalOverlapSourceCombination8Shard63,
      tropicalOverlapProvenance8Shard63,
      tropicalOverlapSourceIExponent8Shard63,
      tropicalOverlapSourceJExponent8Shard63, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 63. -/
theorem tropicalOverlapRelation8_provenance_shard63 (i : Fin 5) :
    tropicalOverlapRelation8Shard63 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard63 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard63]
  unfold tropicalOverlapSourceCombination8Shard63
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard63,
    tropicalOverlapSourceJExponent8_replay_shard63]

end

end MonochromaticQuantumGraphs.N8D3
