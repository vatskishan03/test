import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 19. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 19. -/
def tropicalOverlapProvenance8Row19 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 4, coordinateB := 141, sourceJ := 64, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 19. -/
def tropicalOverlapRelation8Row19 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row19 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 101 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 111 126 141,
  tropicalOverlapDegreeFiveExponent8 1 69 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 86 126 141,
  tropicalOverlapDegreeFiveExponent8 19 51 69 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row19 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 101 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 112 126 138,
  tropicalOverlapDegreeFiveExponent8 1 69 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 126 138,
  tropicalOverlapDegreeFiveExponent8 19 52 69 119 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row19 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row19.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row19 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row19 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
