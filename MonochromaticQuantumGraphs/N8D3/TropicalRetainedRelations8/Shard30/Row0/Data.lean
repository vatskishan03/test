import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 150. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 150. -/
def tropicalOverlapProvenance8Row150 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 49, coordinateB := 139, sourceJ := 147, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 150. -/
def tropicalOverlapRelation8Row150 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row150 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 103 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 111 132 139,
  tropicalOverlapDegreeFiveExponent8 7 71 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 89 132 139,
  tropicalOverlapDegreeFiveExponent8 26 51 71 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row150 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 103 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 111 133 138,
  tropicalOverlapDegreeFiveExponent8 7 71 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 89 133 138,
  tropicalOverlapDegreeFiveExponent8 26 51 71 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row150 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row150.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row150 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row150 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
