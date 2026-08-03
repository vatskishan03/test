import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 106. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 106. -/
def tropicalOverlapProvenance8Row106 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 31, coordinateB := 139, sourceJ := 131, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 106. -/
def tropicalOverlapRelation8Row106 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row106 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 102 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 111 129 139,
  tropicalOverlapDegreeFiveExponent8 7 76 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 89 129 139,
  tropicalOverlapDegreeFiveExponent8 26 51 76 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row106 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 102 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 111 130 138,
  tropicalOverlapDegreeFiveExponent8 7 76 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 89 130 138,
  tropicalOverlapDegreeFiveExponent8 26 51 76 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row106 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row106.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row106 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row106 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
