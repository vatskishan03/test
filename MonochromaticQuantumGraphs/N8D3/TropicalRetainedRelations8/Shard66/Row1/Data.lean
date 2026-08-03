import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 331. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 331. -/
def tropicalOverlapProvenance8Row331 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 176, coordinateB := 6, sourceJ := 177, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 331. -/
def tropicalOverlapRelation8Row331 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 75 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row331 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 104 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 115 127,
  tropicalOverlapDegreeFiveExponent8 0 6 75 90 142,
  tropicalOverlapDegreeFiveExponent8 6 11 38 90 142,
  tropicalOverlapDegreeFiveExponent8 6 11 49 90 127,
  tropicalOverlapDegreeFiveExponent8 6 20 49 75 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row331 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 104 142,
  tropicalOverlapDegreeFiveExponent8 0 6 65 115 127,
  tropicalOverlapDegreeFiveExponent8 0 6 75 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 38 90 142,
  tropicalOverlapDegreeFiveExponent8 0 17 49 90 127,
  tropicalOverlapDegreeFiveExponent8 0 26 49 75 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row331 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row331.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row331 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row331 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
