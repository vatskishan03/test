import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 307. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 307. -/
def tropicalOverlapProvenance8Row307 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 156, coordinateB := 7, sourceJ := 159, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 307. -/
def tropicalOverlapRelation8Row307 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 77 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 77 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row307 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 106 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 114 133,
  tropicalOverlapDegreeFiveExponent8 0 7 77 90 139,
  tropicalOverlapDegreeFiveExponent8 7 11 40 90 139,
  tropicalOverlapDegreeFiveExponent8 7 11 48 90 133,
  tropicalOverlapDegreeFiveExponent8 7 20 48 77 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row307 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 106 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 114 133,
  tropicalOverlapDegreeFiveExponent8 0 7 77 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 43 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 51 90 133,
  tropicalOverlapDegreeFiveExponent8 0 26 51 77 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row307 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row307.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row307 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row307 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
