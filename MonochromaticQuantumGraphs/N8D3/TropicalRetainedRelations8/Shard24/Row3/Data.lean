import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 123. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 123. -/
def tropicalOverlapProvenance8Row123 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 38, coordinateB := 139, sourceJ := 138, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 123. -/
def tropicalOverlapRelation8Row123 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row123 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 105 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 129 139,
  tropicalOverlapDegreeFiveExponent8 1 76 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 129 139,
  tropicalOverlapDegreeFiveExponent8 20 51 76 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row123 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 105 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 130 138,
  tropicalOverlapDegreeFiveExponent8 1 76 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 42 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 130 138,
  tropicalOverlapDegreeFiveExponent8 20 51 76 123 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row123 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row123.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row123 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row123 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
