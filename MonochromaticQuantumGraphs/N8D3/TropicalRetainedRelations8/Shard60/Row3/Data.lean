import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 303. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 303. -/
def tropicalOverlapProvenance8Row303 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 152, coordinateB := 1, sourceJ := 154, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 303. -/
def tropicalOverlapRelation8Row303 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 71 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 71 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row303 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 106 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 114 133,
  tropicalOverlapDegreeFiveExponent8 0 1 71 90 139,
  tropicalOverlapDegreeFiveExponent8 1 9 40 90 139,
  tropicalOverlapDegreeFiveExponent8 1 9 48 90 133,
  tropicalOverlapDegreeFiveExponent8 1 20 48 71 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row303 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 106 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 114 133,
  tropicalOverlapDegreeFiveExponent8 0 1 71 90 139,
  tropicalOverlapDegreeFiveExponent8 0 9 43 90 139,
  tropicalOverlapDegreeFiveExponent8 0 9 51 90 133,
  tropicalOverlapDegreeFiveExponent8 0 20 51 71 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row303 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row303.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row303 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row303 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
