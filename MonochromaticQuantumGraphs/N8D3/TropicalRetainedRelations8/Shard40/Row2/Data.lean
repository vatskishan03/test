import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 202. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 202. -/
def tropicalOverlapProvenance8Row202 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 86, coordinateB := 87, sourceJ := 94, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 202. -/
def tropicalOverlapRelation8Row202 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row202 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 87 102 141,
  tropicalOverlapDegreeFiveExponent8 1 64 87 112 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 87 141,
  tropicalOverlapDegreeFiveExponent8 11 42 86 87 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 52 76 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row202 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 86 105 141,
  tropicalOverlapDegreeFiveExponent8 1 64 86 115 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 87 141,
  tropicalOverlapDegreeFiveExponent8 11 42 86 87 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 52 76 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row202 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row202.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row202 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row202 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
