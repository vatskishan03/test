import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 170. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 170. -/
def tropicalOverlapProvenance8Row170 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 61, coordinateB := 87, sourceJ := 75, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 170. -/
def tropicalOverlapRelation8Row170 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 115 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row170 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 87 98 141,
  tropicalOverlapDegreeFiveExponent8 7 64 87 109 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 87 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 87 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 87 126,
  tropicalOverlapDegreeFiveExponent8 25 52 75 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row170 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 104 141,
  tropicalOverlapDegreeFiveExponent8 7 64 85 115 126,
  tropicalOverlapDegreeFiveExponent8 7 75 85 87 141,
  tropicalOverlapDegreeFiveExponent8 17 41 85 87 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 87 126,
  tropicalOverlapDegreeFiveExponent8 25 52 75 85 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row170 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row170.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row170 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row170 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
