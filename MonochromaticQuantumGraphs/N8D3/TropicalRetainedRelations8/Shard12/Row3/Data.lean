import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 63. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 63. -/
def tropicalOverlapProvenance8Row63 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 19, coordinateB := 142, sourceJ := 179, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 63. -/
def tropicalOverlapRelation8Row63 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row63 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 104 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 114 126 142,
  tropicalOverlapDegreeFiveExponent8 7 75 90 138 142,
  tropicalOverlapDegreeFiveExponent8 17 41 90 138 142,
  tropicalOverlapDegreeFiveExponent8 17 51 90 126 142,
  tropicalOverlapDegreeFiveExponent8 26 51 75 122 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row63 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 104 138 142,
  tropicalOverlapDegreeFiveExponent8 7 65 115 127 138,
  tropicalOverlapDegreeFiveExponent8 7 75 90 138 142,
  tropicalOverlapDegreeFiveExponent8 17 41 90 138 142,
  tropicalOverlapDegreeFiveExponent8 17 52 90 127 138,
  tropicalOverlapDegreeFiveExponent8 26 52 75 123 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row63 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row63.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row63 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row63 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
