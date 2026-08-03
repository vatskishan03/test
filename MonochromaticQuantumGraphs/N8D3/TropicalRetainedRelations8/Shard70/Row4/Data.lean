import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 354. -/
def tropicalOverlapProvenance8Row354 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 192, coordinateB := 6, sourceJ := 193, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 354. -/
def tropicalOverlapRelation8Row354 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row354 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 6 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 90 142,
  tropicalOverlapDegreeFiveExponent8 6 9 39 90 142,
  tropicalOverlapDegreeFiveExponent8 6 9 49 90 130,
  tropicalOverlapDegreeFiveExponent8 6 20 49 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row354 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 105 142,
  tropicalOverlapDegreeFiveExponent8 0 6 59 115 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 39 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 49 90 130,
  tropicalOverlapDegreeFiveExponent8 0 26 49 70 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row354 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row354.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row354 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row354 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
