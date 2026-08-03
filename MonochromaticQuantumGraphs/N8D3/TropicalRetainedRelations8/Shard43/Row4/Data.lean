import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 219. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 219. -/
def tropicalOverlapProvenance8Row219 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 102, coordinateB := 90, sourceJ := 117, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 219. -/
def tropicalOverlapRelation8Row219 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row219 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 98 139,
  tropicalOverlapDegreeFiveExponent8 6 65 90 108 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 38 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 48 75 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row219 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 104 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 114 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 38 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 48 75 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row219 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row219.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row219 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row219 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
