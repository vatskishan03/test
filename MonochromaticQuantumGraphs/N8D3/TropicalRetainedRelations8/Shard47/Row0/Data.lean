import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 235. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 235. -/
def tropicalOverlapProvenance8Row235 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 110, coordinateB := 90, sourceJ := 118, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 235. -/
def tropicalOverlapRelation8Row235 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 101 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row235 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 90 101 139,
  tropicalOverlapDegreeFiveExponent8 1 65 90 111 127,
  tropicalOverlapDegreeFiveExponent8 1 75 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 41 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 51 75 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row235 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 89 104 139,
  tropicalOverlapDegreeFiveExponent8 1 65 89 114 127,
  tropicalOverlapDegreeFiveExponent8 1 75 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 41 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 51 75 89 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row235 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row235.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row235 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row235 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
