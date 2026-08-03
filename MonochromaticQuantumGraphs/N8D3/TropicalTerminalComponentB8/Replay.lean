import MonochromaticQuantumGraphs.LaurentPolynomialCertificate

/-! Structural translation lemmas used by bounded terminal-B replays. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalB_translate_sub8
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (p - q) =
      LaurentPolynomial.translate shift p -
        LaurentPolynomial.translate shift q := by
  exact (LaurentPolynomial.translateLinear shift).map_sub p q

theorem terminalB_translate_neg8
    (shift : LaurentExponent (Fin 144))
    (p : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (-p) =
      -LaurentPolynomial.translate shift p := by
  exact (LaurentPolynomial.translateLinear shift).map_neg p

theorem terminalB_translate_zsmul8
    (shift : LaurentExponent (Fin 144)) (n : ℤ)
    (p : LaurentPolynomial (Fin 144)) :
    LaurentPolynomial.translate shift (n • p) =
      n • LaurentPolynomial.translate shift p := by
  exact (LaurentPolynomial.translateLinear shift).map_smul n p

theorem terminalB_translate_factorPolynomial8
    (shift : LaurentExponent (Fin 144))
    (row : SignedCharacterRow (Fin 144)) :
    LaurentPolynomial.translate shift row.factorPolynomial =
      Finsupp.single (shift + row.exponent) 1 -
        Finsupp.single shift (signedCoefficient row.signExponent 1) := by
  unfold SignedCharacterRow.factorPolynomial
  rw [terminalB_translate_sub8,
    LaurentPolynomial.translate_single,
    LaurentPolynomial.translate_single]
  simp

theorem terminalB_translate_factorProductPolynomial8
    (shift : LaurentExponent (Fin 144))
    (left right : SignedCharacterRow (Fin 144)) :
    LaurentPolynomial.translate shift
        (SignedCharacterRow.factorProductPolynomial left right) =
      Finsupp.single (shift + (left.exponent + right.exponent)) 1 -
        Finsupp.single (shift + left.exponent)
          (signedCoefficient right.signExponent 1) -
        Finsupp.single (shift + right.exponent)
          (signedCoefficient left.signExponent 1) +
        Finsupp.single shift
          (signedCoefficient left.signExponent 1 *
            signedCoefficient right.signExponent 1) := by
  unfold SignedCharacterRow.factorProductPolynomial
  rw [LaurentPolynomial.translate_add,
    terminalB_translate_sub8, terminalB_translate_sub8,
    LaurentPolynomial.translate_single,
    LaurentPolynomial.translate_single,
    LaurentPolynomial.translate_single,
    LaurentPolynomial.translate_single]
  simp

end

end MonochromaticQuantumGraphs.N8D3
