import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15.Combination0
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15.Combination1
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15.Factor0
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15.Factor1
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15.Branch0
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15.Branch1

/-! Semantic terminal contradiction for survivor state 15. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

open MonochromaticQuantumGraphs.FactorCoverCertificate

private theorem terminalBState15RawBasis_holds8
    {W : WeightsN 8 3 ℂ} (hChars : TropicalComponentBCharacters8 W)
    (hcover : ∀ c ∈ componentBCover8 15,
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c) :
    ∀ c, (terminalBState15RawBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin 17,
      (tropicalComponentBRawFactor8 (terminalBState15RawRawSource8 r)).Holds x := by
    intro r
    apply rawCharacter_holds_of_allZeroInClass x
      tropicalComponentBClassMembers8 tropicalComponentBRawFactor8
      (hcover (terminalBState15RawRawClass8 r) (by fin_cases r <;> decide))
    fin_cases r <;> decide
  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBState15RawRawSource8 r))
    hChars hraw (terminalBState15RawBasisSource8 c)

theorem terminalBState15_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    (hcover : ∀ c ∈ componentBCover8 15,
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c) : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hRaw := terminalBState15RawBasis_holds8 hChars hcover
  have hq0 := tropicalComponentBQuotientRelations8_hold
    hSupport hEq hChars 0
  have hq2 := tropicalComponentBQuotientRelations8_hold
    hSupport hEq hChars 2
  have hCombination0 :
      (LaurentPolynomial.translate terminalBState15CombinationShift0_8
        (tropicalComponentBQuotientRelation8 0) -
        tropicalComponentBQuotientRelation8 2).Holds x :=
    terminalB_translate_sub_holds8 x hx terminalBState15CombinationShift0_8
      (tropicalComponentBQuotientRelation8 0)
      (tropicalComponentBQuotientRelation8 2) hq0 hq2
  have hRelation0 : terminalBState15SplitRelation0_8.Holds x :=
    holds_of_normalizedCharacterReductionCertificate x hx terminalBState15RawBasis8
      _ _ terminalBState15CombinationCertificate0_8 hRaw hCombination0
  have hCombination1 :
      (LaurentPolynomial.translate terminalBState15CombinationShift1_8
        (tropicalComponentBQuotientRelation8 0) -
        tropicalComponentBQuotientRelation8 2).Holds x :=
    terminalB_translate_sub_holds8 x hx terminalBState15CombinationShift1_8
      (tropicalComponentBQuotientRelation8 0)
      (tropicalComponentBQuotientRelation8 2) hq0 hq2
  have hRelation1 : terminalBState15SplitRelation1_8.Holds x :=
    holds_of_normalizedCharacterReductionCertificate x hx terminalBState15RawBasis8
      _ _ terminalBState15CombinationCertificate1_8 hRaw hCombination1
  have hAB := factorCertificate_cases x hx terminalBState15RawBasis8
    terminalBState15SplitRelation0_8 (terminalBSplitCharacter8 0)
    (terminalBSplitCharacter8 2) terminalBState15FactorCertificate0_8 hRaw hRelation0
  have hCB := factorCertificate_cases x hx terminalBState15RawBasis8
    terminalBState15SplitRelation1_8 (terminalBSplitCharacter8 1)
    (terminalBSplitCharacter8 2) terminalBState15FactorCertificate1_8 hRaw hRelation1
  have hsplit :
      ((terminalBSplitCharacter8 0).Holds x ∧
        (terminalBSplitCharacter8 1).Holds x) ∨
      (terminalBSplitCharacter8 2).Holds x := by
    rcases hAB with hA | hB
    · rcases hCB with hC | hB
      · exact Or.inl ⟨hA, hC⟩
      · exact Or.inr hB
    · exact Or.inr hB
  rcases hsplit with hBranch0 | hBranch1
  · have hBasis : ∀ c, (terminalBState15Branch0Basis8 c).Holds x := by
      intro c
      exact FactorBasisSource.row_holds x terminalBState15RawBasis8
        terminalBState15Branch0SplitRow8 hRaw
        (by intro r; fin_cases r <;> simp [hBranch0])
        (terminalBState15Branch0Source8 c)
    have hRows : ∀ i, (terminalBBranch0TargetCharacter8 i).Holds x := by
      intro i
      fin_cases i
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch0Basis8)
        (terminalBBranch0TargetCharacter8 0)
        terminalBState15Branch0Implication0_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch0Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch0Basis8)
        (terminalBBranch0TargetCharacter8 1)
        terminalBState15Branch0Implication1_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch0Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch0Basis8)
        (terminalBBranch0TargetCharacter8 2)
        terminalBState15Branch0Implication2_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch0Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch0Basis8)
        (terminalBBranch0TargetCharacter8 3)
        terminalBState15Branch0Implication3_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch0Basis8 hBasis)
    exact branch0DerivativeCharacters_impossible8 hSupport hEq
      (terminalB_branch0DerivativeCharacters8 hSupport hRows)
  · have hBasis : ∀ c, (terminalBState15Branch1Basis8 c).Holds x := by
      intro c
      exact FactorBasisSource.row_holds x terminalBState15RawBasis8
        terminalBState15Branch1SplitRow8 hRaw
        (by intro r; fin_cases r; exact hBranch1)
        (terminalBState15Branch1Source8 c)
    have hRows : ∀ i, (terminalBBranch1TargetCharacter8 i).Holds x := by
      intro i
      fin_cases i
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch1Basis8)
        (terminalBBranch1TargetCharacter8 0)
        terminalBState15Branch1Implication0_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch1Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch1Basis8)
        (terminalBBranch1TargetCharacter8 1)
        terminalBState15Branch1Implication1_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch1Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch1Basis8)
        (terminalBBranch1TargetCharacter8 2)
        terminalBState15Branch1Implication2_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch1Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch1Basis8)
        (terminalBBranch1TargetCharacter8 3)
        terminalBState15Branch1Implication3_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch1Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState15Branch1Basis8)
        (terminalBBranch1TargetCharacter8 4)
        terminalBState15Branch1Implication4_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState15Branch1Basis8 hBasis)
    exact branch1DerivativeCharacters_impossible8 hSupport hEq
      (terminalB_branch1DerivativeCharacters8 hSupport hRows)

end

end MonochromaticQuantumGraphs.N8D3
