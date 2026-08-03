import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 232. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 232. -/
def tropicalOverlapProvenance8Row232 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 108, coordinateB := 142, sourceJ := 168, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 232. -/
def tropicalOverlapRelation8Row232 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row232 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 101 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 111 127 142,
  tropicalOverlapDegreeFiveExponent8 0 75 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 48 89 127 142,
  tropicalOverlapDegreeFiveExponent8 20 48 75 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row232 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 101 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 112 127 139,
  tropicalOverlapDegreeFiveExponent8 0 75 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 49 89 127 139,
  tropicalOverlapDegreeFiveExponent8 20 49 75 120 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row232 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row232.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row232 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row232 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
