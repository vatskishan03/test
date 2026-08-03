import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 216. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 216. -/
def tropicalOverlapProvenance8Row216 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 102, coordinateB := 7, sourceJ := 103, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 216. -/
def tropicalOverlapRelation8Row216 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 41 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 51 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 75 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 38 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 48 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 75 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row216 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 98 139,
  tropicalOverlapDegreeFiveExponent8 6 7 65 108 127,
  tropicalOverlapDegreeFiveExponent8 6 7 75 88 139,
  tropicalOverlapDegreeFiveExponent8 7 17 38 88 139,
  tropicalOverlapDegreeFiveExponent8 7 17 48 88 127,
  tropicalOverlapDegreeFiveExponent8 7 26 48 75 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row216 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 98 139,
  tropicalOverlapDegreeFiveExponent8 6 7 65 108 127,
  tropicalOverlapDegreeFiveExponent8 6 7 75 88 139,
  tropicalOverlapDegreeFiveExponent8 6 17 41 88 139,
  tropicalOverlapDegreeFiveExponent8 6 17 51 88 127,
  tropicalOverlapDegreeFiveExponent8 6 26 51 75 117
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row216 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row216.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row216 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row216 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
