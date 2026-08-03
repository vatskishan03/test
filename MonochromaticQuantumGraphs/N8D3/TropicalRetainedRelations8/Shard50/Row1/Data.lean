import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 251. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 251. -/
def tropicalOverlapProvenance8Row251 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 121, coordinateB := 90, sourceJ := 135, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 251. -/
def tropicalOverlapRelation8Row251 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row251 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 90 99 139,
  tropicalOverlapDegreeFiveExponent8 7 59 90 108 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 42 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 51 70 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row251 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 105 139,
  tropicalOverlapDegreeFiveExponent8 7 59 88 114 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 42 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 51 70 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row251 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row251.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row251 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row251 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
