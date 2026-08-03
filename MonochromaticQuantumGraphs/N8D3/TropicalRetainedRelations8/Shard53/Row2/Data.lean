import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 267. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 267. -/
def tropicalOverlapProvenance8Row267 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 128, coordinateB := 7, sourceJ := 131, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 267. -/
def tropicalOverlapRelation8Row267 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 76 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row267 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 102 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 111 130,
  tropicalOverlapDegreeFiveExponent8 0 7 76 89 139,
  tropicalOverlapDegreeFiveExponent8 7 11 39 89 139,
  tropicalOverlapDegreeFiveExponent8 7 11 48 89 130,
  tropicalOverlapDegreeFiveExponent8 7 20 48 76 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row267 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 102 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 111 130,
  tropicalOverlapDegreeFiveExponent8 0 7 76 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 42 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 51 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 51 76 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row267 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row267.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row267 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row267 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
