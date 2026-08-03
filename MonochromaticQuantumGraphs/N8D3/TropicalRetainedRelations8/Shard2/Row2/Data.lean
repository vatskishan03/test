import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 12. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 12. -/
def tropicalOverlapProvenance8Row12 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 2, coordinateB := 141, sourceJ := 62, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 12. -/
def tropicalOverlapRelation8Row12 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 116 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row12 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 98 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 108 126 141,
  tropicalOverlapDegreeFiveExponent8 7 69 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 88 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 69 116 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row12 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 98 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 109 126 138,
  tropicalOverlapDegreeFiveExponent8 7 69 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 88 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 88 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 69 116 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row12 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row12.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row12 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row12 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
