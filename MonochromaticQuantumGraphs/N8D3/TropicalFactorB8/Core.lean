import MonochromaticQuantumGraphs.LaurentPolynomialCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalLaurentCoordinates8

/-!
# Lightweight common definitions for Component-B factor replay
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Adapt three coefficients to the two Component-B characters and the
universal parity generator. -/
def tropicalComponentBWithParityCoefficients8
    (coeff : Fin 3 → ℤ) : Sum (Fin 2) Unit → ℤ
  | .inl i => coeff i.castSucc
  | .inr _ => coeff (Fin.last 2)

/-- Translation is additive over subtraction.  This structural lemma avoids
unfolding the quotient-backed `Finsupp` implementation in factor leaves. -/
theorem tropicalComponentBTranslateSub8
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (p - q) =
      LaurentPolynomial.translate shift p -
        LaurentPolynomial.translate shift q := by
  exact LinearMap.map_sub (LaurentPolynomial.translateLinear shift) p q

end

end MonochromaticQuantumGraphs.N8D3
