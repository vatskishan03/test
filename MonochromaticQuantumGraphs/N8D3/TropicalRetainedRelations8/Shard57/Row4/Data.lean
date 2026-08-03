import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 289. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 289. -/
def tropicalOverlapProvenance8Row289 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 142, coordinateB := 90, sourceJ := 157, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 289. -/
def tropicalOverlapRelation8Row289 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row289 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 100 139,
  tropicalOverlapDegreeFiveExponent8 6 65 90 108 133,
  tropicalOverlapDegreeFiveExponent8 6 77 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 40 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 48 77 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row289 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 106 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 114 133,
  tropicalOverlapDegreeFiveExponent8 6 77 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 40 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 48 77 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row289 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row289.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row289 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row289 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
