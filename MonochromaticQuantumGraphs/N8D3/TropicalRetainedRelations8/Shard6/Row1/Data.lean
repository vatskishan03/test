import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 31. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 31. -/
def tropicalOverlapProvenance8Row31 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 8, coordinateB := 141, sourceJ := 68, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 31. -/
def tropicalOverlapRelation8Row31 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row31 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 101 138 141,
  tropicalOverlapDegreeFiveExponent8 1 59 111 126 141,
  tropicalOverlapDegreeFiveExponent8 1 69 89 138 141,
  tropicalOverlapDegreeFiveExponent8 9 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 89 126 141,
  tropicalOverlapDegreeFiveExponent8 20 51 69 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row31 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 101 138 141,
  tropicalOverlapDegreeFiveExponent8 1 59 112 126 138,
  tropicalOverlapDegreeFiveExponent8 1 69 89 138 141,
  tropicalOverlapDegreeFiveExponent8 9 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 89 126 138,
  tropicalOverlapDegreeFiveExponent8 20 52 69 119 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row31 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row31.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row31 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row31 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
