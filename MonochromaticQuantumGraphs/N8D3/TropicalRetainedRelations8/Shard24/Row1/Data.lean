import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 121. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 121. -/
def tropicalOverlapProvenance8Row121 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 38, coordinateB := 7, sourceJ := 39, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 121. -/
def tropicalOverlapRelation8Row121 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 76 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row121 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 105 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 42 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 90 129,
  tropicalOverlapDegreeFiveExponent8 7 20 51 76 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row121 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 105 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 42 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 90 129,
  tropicalOverlapDegreeFiveExponent8 1 26 51 76 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row121 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row121.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row121 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row121 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
