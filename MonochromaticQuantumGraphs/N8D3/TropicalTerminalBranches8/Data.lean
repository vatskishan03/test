import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch0Derivative8
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1Residual8

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph

noncomputable section

/-- The three exact second-stage factor vertices, in canonical order A,C,B. -/
def terminalBSplitCharacter8 : Fin 3 → SignedCharacterRow (Fin 144) :=
![
  tropicalBinomialCharacter8 69 99 70 98,
  tropicalBinomialCharacter8 38 70 39 69,
  tropicalBinomialCharacter8 9 65 11 59
]

/-- The four support-local rows required by the branch-zero derivative. -/
def terminalBBranch0TargetCharacter8 : Fin 4 → SignedCharacterRow (Fin 144) :=
![
  tropicalBinomialCharacter8 69 130 70 127,
  tropicalBinomialCharacter8 69 129 70 126,
  tropicalBinomialCharacter8 69 99 70 98,
  tropicalBinomialCharacter8 38 70 39 69
]

/-- The five support-local rows required by the branch-one derivative. -/
def terminalBBranch1TargetCharacter8 : Fin 5 → SignedCharacterRow (Fin 144) :=
![
  tropicalBinomialCharacter8 17 69 15 75,
  tropicalBinomialCharacter8 69 77 71 75,
  tropicalBinomialCharacter8 11 69 9 75,
  tropicalBinomialCharacter8 69 76 70 75,
  tropicalBinomialCharacter8 65 69 59 75
]

theorem terminalB_translate_sub_holds8
    (x : Fin 144 → ℂ) (hx : ∀ i, x i ≠ 0)
    (shift : LaurentExponent (Fin 144))
    (p q : LaurentPolynomial (Fin 144))
    (hp : p.Holds x) (hq : q.Holds x) :
    (LaurentPolynomial.translate shift p - q).Holds x := by
  unfold LaurentPolynomial.Holds at hp hq ⊢
  rw [LaurentPolynomial.eval_sub,
    LaurentPolynomial.eval_translate x hx, hp, hq]
  ring

theorem terminalB_branch0DerivativeCharacters8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hRows : ∀ i, (terminalBBranch0TargetCharacter8 i).Holds
      (tropicalSupportWeight8 W)) : Branch0DerivativeCharacters8 W := by
  have hx := tropicalSupportWeight8_ne_zero hSupport
  have h0 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 130 70 127).mp (hRows 0)
  have h1 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 129 70 126).mp (hRows 1)
  have h2 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 99 70 98).mp (hRows 2)
  have h3 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 38 70 39 69).mp (hRows 3)
  refine ⟨?_, ?_, ?_, ?_⟩
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 130 =
      tropicalSupportWeight8 W 70 * tropicalSupportWeight8 W 127
    exact h0
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 129 =
      tropicalSupportWeight8 W 70 * tropicalSupportWeight8 W 126
    exact h1
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 99 =
      tropicalSupportWeight8 W 70 * tropicalSupportWeight8 W 98
    exact h2
  · change tropicalSupportWeight8 W 38 * tropicalSupportWeight8 W 70 =
      tropicalSupportWeight8 W 39 * tropicalSupportWeight8 W 69
    exact h3

theorem terminalB_branch1DerivativeCharacters8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hRows : ∀ i, (terminalBBranch1TargetCharacter8 i).Holds
      (tropicalSupportWeight8 W)) : Branch1DerivativeCharacters8 W := by
  have hx := tropicalSupportWeight8_ne_zero hSupport
  have h0 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 17 69 15 75).mp (hRows 0)
  have h1 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 77 71 75).mp (hRows 1)
  have h2 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 11 69 9 75).mp (hRows 2)
  have h3 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 69 76 70 75).mp (hRows 3)
  have h4 := (tropicalBinomialCharacter8_holds_iff
    (tropicalSupportWeight8 W) hx 65 69 59 75).mp (hRows 4)
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 17 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 15
    simpa [mul_comm] using h0
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 77 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 71
    exact h1
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 11 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 9
    simpa [mul_comm] using h2
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 76 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 70
    exact h3
  · change tropicalSupportWeight8 W 69 * tropicalSupportWeight8 W 65 =
      tropicalSupportWeight8 W 75 * tropicalSupportWeight8 W 59
    simpa [mul_comm] using h4

end

end MonochromaticQuantumGraphs.N8D3
