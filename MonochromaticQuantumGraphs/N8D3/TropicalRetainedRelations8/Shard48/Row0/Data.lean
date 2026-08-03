import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 240. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 240. -/
def tropicalOverlapProvenance8Row240 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 113, coordinateB := 142, sourceJ := 173, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 240. -/
def tropicalOverlapRelation8Row240 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 123 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row240 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 104 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 114 127 142,
  tropicalOverlapDegreeFiveExponent8 6 69 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 48 90 127 142,
  tropicalOverlapDegreeFiveExponent8 26 48 69 123 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row240 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 104 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 115 127 139,
  tropicalOverlapDegreeFiveExponent8 6 69 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 38 90 139 142,
  tropicalOverlapDegreeFiveExponent8 15 49 90 127 139,
  tropicalOverlapDegreeFiveExponent8 26 49 69 123 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row240 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row240.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row240 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row240 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
