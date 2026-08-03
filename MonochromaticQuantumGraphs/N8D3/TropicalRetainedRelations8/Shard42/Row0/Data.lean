import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 210. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 210. -/
def tropicalOverlapProvenance8Row210 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 100, coordinateB := 7, sourceJ := 101, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 210. -/
def tropicalOverlapRelation8Row210 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 41 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 51 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 69 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 38 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 48 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 69 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row210 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 98 139,
  tropicalOverlapDegreeFiveExponent8 6 7 59 108 127,
  tropicalOverlapDegreeFiveExponent8 6 7 69 88 139,
  tropicalOverlapDegreeFiveExponent8 7 15 38 88 139,
  tropicalOverlapDegreeFiveExponent8 7 15 48 88 127,
  tropicalOverlapDegreeFiveExponent8 7 26 48 69 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row210 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 98 139,
  tropicalOverlapDegreeFiveExponent8 6 7 59 108 127,
  tropicalOverlapDegreeFiveExponent8 6 7 69 88 139,
  tropicalOverlapDegreeFiveExponent8 6 15 41 88 139,
  tropicalOverlapDegreeFiveExponent8 6 15 51 88 127,
  tropicalOverlapDegreeFiveExponent8 6 26 51 69 117
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row210 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row210.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row210 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row210 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
