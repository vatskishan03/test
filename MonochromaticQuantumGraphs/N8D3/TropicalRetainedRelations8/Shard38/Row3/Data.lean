import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 193. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 193. -/
def tropicalOverlapProvenance8Row193 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 81, coordinateB := 89, sourceJ := 91, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 193. -/
def tropicalOverlapRelation8Row193 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 89 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row193 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 89 99 141,
  tropicalOverlapDegreeFiveExponent8 7 64 89 109 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 89 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 89 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row193 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 102 141,
  tropicalOverlapDegreeFiveExponent8 7 65 85 112 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 89 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 89 129,
  tropicalOverlapDegreeFiveExponent8 26 52 76 85 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row193 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row193.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row193 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row193 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
