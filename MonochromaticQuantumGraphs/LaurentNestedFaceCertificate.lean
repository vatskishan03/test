import MonochromaticQuantumGraphs.LaurentPolynomialCertificate

/-!
# Sparse nested-face certificates

This module packages the denominator-free nested-face contradiction used by
the support-specific finite non-attainment replay.  A certificate consists of
three independently replayed signed-character reductions:

* the left source reduces to one omitted monomial plus a face;
* the right source reduces to a second sparse Laurent polynomial;
* a nonzero monomial multiple of the face reduces to that right polynomial.

No quotient normal form is trusted.  Each of the three polynomial identities
is supplied as a `CharacterReductionCertificate`, so Lean checks its source
and target sparse-polynomial expansions term by term.
-/

namespace MonochromaticQuantumGraphs

noncomputable section

/-- A complete sparse nested-face contradiction certificate.

The final reduction says that
`faceScalar • translate faceShift face - rightReduced` evaluates to zero
under the declared signed characters.  The two nonzero integer coefficients
are recorded explicitly because they are the only scalar cancellation steps
in the semantic proof. -/
structure LaurentNestedFaceCertificate
    {ι χ κLeft κRight κFace : Type*}
    [Fintype χ] [Fintype κLeft] [Fintype κRight] [Fintype κFace]
    (chars : χ → SignedCharacterRow ι)
    (leftSource rightSource : LaurentPolynomial ι) where
  omittedExponent : LaurentExponent ι
  omittedCoefficient : ℤ
  omittedCoefficient_ne_zero : omittedCoefficient ≠ 0
  face : LaurentPolynomial ι
  rightReduced : LaurentPolynomial ι
  faceScalar : ℤ
  faceScalar_ne_zero : faceScalar ≠ 0
  faceShift : LaurentExponent ι
  leftReduction :
    NormalizedCharacterReductionCertificate (κ := κLeft) chars leftSource
      (Finsupp.single omittedExponent omittedCoefficient + face)
  rightReduction :
    NormalizedCharacterReductionCertificate (κ := κRight) chars rightSource
      rightReduced
  faceReduction :
    CharacterReductionCertificate (κ := κFace) chars
      (faceScalar • LaurentPolynomial.translate faceShift face - rightReduced)
      0

/-- The compatibility row in a nested-face certificate evaluates to zero
whenever all declared signed characters hold. -/
theorem nestedFaceCompatibility_holds
    {ι χ κLeft κRight κFace : Type*}
    [Fintype ι] [Fintype χ] [Fintype κLeft] [Fintype κRight]
    [Fintype κFace]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (leftSource rightSource : LaurentPolynomial ι)
    (cert : LaurentNestedFaceCertificate
      (κLeft := κLeft) (κRight := κRight) (κFace := κFace)
      chars leftSource rightSource)
    (hchars : ∀ c, (chars c).Holds x) :
    LaurentPolynomial.Holds x
      (cert.faceScalar •
          LaurentPolynomial.translate cert.faceShift cert.face -
        cert.rightReduced) := by
  unfold LaurentPolynomial.Holds
  calc
    LaurentPolynomial.eval x
        (cert.faceScalar •
            LaurentPolynomial.translate cert.faceShift cert.face -
          cert.rightReduced) =
        LaurentPolynomial.eval x (0 : LaurentPolynomial ι) :=
      eval_eq_of_characterReductionCertificate
        x hx chars _ _ cert.faceReduction hchars
    _ = 0 := LaurentPolynomial.eval_zero x

/-- Kernel replay of a sparse nested-face certificate.

At a torus point, the right source and the compatibility reduction force the
face to vanish: its coefficient and translation monomial are nonzero.  The
left source then forces the explicitly omitted Laurent monomial to vanish,
contradicting torus nonzeroness. -/
theorem false_of_laurentNestedFaceCertificate
    {ι χ κLeft κRight κFace : Type*}
    [Fintype ι] [Fintype χ] [Fintype κLeft] [Fintype κRight]
    [Fintype κFace]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (leftSource rightSource : LaurentPolynomial ι)
    (cert : LaurentNestedFaceCertificate
      (κLeft := κLeft) (κRight := κRight) (κFace := κFace)
      chars leftSource rightSource)
    (hchars : ∀ c, (chars c).Holds x)
    (hleftSource : leftSource.Holds x)
    (hrightSource : rightSource.Holds x) : False := by
  have hleftReduced :
      LaurentPolynomial.Holds x
        (Finsupp.single cert.omittedExponent cert.omittedCoefficient +
          cert.face) :=
    holds_of_normalizedCharacterReductionCertificate
      x hx chars leftSource _ cert.leftReduction hchars hleftSource
  have hrightReduced : cert.rightReduced.Holds x :=
    holds_of_normalizedCharacterReductionCertificate
      x hx chars rightSource cert.rightReduced cert.rightReduction
        hchars hrightSource
  have hcompatibility := nestedFaceCompatibility_holds
    x hx chars leftSource rightSource cert hchars
  unfold LaurentPolynomial.Holds at hleftReduced
  unfold LaurentPolynomial.Holds at hrightReduced
  unfold LaurentPolynomial.Holds at hcompatibility
  have hface : LaurentPolynomial.eval x cert.face = 0 := by
    rw [LaurentPolynomial.eval_sub, LaurentPolynomial.eval_zsmul,
      LaurentPolynomial.eval_translate x hx, hrightReduced, sub_zero] at hcompatibility
    simp only [← Int.cast_smul_eq_zsmul ℂ, smul_eq_mul] at hcompatibility
    have hscalar : (cert.faceScalar : ℂ) ≠ 0 :=
      Int.cast_ne_zero.mpr cert.faceScalar_ne_zero
    have hshift : laurentEval x cert.faceShift ≠ 0 :=
      laurentEval_ne_zero x hx cert.faceShift
    exact (mul_eq_zero.mp
      ((mul_eq_zero.mp hcompatibility).resolve_left hscalar)).resolve_left
        hshift
  rw [LaurentPolynomial.eval_add, LaurentPolynomial.eval_single,
    hface, add_zero] at hleftReduced
  simp only [← Int.cast_smul_eq_zsmul ℂ, smul_eq_mul] at hleftReduced
  have hcoefficient : (cert.omittedCoefficient : ℂ) ≠ 0 :=
    Int.cast_ne_zero.mpr cert.omittedCoefficient_ne_zero
  have homitted : laurentEval x cert.omittedExponent ≠ 0 :=
    laurentEval_ne_zero x hx cert.omittedExponent
  exact (mul_eq_zero.mp hleftReduced).elim hcoefficient homitted

end

end MonochromaticQuantumGraphs
