import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 159. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 159. -/
def tropicalOverlapProvenance8Row159 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 58, coordinateB := 7, sourceJ := 59, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 159. -/
def tropicalOverlapRelation8Row159 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 77 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 77 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row159 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 77 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 43 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 90 132,
  tropicalOverlapDegreeFiveExponent8 7 20 51 77 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row159 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 77 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 43 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 90 132,
  tropicalOverlapDegreeFiveExponent8 1 26 51 77 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row159 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row159.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row159 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row159 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
