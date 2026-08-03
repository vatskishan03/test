import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 145. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 145. -/
def tropicalOverlapProvenance8Row145 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 46, coordinateB := 89, sourceJ := 50, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 145. -/
def tropicalOverlapRelation8Row145 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row145 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 89 103 138,
  tropicalOverlapDegreeFiveExponent8 1 64 89 111 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 89 132,
  tropicalOverlapDegreeFiveExponent8 19 51 77 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row145 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 103 138,
  tropicalOverlapDegreeFiveExponent8 1 65 86 111 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 89 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 89 132,
  tropicalOverlapDegreeFiveExponent8 20 51 77 86 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row145 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row145.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row145 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row145 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
