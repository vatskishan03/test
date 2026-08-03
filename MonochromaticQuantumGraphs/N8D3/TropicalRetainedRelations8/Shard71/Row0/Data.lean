import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 355. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 355. -/
def tropicalOverlapProvenance8Row355 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 192, coordinateB := 1, sourceJ := 194, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 355. -/
def tropicalOverlapRelation8Row355 : LaurentPolynomial (Fin 144) :=
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
      (tropicalOverlapDegreeFiveExponent8 1 20 49 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row355 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 90 142,
  tropicalOverlapDegreeFiveExponent8 1 9 39 90 142,
  tropicalOverlapDegreeFiveExponent8 1 9 49 90 130,
  tropicalOverlapDegreeFiveExponent8 1 20 49 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row355 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 90 142,
  tropicalOverlapDegreeFiveExponent8 0 9 42 90 142,
  tropicalOverlapDegreeFiveExponent8 0 9 52 90 130,
  tropicalOverlapDegreeFiveExponent8 0 20 52 70 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row355 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row355.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row355 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row355 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
