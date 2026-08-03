import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 78. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 78. -/
def tropicalOverlapProvenance8Row78 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 22, coordinateB := 142, sourceJ := 181, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 78. -/
def tropicalOverlapRelation8Row78 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 116 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row78 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 99 138 142,
  tropicalOverlapDegreeFiveExponent8 7 59 108 129 142,
  tropicalOverlapDegreeFiveExponent8 7 70 88 138 142,
  tropicalOverlapDegreeFiveExponent8 15 42 88 138 142,
  tropicalOverlapDegreeFiveExponent8 15 51 88 129 142,
  tropicalOverlapDegreeFiveExponent8 26 51 70 116 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row78 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 99 138 142,
  tropicalOverlapDegreeFiveExponent8 7 59 109 130 138,
  tropicalOverlapDegreeFiveExponent8 7 70 88 138 142,
  tropicalOverlapDegreeFiveExponent8 15 42 88 138 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 130 138,
  tropicalOverlapDegreeFiveExponent8 26 52 70 117 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row78 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row78.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row78 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row78 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
