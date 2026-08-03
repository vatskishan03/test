import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 315. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 315. -/
def tropicalOverlapProvenance8Row315 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 162, coordinateB := 90, sourceJ := 177, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 315. -/
def tropicalOverlapRelation8Row315 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row315 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 98 142,
  tropicalOverlapDegreeFiveExponent8 6 65 90 109 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 38 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 49 75 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row315 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 104 142,
  tropicalOverlapDegreeFiveExponent8 6 65 88 115 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 38 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 49 75 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row315 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row315.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row315 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row315 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
