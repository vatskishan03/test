import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 357. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 357. -/
def tropicalOverlapProvenance8Row357 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 196, coordinateB := 6, sourceJ := 197, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 357. -/
def tropicalOverlapRelation8Row357 : LaurentPolynomial (Fin 144) :=
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
      (tropicalOverlapDegreeFiveExponent8 6 20 49 76 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row357 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 105 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 115 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 90 142,
  tropicalOverlapDegreeFiveExponent8 6 11 39 90 142,
  tropicalOverlapDegreeFiveExponent8 6 11 49 90 130,
  tropicalOverlapDegreeFiveExponent8 6 20 49 76 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row357 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 105 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 115 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 39 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 49 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 49 76 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row357 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row357.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row357 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row357 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
