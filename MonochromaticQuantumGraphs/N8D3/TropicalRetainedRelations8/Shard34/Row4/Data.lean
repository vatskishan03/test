import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 174. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 174. -/
def tropicalOverlapProvenance8Row174 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 64, coordinateB := 87, sourceJ := 72, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 174. -/
def tropicalOverlapRelation8Row174 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 115 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row174 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 87 101 141,
  tropicalOverlapDegreeFiveExponent8 1 58 87 112 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 52 69 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row174 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 86 104 141,
  tropicalOverlapDegreeFiveExponent8 1 58 86 115 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 52 69 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row174 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row174.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row174 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row174 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
