import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8

/-!
# Common raw-source nested-face replay for terminal Component A

The historical certificate translates the complete raw right source onto the
eight-term face of the raw left source.  This support-specific structure keeps
that orientation exact while using the generic character-reduction checker.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Exact raw-source convention used by the frozen Component-A terminal data. -/
structure TropicalTerminalRawNestedFaceCertificate8
    {χ κ : Type*} [Fintype χ] [Fintype κ]
    (chars : χ → SignedCharacterRow (Fin 144))
    (leftSource rightSource : LaurentPolynomial (Fin 144)) where
  omittedExponent : LaurentExponent (Fin 144)
  omittedCoefficient : ℤ
  omittedCoefficient_ne_zero : omittedCoefficient ≠ 0
  face : LaurentPolynomial (Fin 144)
  faceScalar : ℤ
  faceScalar_ne_zero : faceScalar ≠ 0
  faceShift : LaurentExponent (Fin 144)
  left_eq :
    leftSource = Finsupp.single omittedExponent omittedCoefficient + face
  pairingSource : LaurentPolynomial (Fin 144)
  pairingSource_eq :
    pairingSource =
      faceScalar • LaurentPolynomial.translate faceShift rightSource - face
  pairingReduction :
    CharacterReductionCertificate (κ := κ) chars pairingSource 0

/-- A checked raw-source nested face is incompatible with a torus point. -/
theorem false_of_tropicalTerminalRawNestedFaceCertificate8
    {χ κ : Type*} [Fintype χ] [Fintype κ]
    (x : Fin 144 → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow (Fin 144))
    (leftSource rightSource : LaurentPolynomial (Fin 144))
    (cert : TropicalTerminalRawNestedFaceCertificate8
      (κ := κ) chars leftSource rightSource)
    (hchars : ∀ c, (chars c).Holds x)
    (hleft : leftSource.Holds x)
    (hright : rightSource.Holds x) : False := by
  have hpairing : cert.pairingSource.Holds x := by
    unfold LaurentPolynomial.Holds
    calc
      cert.pairingSource.eval x =
          (0 : LaurentPolynomial (Fin 144)).eval x :=
        eval_eq_of_characterReductionCertificate
          x hx chars cert.pairingSource 0 cert.pairingReduction hchars
      _ = 0 := LaurentPolynomial.eval_zero x
  rw [cert.pairingSource_eq] at hpairing
  have hface : cert.face.eval x = 0 := by
    unfold LaurentPolynomial.Holds at hpairing hright
    rw [LaurentPolynomial.eval_sub, LaurentPolynomial.eval_zsmul,
      LaurentPolynomial.eval_translate x hx, hright, mul_zero,
      smul_zero, zero_sub] at hpairing
    exact neg_eq_zero.mp hpairing
  unfold LaurentPolynomial.Holds at hleft
  rw [cert.left_eq, LaurentPolynomial.eval_add,
    LaurentPolynomial.eval_single, hface, add_zero] at hleft
  simp only [← Int.cast_smul_eq_zsmul ℂ, smul_eq_mul] at hleft
  have hcoefficient : (cert.omittedCoefficient : ℂ) ≠ 0 :=
    Int.cast_ne_zero.mpr cert.omittedCoefficient_ne_zero
  have homitted : laurentEval x cert.omittedExponent ≠ 0 :=
    laurentEval_ne_zero x hx cert.omittedExponent
  exact (mul_eq_zero.mp hleft).elim hcoefficient homitted

end

end MonochromaticQuantumGraphs.N8D3
