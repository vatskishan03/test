import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 213. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 213. -/
def tropicalOverlapProvenance8Row213 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 100, coordinateB := 90, sourceJ := 113, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 213. -/
def tropicalOverlapRelation8Row213 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row213 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 90 98 139,
  tropicalOverlapDegreeFiveExponent8 6 59 90 108 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 38 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 48 69 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row213 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 104 139,
  tropicalOverlapDegreeFiveExponent8 6 59 88 114 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 38 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 48 69 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row213 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row213.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row213 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row213 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
