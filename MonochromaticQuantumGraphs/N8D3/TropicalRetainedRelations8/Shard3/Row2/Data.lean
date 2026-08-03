import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 17. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 17. -/
def tropicalOverlapProvenance8Row17 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 3, coordinateB := 142, sourceJ := 163, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 17. -/
def tropicalOverlapRelation8Row17 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row17 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 98 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 108 126 142,
  tropicalOverlapDegreeFiveExponent8 7 75 88 138 142,
  tropicalOverlapDegreeFiveExponent8 17 41 88 138 142,
  tropicalOverlapDegreeFiveExponent8 17 51 88 126 142,
  tropicalOverlapDegreeFiveExponent8 26 51 75 116 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row17 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 98 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 109 127 138,
  tropicalOverlapDegreeFiveExponent8 7 75 88 138 142,
  tropicalOverlapDegreeFiveExponent8 17 41 88 138 142,
  tropicalOverlapDegreeFiveExponent8 17 52 88 127 138,
  tropicalOverlapDegreeFiveExponent8 26 52 75 117 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row17 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row17.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row17 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row17 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
