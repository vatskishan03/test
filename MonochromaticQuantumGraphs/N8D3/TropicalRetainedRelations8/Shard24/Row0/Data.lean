import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 120. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 120. -/
def tropicalOverlapProvenance8Row120 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 37, coordinateB := 142, sourceJ := 195, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 120. -/
def tropicalOverlapRelation8Row120 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 115 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row120 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 105 138 142,
  tropicalOverlapDegreeFiveExponent8 7 59 114 129 142,
  tropicalOverlapDegreeFiveExponent8 7 70 90 138 142,
  tropicalOverlapDegreeFiveExponent8 15 42 90 138 142,
  tropicalOverlapDegreeFiveExponent8 15 51 90 129 142,
  tropicalOverlapDegreeFiveExponent8 26 51 70 122 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row120 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 105 138 142,
  tropicalOverlapDegreeFiveExponent8 7 59 115 130 138,
  tropicalOverlapDegreeFiveExponent8 7 70 90 138 142,
  tropicalOverlapDegreeFiveExponent8 15 42 90 138 142,
  tropicalOverlapDegreeFiveExponent8 15 52 90 130 138,
  tropicalOverlapDegreeFiveExponent8 26 52 70 123 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row120 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row120.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row120 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row120 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
