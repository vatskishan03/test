import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 244. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 244. -/
def tropicalOverlapProvenance8Row244 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 116, coordinateB := 142, sourceJ := 176, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 244. -/
def tropicalOverlapRelation8Row244 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row244 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 104 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 114 127 142,
  tropicalOverlapDegreeFiveExponent8 0 75 90 139 142,
  tropicalOverlapDegreeFiveExponent8 11 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 11 48 90 127 142,
  tropicalOverlapDegreeFiveExponent8 20 48 75 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row244 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 104 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 115 127 139,
  tropicalOverlapDegreeFiveExponent8 0 75 90 139 142,
  tropicalOverlapDegreeFiveExponent8 11 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 11 49 90 127 139,
  tropicalOverlapDegreeFiveExponent8 20 49 75 123 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row244 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row244.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row244 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row244 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
