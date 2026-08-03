import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 203. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 203. -/
def tropicalOverlapProvenance8Row203 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 86, coordinateB := 90, sourceJ := 98, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 203. -/
def tropicalOverlapRelation8Row203 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row203 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 90 102 141,
  tropicalOverlapDegreeFiveExponent8 1 64 90 112 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 90 141,
  tropicalOverlapDegreeFiveExponent8 11 42 86 90 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 90 129,
  tropicalOverlapDegreeFiveExponent8 19 52 76 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row203 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 105 141,
  tropicalOverlapDegreeFiveExponent8 1 65 86 115 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 90 141,
  tropicalOverlapDegreeFiveExponent8 11 42 86 90 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 90 129,
  tropicalOverlapDegreeFiveExponent8 20 52 76 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row203 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row203.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row203 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row203 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
