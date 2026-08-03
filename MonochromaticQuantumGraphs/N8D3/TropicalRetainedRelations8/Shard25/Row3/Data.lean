import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 128. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 128. -/
def tropicalOverlapProvenance8Row128 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 40, coordinateB := 88, sourceJ := 42, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 128. -/
def tropicalOverlapRelation8Row128 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 100 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 71 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row128 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 88 100 138,
  tropicalOverlapDegreeFiveExponent8 7 58 88 108 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 88 132,
  tropicalOverlapDegreeFiveExponent8 25 51 71 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row128 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 100 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 108 132,
  tropicalOverlapDegreeFiveExponent8 7 71 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 43 85 88 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 88 132,
  tropicalOverlapDegreeFiveExponent8 26 51 71 85 116
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row128 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row128.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row128 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row128 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
