import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 13. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 13. -/
def tropicalOverlapProvenance8Row13 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 2, coordinateB := 139, sourceJ := 101, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 13. -/
def tropicalOverlapRelation8Row13 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row13 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 98 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 108 126 139,
  tropicalOverlapDegreeFiveExponent8 7 69 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 41 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 126 139,
  tropicalOverlapDegreeFiveExponent8 26 51 69 116 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row13 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 98 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 108 127 138,
  tropicalOverlapDegreeFiveExponent8 7 69 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 41 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 127 138,
  tropicalOverlapDegreeFiveExponent8 26 51 69 117 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row13 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row13.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row13 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row13 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
