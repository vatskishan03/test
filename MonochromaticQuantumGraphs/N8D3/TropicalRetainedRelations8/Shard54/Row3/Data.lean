import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 273. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 273. -/
def tropicalOverlapProvenance8Row273 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 132, coordinateB := 1, sourceJ := 134, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 273. -/
def tropicalOverlapRelation8Row273 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 70 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row273 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 105 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 114 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 90 139,
  tropicalOverlapDegreeFiveExponent8 1 9 39 90 139,
  tropicalOverlapDegreeFiveExponent8 1 9 48 90 130,
  tropicalOverlapDegreeFiveExponent8 1 20 48 70 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row273 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 105 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 114 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 90 139,
  tropicalOverlapDegreeFiveExponent8 0 9 42 90 139,
  tropicalOverlapDegreeFiveExponent8 0 9 51 90 130,
  tropicalOverlapDegreeFiveExponent8 0 20 51 70 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row273 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row273.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row273 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row273 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
