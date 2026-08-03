import MonochromaticQuantumGraphs.LaurentPolynomialCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalLaurentCoordinates8

/-!
# Lightweight common definitions for Component-A factor replay
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Adapt six coefficients to the five Component-A characters and
the universal parity generator. -/
def tropicalComponentAWithParityCoefficients8
    (coeff : Fin 6 → ℤ) : Sum (Fin 5) Unit → ℤ
  | .inl i => coeff i.castSucc
  | .inr _ => coeff (Fin.last 5)

namespace TropicalFactorA8.Internal

/-- Equality of signed character rows from equality of their two fields.
`SignedCharacterRow` is intentionally a plain structure and does not declare
an `ext` theorem, so certificate leaves use this explicit structural lemma. -/
theorem signedCharacterRow_eq_of_fields {ι : Type*}
    {left right : SignedCharacterRow ι}
    (exponent_eq : left.exponent = right.exponent)
    (sign_eq : left.signExponent = right.signExponent) :
    left = right := by
  cases left with
  | mk leftExponent leftSign =>
      cases right with
      | mk rightExponent rightSign =>
          change leftExponent = rightExponent at exponent_eq
          change leftSign = rightSign at sign_eq
          subst rightExponent
          subst rightSign
          rfl

end TropicalFactorA8.Internal

/-- Translation is additive over subtraction without exposing Finsupp
support or the implementation of `translateLinear`. -/
theorem tropicalComponentATranslate_sub8
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (p - q) =
      LaurentPolynomial.translate shift p -
        LaurentPolynomial.translate shift q := by
  exact LinearMap.map_sub (LaurentPolynomial.translateLinear shift) p q

end

end MonochromaticQuantumGraphs.N8D3
