import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 255. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 255. -/
def tropicalOverlapProvenance8Row255 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 122, coordinateB := 90, sourceJ := 137, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 255. -/
def tropicalOverlapRelation8Row255 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row255 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 90 99 139,
  tropicalOverlapDegreeFiveExponent8 6 65 90 108 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 39 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 48 76 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row255 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 105 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 114 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 39 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 90 130,
  tropicalOverlapDegreeFiveExponent8 26 48 76 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row255 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row255.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row255 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row255 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
