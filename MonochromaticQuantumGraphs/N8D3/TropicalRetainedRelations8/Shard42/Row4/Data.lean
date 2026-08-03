import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 214. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 214. -/
def tropicalOverlapProvenance8Row214 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 101, coordinateB := 89, sourceJ := 107, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 214. -/
def tropicalOverlapRelation8Row214 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 111 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row214 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 89 98 139,
  tropicalOverlapDegreeFiveExponent8 7 59 89 108 127,
  tropicalOverlapDegreeFiveExponent8 7 69 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 41 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 51 69 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row214 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 101 139,
  tropicalOverlapDegreeFiveExponent8 7 59 88 111 127,
  tropicalOverlapDegreeFiveExponent8 7 69 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 41 88 89 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 51 69 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row214 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row214.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row214 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row214 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
