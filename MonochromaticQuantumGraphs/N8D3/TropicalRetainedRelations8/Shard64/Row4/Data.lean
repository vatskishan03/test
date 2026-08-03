import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 324. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 324. -/
def tropicalOverlapProvenance8Row324 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 168, coordinateB := 1, sourceJ := 170, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 324. -/
def tropicalOverlapRelation8Row324 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 75 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row324 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 101 142,
  tropicalOverlapDegreeFiveExponent8 0 1 65 112 127,
  tropicalOverlapDegreeFiveExponent8 0 1 75 89 142,
  tropicalOverlapDegreeFiveExponent8 1 11 38 89 142,
  tropicalOverlapDegreeFiveExponent8 1 11 49 89 127,
  tropicalOverlapDegreeFiveExponent8 1 20 49 75 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row324 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 101 142,
  tropicalOverlapDegreeFiveExponent8 0 1 65 112 127,
  tropicalOverlapDegreeFiveExponent8 0 1 75 89 142,
  tropicalOverlapDegreeFiveExponent8 0 11 41 89 142,
  tropicalOverlapDegreeFiveExponent8 0 11 52 89 127,
  tropicalOverlapDegreeFiveExponent8 0 20 52 75 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row324 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row324.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row324 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row324 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
