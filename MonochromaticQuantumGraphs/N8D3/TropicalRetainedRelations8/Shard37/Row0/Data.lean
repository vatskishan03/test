import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 185. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 185. -/
def tropicalOverlapProvenance8Row185 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 78, coordinateB := 7, sourceJ := 79, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 185. -/
def tropicalOverlapRelation8Row185 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 75 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 90 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 75 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row185 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 104 141,
  tropicalOverlapDegreeFiveExponent8 1 7 65 115 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 90 141,
  tropicalOverlapDegreeFiveExponent8 7 11 41 90 141,
  tropicalOverlapDegreeFiveExponent8 7 11 52 90 126,
  tropicalOverlapDegreeFiveExponent8 7 20 52 75 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row185 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 104 141,
  tropicalOverlapDegreeFiveExponent8 1 7 65 115 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 90 141,
  tropicalOverlapDegreeFiveExponent8 1 17 41 90 141,
  tropicalOverlapDegreeFiveExponent8 1 17 52 90 126,
  tropicalOverlapDegreeFiveExponent8 1 26 52 75 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row185 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row185.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row185 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row185 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
