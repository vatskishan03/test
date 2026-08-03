import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 53. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 53. -/
def tropicalOverlapProvenance8Row53 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 16, coordinateB := 142, sourceJ := 174, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 53. -/
def tropicalOverlapRelation8Row53 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 115 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row53 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 104 138 142,
  tropicalOverlapDegreeFiveExponent8 1 59 114 126 142,
  tropicalOverlapDegreeFiveExponent8 1 69 90 138 142,
  tropicalOverlapDegreeFiveExponent8 9 41 90 138 142,
  tropicalOverlapDegreeFiveExponent8 9 51 90 126 142,
  tropicalOverlapDegreeFiveExponent8 20 51 69 122 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row53 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 104 138 142,
  tropicalOverlapDegreeFiveExponent8 1 59 115 127 138,
  tropicalOverlapDegreeFiveExponent8 1 69 90 138 142,
  tropicalOverlapDegreeFiveExponent8 9 41 90 138 142,
  tropicalOverlapDegreeFiveExponent8 9 52 90 127 138,
  tropicalOverlapDegreeFiveExponent8 20 52 69 123 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row53 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row53.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row53 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row53 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
