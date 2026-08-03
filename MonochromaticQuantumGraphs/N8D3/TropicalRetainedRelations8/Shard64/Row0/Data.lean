import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 320. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 320. -/
def tropicalOverlapProvenance8Row320 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 164, coordinateB := 7, sourceJ := 167, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 320. -/
def tropicalOverlapRelation8Row320 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 69 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row320 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 101 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 112 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 89 142,
  tropicalOverlapDegreeFiveExponent8 7 9 38 89 142,
  tropicalOverlapDegreeFiveExponent8 7 9 49 89 127,
  tropicalOverlapDegreeFiveExponent8 7 20 49 69 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row320 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 101 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 112 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 89 142,
  tropicalOverlapDegreeFiveExponent8 0 15 41 89 142,
  tropicalOverlapDegreeFiveExponent8 0 15 52 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 52 69 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row320 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row320.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row320 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row320 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
