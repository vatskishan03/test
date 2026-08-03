import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 250. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 250. -/
def tropicalOverlapProvenance8Row250 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 121, coordinateB := 89, sourceJ := 127, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 250. -/
def tropicalOverlapRelation8Row250 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 111 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row250 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 89 99 139,
  tropicalOverlapDegreeFiveExponent8 7 59 89 108 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 42 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 51 70 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row250 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 102 139,
  tropicalOverlapDegreeFiveExponent8 7 59 88 111 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 42 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 51 70 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row250 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row250.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row250 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row250 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
