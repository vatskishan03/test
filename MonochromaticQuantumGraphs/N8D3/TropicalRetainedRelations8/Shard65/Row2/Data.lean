import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 327. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 327. -/
def tropicalOverlapProvenance8Row327 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 170, coordinateB := 90, sourceJ := 178, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 327. -/
def tropicalOverlapRelation8Row327 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 101 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 112 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row327 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 90 101 142,
  tropicalOverlapDegreeFiveExponent8 1 65 90 112 127,
  tropicalOverlapDegreeFiveExponent8 1 75 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 41 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 52 75 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row327 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 89 104 142,
  tropicalOverlapDegreeFiveExponent8 1 65 89 115 127,
  tropicalOverlapDegreeFiveExponent8 1 75 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 41 89 90 142,
  tropicalOverlapDegreeFiveExponent8 11 52 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 52 75 89 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row327 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row327.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row327 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row327 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
