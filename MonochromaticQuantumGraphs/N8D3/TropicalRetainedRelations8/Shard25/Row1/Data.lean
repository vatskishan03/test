import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 126. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 126. -/
def tropicalOverlapProvenance8Row126 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 39, coordinateB := 139, sourceJ := 139, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 126. -/
def tropicalOverlapRelation8Row126 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row126 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 105 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 114 129 139,
  tropicalOverlapDegreeFiveExponent8 7 76 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 90 129 139,
  tropicalOverlapDegreeFiveExponent8 26 51 76 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row126 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 105 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 114 130 138,
  tropicalOverlapDegreeFiveExponent8 7 76 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 90 130 138,
  tropicalOverlapDegreeFiveExponent8 26 51 76 123 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row126 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row126.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row126 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row126 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
