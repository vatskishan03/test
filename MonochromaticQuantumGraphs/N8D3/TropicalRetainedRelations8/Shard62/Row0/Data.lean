import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 310. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 310. -/
def tropicalOverlapProvenance8Row310 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 160, coordinateB := 90, sourceJ := 173, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 310. -/
def tropicalOverlapRelation8Row310 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row310 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 90 98 142,
  tropicalOverlapDegreeFiveExponent8 6 59 90 109 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 38 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 49 69 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row310 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 104 142,
  tropicalOverlapDegreeFiveExponent8 6 59 88 115 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 38 88 90 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 49 69 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row310 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row310.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row310 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row310 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
