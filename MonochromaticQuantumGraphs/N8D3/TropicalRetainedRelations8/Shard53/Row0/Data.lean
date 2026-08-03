import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 265. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 265. -/
def tropicalOverlapProvenance8Row265 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 128, coordinateB := 6, sourceJ := 129, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 265. -/
def tropicalOverlapRelation8Row265 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 76 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row265 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 102 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 39 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 48 89 130,
  tropicalOverlapDegreeFiveExponent8 6 20 48 76 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row265 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 102 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 130,
  tropicalOverlapDegreeFiveExponent8 0 6 76 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 39 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 48 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 48 76 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row265 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row265.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row265 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row265 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
