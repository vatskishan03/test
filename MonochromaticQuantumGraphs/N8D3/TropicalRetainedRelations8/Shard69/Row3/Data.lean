import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 348. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 348. -/
def tropicalOverlapProvenance8Row348 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 186, coordinateB := 90, sourceJ := 194, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 348. -/
def tropicalOverlapRelation8Row348 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 102 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 112 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row348 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 90 102 142,
  tropicalOverlapDegreeFiveExponent8 1 59 90 112 130,
  tropicalOverlapDegreeFiveExponent8 1 70 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 42 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 52 70 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row348 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 89 105 142,
  tropicalOverlapDegreeFiveExponent8 1 59 89 115 130,
  tropicalOverlapDegreeFiveExponent8 1 70 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 42 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 52 70 89 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row348 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row348.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row348 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row348 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
