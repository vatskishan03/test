import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 51. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 51. -/
def tropicalOverlapProvenance8Row51 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 16, coordinateB := 141, sourceJ := 76, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 51. -/
def tropicalOverlapRelation8Row51 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row51 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 59 114 126 141,
  tropicalOverlapDegreeFiveExponent8 1 69 90 138 141,
  tropicalOverlapDegreeFiveExponent8 9 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 90 126 141,
  tropicalOverlapDegreeFiveExponent8 20 51 69 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row51 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 59 115 126 138,
  tropicalOverlapDegreeFiveExponent8 1 69 90 138 141,
  tropicalOverlapDegreeFiveExponent8 9 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 90 126 138,
  tropicalOverlapDegreeFiveExponent8 20 52 69 122 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row51 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row51.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row51 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row51 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
