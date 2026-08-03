import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 40. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 40. -/
def tropicalOverlapProvenance8Row40 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 10, coordinateB := 142, sourceJ := 170, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 40. -/
def tropicalOverlapRelation8Row40 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row40 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 101 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 111 126 142,
  tropicalOverlapDegreeFiveExponent8 1 75 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 41 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 51 89 126 142,
  tropicalOverlapDegreeFiveExponent8 20 51 75 119 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row40 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 101 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 112 127 138,
  tropicalOverlapDegreeFiveExponent8 1 75 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 41 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 127 138,
  tropicalOverlapDegreeFiveExponent8 20 52 75 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row40 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row40.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row40 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row40 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
