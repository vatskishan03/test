import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 305. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 305. -/
def tropicalOverlapProvenance8Row305 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 156, coordinateB := 6, sourceJ := 157, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 305. -/
def tropicalOverlapRelation8Row305 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 40 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 77 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 77 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row305 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 106 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 114 133,
  tropicalOverlapDegreeFiveExponent8 0 6 77 90 139,
  tropicalOverlapDegreeFiveExponent8 6 11 40 90 139,
  tropicalOverlapDegreeFiveExponent8 6 11 48 90 133,
  tropicalOverlapDegreeFiveExponent8 6 20 48 77 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row305 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 106 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 114 133,
  tropicalOverlapDegreeFiveExponent8 0 6 77 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 40 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 48 90 133,
  tropicalOverlapDegreeFiveExponent8 0 26 48 77 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row305 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row305.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row305 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row305 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
