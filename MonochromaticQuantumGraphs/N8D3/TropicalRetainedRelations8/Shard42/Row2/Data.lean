import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 212. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 212. -/
def tropicalOverlapProvenance8Row212 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 100, coordinateB := 89, sourceJ := 105, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 212. -/
def tropicalOverlapRelation8Row212 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 111 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row212 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 89 98 139,
  tropicalOverlapDegreeFiveExponent8 6 59 89 108 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 38 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 48 69 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row212 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 101 139,
  tropicalOverlapDegreeFiveExponent8 6 59 88 111 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 38 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 48 69 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row212 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row212.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row212 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row212 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
