import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 104. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 104. -/
def tropicalOverlapProvenance8Row104 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 30, coordinateB := 142, sourceJ := 190, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 104. -/
def tropicalOverlapRelation8Row104 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 112 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 129 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row104 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 102 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 111 129 142,
  tropicalOverlapDegreeFiveExponent8 1 76 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 42 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 51 89 129 142,
  tropicalOverlapDegreeFiveExponent8 20 51 76 119 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row104 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 102 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 112 130 138,
  tropicalOverlapDegreeFiveExponent8 1 76 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 42 89 138 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 130 138,
  tropicalOverlapDegreeFiveExponent8 20 52 76 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row104 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row104.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row104 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row104 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
