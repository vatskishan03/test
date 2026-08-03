import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 338. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 338. -/
def tropicalOverlapProvenance8Row338 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 181, coordinateB := 90, sourceJ := 195, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 338. -/
def tropicalOverlapRelation8Row338 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row338 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 90 99 142,
  tropicalOverlapDegreeFiveExponent8 7 59 90 109 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 42 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 52 70 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row338 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 105 142,
  tropicalOverlapDegreeFiveExponent8 7 59 88 115 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 42 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 52 70 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row338 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row338.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row338 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row338 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
