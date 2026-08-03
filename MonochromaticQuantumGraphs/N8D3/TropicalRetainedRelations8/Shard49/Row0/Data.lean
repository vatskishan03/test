import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 245. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 245. -/
def tropicalOverlapProvenance8Row245 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 117, coordinateB := 142, sourceJ := 177, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 245. -/
def tropicalOverlapRelation8Row245 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row245 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 104 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 114 127 142,
  tropicalOverlapDegreeFiveExponent8 6 75 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 48 90 127 142,
  tropicalOverlapDegreeFiveExponent8 26 48 75 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row245 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 104 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 115 127 139,
  tropicalOverlapDegreeFiveExponent8 6 75 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 17 49 90 127 139,
  tropicalOverlapDegreeFiveExponent8 26 49 75 123 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row245 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row245.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row245 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row245 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
