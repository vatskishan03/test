import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 169. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 169. -/
def tropicalOverlapProvenance8Row169 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 61, coordinateB := 89, sourceJ := 71, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 169. -/
def tropicalOverlapRelation8Row169 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row169 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 89 98 141,
  tropicalOverlapDegreeFiveExponent8 7 64 89 109 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 89 126,
  tropicalOverlapDegreeFiveExponent8 25 52 75 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row169 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 101 141,
  tropicalOverlapDegreeFiveExponent8 7 65 85 112 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 89 126,
  tropicalOverlapDegreeFiveExponent8 26 52 75 85 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row169 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row169.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row169 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row169 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
