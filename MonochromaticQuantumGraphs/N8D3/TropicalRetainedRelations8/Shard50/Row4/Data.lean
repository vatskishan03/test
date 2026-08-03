import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 254. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 254. -/
def tropicalOverlapProvenance8Row254 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 122, coordinateB := 89, sourceJ := 129, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 254. -/
def tropicalOverlapRelation8Row254 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 111 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row254 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 89 99 139,
  tropicalOverlapDegreeFiveExponent8 6 65 89 108 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 39 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 48 76 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row254 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 102 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 111 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 39 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 48 76 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row254 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row254.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row254 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row254 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
