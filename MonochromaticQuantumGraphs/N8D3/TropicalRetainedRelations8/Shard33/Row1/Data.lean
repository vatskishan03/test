import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 166. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 166. -/
def tropicalOverlapProvenance8Row166 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 60, coordinateB := 90, sourceJ := 77, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 166. -/
def tropicalOverlapRelation8Row166 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 104 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 115 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row166 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 90 98 141,
  tropicalOverlapDegreeFiveExponent8 7 58 90 109 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 90 126,
  tropicalOverlapDegreeFiveExponent8 25 52 69 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row166 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 104 141,
  tropicalOverlapDegreeFiveExponent8 7 59 85 115 126,
  tropicalOverlapDegreeFiveExponent8 7 69 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 90 126,
  tropicalOverlapDegreeFiveExponent8 26 52 69 85 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row166 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row166.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row166 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row166 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
