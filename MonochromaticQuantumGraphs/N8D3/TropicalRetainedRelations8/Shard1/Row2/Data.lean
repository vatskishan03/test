import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 7. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 7. -/
def tropicalOverlapProvenance8Row7 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 1, coordinateB := 88, sourceJ := 3, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 7. -/
def tropicalOverlapRelation8Row7 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row7 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 88 98 138,
  tropicalOverlapDegreeFiveExponent8 7 64 88 108 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 88 126,
  tropicalOverlapDegreeFiveExponent8 25 51 75 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row7 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 98 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 108 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 41 85 88 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 88 126,
  tropicalOverlapDegreeFiveExponent8 26 51 75 85 116
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row7 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row7.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row7 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row7 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
