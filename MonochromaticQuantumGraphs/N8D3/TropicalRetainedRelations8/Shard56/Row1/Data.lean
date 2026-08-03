import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 281. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 281. -/
def tropicalOverlapProvenance8Row281 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 137, coordinateB := 142, sourceJ := 197, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 281. -/
def tropicalOverlapRelation8Row281 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 114 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 115 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 90 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 90 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row281 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 105 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 114 130 142,
  tropicalOverlapDegreeFiveExponent8 6 76 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 48 90 130 142,
  tropicalOverlapDegreeFiveExponent8 26 48 76 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row281 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 105 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 115 130 139,
  tropicalOverlapDegreeFiveExponent8 6 76 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 39 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 49 90 130 139,
  tropicalOverlapDegreeFiveExponent8 26 49 76 123 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row281 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row281.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row281 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row281 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
