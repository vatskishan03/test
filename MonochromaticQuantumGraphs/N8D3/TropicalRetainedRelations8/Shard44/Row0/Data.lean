import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 220. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 220. -/
def tropicalOverlapProvenance8Row220 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 103, coordinateB := 89, sourceJ := 111, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 220. -/
def tropicalOverlapRelation8Row220 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row220 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 89 98 139,
  tropicalOverlapDegreeFiveExponent8 7 65 89 108 127,
  tropicalOverlapDegreeFiveExponent8 7 75 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 41 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 51 75 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row220 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 101 139,
  tropicalOverlapDegreeFiveExponent8 7 65 88 111 127,
  tropicalOverlapDegreeFiveExponent8 7 75 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 41 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 51 75 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row220 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row220.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row220 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row220 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
