import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 291. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 291. -/
def tropicalOverlapProvenance8Row291 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 143, coordinateB := 90, sourceJ := 159, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 291. -/
def tropicalOverlapRelation8Row291 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row291 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 90 100 139,
  tropicalOverlapDegreeFiveExponent8 7 65 90 108 133,
  tropicalOverlapDegreeFiveExponent8 7 77 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 51 77 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row291 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 106 139,
  tropicalOverlapDegreeFiveExponent8 7 65 88 114 133,
  tropicalOverlapDegreeFiveExponent8 7 77 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 51 77 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row291 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row291.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row291 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row291 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
