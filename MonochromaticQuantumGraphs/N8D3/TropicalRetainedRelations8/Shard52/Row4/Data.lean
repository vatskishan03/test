import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 264. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 264. -/
def tropicalOverlapProvenance8Row264 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 126, coordinateB := 90, sourceJ := 134, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 264. -/
def tropicalOverlapRelation8Row264 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 102 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 111 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row264 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 90 102 139,
  tropicalOverlapDegreeFiveExponent8 1 59 90 111 130,
  tropicalOverlapDegreeFiveExponent8 1 70 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 42 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 51 70 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row264 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 89 105 139,
  tropicalOverlapDegreeFiveExponent8 1 59 89 114 130,
  tropicalOverlapDegreeFiveExponent8 1 70 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 42 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 51 70 89 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row264 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row264.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row264 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row264 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
