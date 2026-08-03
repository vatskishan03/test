import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 313. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 313. -/
def tropicalOverlapProvenance8Row313 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 162, coordinateB := 7, sourceJ := 163, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 313. -/
def tropicalOverlapRelation8Row313 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 41 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 52 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 75 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 38 88 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 49 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 75 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row313 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 98 142,
  tropicalOverlapDegreeFiveExponent8 6 7 65 109 127,
  tropicalOverlapDegreeFiveExponent8 6 7 75 88 142,
  tropicalOverlapDegreeFiveExponent8 7 17 38 88 142,
  tropicalOverlapDegreeFiveExponent8 7 17 49 88 127,
  tropicalOverlapDegreeFiveExponent8 7 26 49 75 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row313 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 98 142,
  tropicalOverlapDegreeFiveExponent8 6 7 65 109 127,
  tropicalOverlapDegreeFiveExponent8 6 7 75 88 142,
  tropicalOverlapDegreeFiveExponent8 6 17 41 88 142,
  tropicalOverlapDegreeFiveExponent8 6 17 52 88 127,
  tropicalOverlapDegreeFiveExponent8 6 26 52 75 117
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row313 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row313.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row313 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row313 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
