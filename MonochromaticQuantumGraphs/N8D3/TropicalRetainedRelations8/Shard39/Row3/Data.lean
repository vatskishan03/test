import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 198. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 198. -/
def tropicalOverlapProvenance8Row198 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 84, coordinateB := 87, sourceJ := 92, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 198. -/
def tropicalOverlapRelation8Row198 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row198 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 87 102 141,
  tropicalOverlapDegreeFiveExponent8 1 58 87 112 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 52 70 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row198 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 86 105 141,
  tropicalOverlapDegreeFiveExponent8 1 58 86 115 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 87 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 52 70 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row198 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row198.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row198 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row198 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
