import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 162. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 162. -/
def tropicalOverlapProvenance8Row162 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 60, coordinateB := 88, sourceJ := 62, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 162. -/
def tropicalOverlapRelation8Row162 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row162 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 88 98 141,
  tropicalOverlapDegreeFiveExponent8 7 58 88 109 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 88 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 88 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 88 126,
  tropicalOverlapDegreeFiveExponent8 25 52 69 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row162 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 98 141,
  tropicalOverlapDegreeFiveExponent8 7 59 85 109 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 88 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 88 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 88 126,
  tropicalOverlapDegreeFiveExponent8 26 52 69 85 116
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row162 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row162.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row162 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row162 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
