import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 146. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 146. -/
def tropicalOverlapProvenance8Row146 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 46, coordinateB := 87, sourceJ := 54, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 146. -/
def tropicalOverlapRelation8Row146 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 77 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row146 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 87 103 138,
  tropicalOverlapDegreeFiveExponent8 1 64 87 111 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 132,
  tropicalOverlapDegreeFiveExponent8 19 51 77 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row146 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 86 106 138,
  tropicalOverlapDegreeFiveExponent8 1 64 86 114 132,
  tropicalOverlapDegreeFiveExponent8 1 77 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 43 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 132,
  tropicalOverlapDegreeFiveExponent8 19 51 77 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row146 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row146.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row146 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row146 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
