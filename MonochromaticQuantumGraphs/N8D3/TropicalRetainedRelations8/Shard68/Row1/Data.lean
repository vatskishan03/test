import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 341. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 341. -/
def tropicalOverlapProvenance8Row341 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 182, coordinateB := 90, sourceJ := 197, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 341. -/
def tropicalOverlapRelation8Row341 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row341 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 99 142,
  tropicalOverlapDegreeFiveExponent8 6 65 90 109 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 39 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 49 76 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row341 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 105 142,
  tropicalOverlapDegreeFiveExponent8 6 65 88 115 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 39 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 49 76 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row341 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row341.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row341 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row341 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
