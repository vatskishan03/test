import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 201. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 201. -/
def tropicalOverlapProvenance8Row201 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 86, coordinateB := 89, sourceJ := 90, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 201. -/
def tropicalOverlapRelation8Row201 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row201 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 89 102 141,
  tropicalOverlapDegreeFiveExponent8 1 64 89 112 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 42 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 89 129,
  tropicalOverlapDegreeFiveExponent8 19 52 76 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row201 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 102 141,
  tropicalOverlapDegreeFiveExponent8 1 65 86 112 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 42 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 89 129,
  tropicalOverlapDegreeFiveExponent8 20 52 76 86 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row201 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row201.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row201 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row201 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
