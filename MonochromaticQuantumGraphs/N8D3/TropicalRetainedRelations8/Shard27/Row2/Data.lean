import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 137. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 137. -/
def tropicalOverlapProvenance8Row137 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 41, coordinateB := 90, sourceJ := 59, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 137. -/
def tropicalOverlapRelation8Row137 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 100 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 77 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row137 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 90 100 138,
  tropicalOverlapDegreeFiveExponent8 7 64 90 108 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 90 132,
  tropicalOverlapDegreeFiveExponent8 25 51 77 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row137 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 106 138,
  tropicalOverlapDegreeFiveExponent8 7 65 85 114 132,
  tropicalOverlapDegreeFiveExponent8 7 77 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 43 85 90 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 90 132,
  tropicalOverlapDegreeFiveExponent8 26 51 77 85 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row137 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row137.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row137 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row137 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
