import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 286. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 286. -/
def tropicalOverlapProvenance8Row286 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 141, coordinateB := 90, sourceJ := 155, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 286. -/
def tropicalOverlapRelation8Row286 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row286 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 90 100 139,
  tropicalOverlapDegreeFiveExponent8 7 59 90 108 133,
  tropicalOverlapDegreeFiveExponent8 7 71 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 43 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 51 71 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row286 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 106 139,
  tropicalOverlapDegreeFiveExponent8 7 59 88 114 133,
  tropicalOverlapDegreeFiveExponent8 7 71 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 43 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 90 133,
  tropicalOverlapDegreeFiveExponent8 26 51 71 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row286 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row286.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row286 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row286 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
