import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 64. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 64. -/
def tropicalOverlapProvenance8Row64 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 20, coordinateB := 141, sourceJ := 80, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 64. -/
def tropicalOverlapRelation8Row64 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 108 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 109 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 85 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 85 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 116 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row64 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 99 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 108 129 141,
  tropicalOverlapDegreeFiveExponent8 7 70 85 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 85 129 141,
  tropicalOverlapDegreeFiveExponent8 25 51 70 116 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row64 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 99 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 109 129 138,
  tropicalOverlapDegreeFiveExponent8 7 70 85 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 129 138,
  tropicalOverlapDegreeFiveExponent8 25 52 70 116 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row64 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row64.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row64 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row64 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
