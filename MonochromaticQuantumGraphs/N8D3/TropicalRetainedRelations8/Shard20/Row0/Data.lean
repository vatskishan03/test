import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 100. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 100. -/
def tropicalOverlapProvenance8Row100 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 29, coordinateB := 142, sourceJ := 187, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 100. -/
def tropicalOverlapRelation8Row100 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row100 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 102 138 142,
  tropicalOverlapDegreeFiveExponent8 7 59 111 129 142,
  tropicalOverlapDegreeFiveExponent8 7 70 89 138 142,
  tropicalOverlapDegreeFiveExponent8 15 42 89 138 142,
  tropicalOverlapDegreeFiveExponent8 15 51 89 129 142,
  tropicalOverlapDegreeFiveExponent8 26 51 70 119 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row100 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 102 138 142,
  tropicalOverlapDegreeFiveExponent8 7 59 112 130 138,
  tropicalOverlapDegreeFiveExponent8 7 70 89 138 142,
  tropicalOverlapDegreeFiveExponent8 15 42 89 138 142,
  tropicalOverlapDegreeFiveExponent8 15 52 89 130 138,
  tropicalOverlapDegreeFiveExponent8 26 52 70 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row100 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row100.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row100 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row100 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
