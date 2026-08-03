import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 283. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 283. -/
def tropicalOverlapProvenance8Row283 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 140, coordinateB := 89, sourceJ := 145, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 283. -/
def tropicalOverlapRelation8Row283 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 111 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 71 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row283 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 89 100 139,
  tropicalOverlapDegreeFiveExponent8 6 59 89 108 133,
  tropicalOverlapDegreeFiveExponent8 6 71 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 40 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 48 71 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row283 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 103 139,
  tropicalOverlapDegreeFiveExponent8 6 59 88 111 133,
  tropicalOverlapDegreeFiveExponent8 6 71 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 40 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 48 71 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row283 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row283.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row283 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row283 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
