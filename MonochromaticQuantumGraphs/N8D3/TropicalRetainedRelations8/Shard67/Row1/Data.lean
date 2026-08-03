import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 336. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 336. -/
def tropicalOverlapProvenance8Row336 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 180, coordinateB := 90, sourceJ := 193, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 336. -/
def tropicalOverlapRelation8Row336 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row336 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 90 99 142,
  tropicalOverlapDegreeFiveExponent8 6 59 90 109 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 39 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 49 70 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row336 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 105 142,
  tropicalOverlapDegreeFiveExponent8 6 59 88 115 130,
  tropicalOverlapDegreeFiveExponent8 6 70 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 39 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 49 70 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row336 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row336.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row336 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row336 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
