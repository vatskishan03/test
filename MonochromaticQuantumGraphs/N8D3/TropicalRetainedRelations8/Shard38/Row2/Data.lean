import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 192. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 192. -/
def tropicalOverlapProvenance8Row192 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 81, coordinateB := 86, sourceJ := 87, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 192. -/
def tropicalOverlapRelation8Row192 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row192 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 86 99 141,
  tropicalOverlapDegreeFiveExponent8 7 64 86 109 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 86 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row192 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 102 141,
  tropicalOverlapDegreeFiveExponent8 7 64 85 112 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 86 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 85 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row192 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row192.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row192 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row192 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
