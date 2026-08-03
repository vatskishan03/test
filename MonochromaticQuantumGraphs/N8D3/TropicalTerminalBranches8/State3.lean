import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Combination0
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Combination1
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Factor0
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Factor1
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Branch0
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Branch1

/-! Semantic terminal contradiction for survivor state 3. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

open MonochromaticQuantumGraphs.FactorCoverCertificate

private theorem terminalBState3RawBasis_holds8
    {W : WeightsN 8 3 ℂ} (hChars : TropicalComponentBCharacters8 W)
    (hcover : ∀ c ∈ componentBCover8 3,
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c) :
    ∀ c, (terminalBState3RawBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin 17,
      (tropicalComponentBRawFactor8 (terminalBState3RawRawSource8 r)).Holds x := by
    intro r
    apply rawCharacter_holds_of_allZeroInClass x
      tropicalComponentBClassMembers8 tropicalComponentBRawFactor8
      (hcover (terminalBState3RawRawClass8 r) (by fin_cases r <;> decide))
    fin_cases r <;> decide
  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBState3RawRawSource8 r))
    hChars hraw (terminalBState3RawBasisSource8 c)

theorem terminalBState3_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    (hcover : ∀ c ∈ componentBCover8 3,
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c) : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hRaw := terminalBState3RawBasis_holds8 hChars hcover
  have hq0 := tropicalComponentBQuotientRelations8_hold
    hSupport hEq hChars 0
  have hq2 := tropicalComponentBQuotientRelations8_hold
    hSupport hEq hChars 2
  have hCombination0 :
      (LaurentPolynomial.translate terminalBState3CombinationShift0_8
        (tropicalComponentBQuotientRelation8 0) -
        tropicalComponentBQuotientRelation8 2).Holds x :=
    terminalB_translate_sub_holds8 x hx terminalBState3CombinationShift0_8
      (tropicalComponentBQuotientRelation8 0)
      (tropicalComponentBQuotientRelation8 2) hq0 hq2
  have hRelation0 : terminalBState3SplitRelation0_8.Holds x :=
    holds_of_normalizedCharacterReductionCertificate x hx terminalBState3RawBasis8
      _ _ terminalBState3CombinationCertificate0_8 hRaw hCombination0
  have hCombination1 :
      (LaurentPolynomial.translate terminalBState3CombinationShift1_8
        (tropicalComponentBQuotientRelation8 0) -
        tropicalComponentBQuotientRelation8 2).Holds x :=
    terminalB_translate_sub_holds8 x hx terminalBState3CombinationShift1_8
      (tropicalComponentBQuotientRelation8 0)
      (tropicalComponentBQuotientRelation8 2) hq0 hq2
  have hRelation1 : terminalBState3SplitRelation1_8.Holds x :=
    holds_of_normalizedCharacterReductionCertificate x hx terminalBState3RawBasis8
      _ _ terminalBState3CombinationCertificate1_8 hRaw hCombination1
  have hAB := factorCertificate_cases x hx terminalBState3RawBasis8
    terminalBState3SplitRelation0_8 (terminalBSplitCharacter8 0)
    (terminalBSplitCharacter8 2) terminalBState3FactorCertificate0_8 hRaw hRelation0
  have hCB := factorCertificate_cases x hx terminalBState3RawBasis8
    terminalBState3SplitRelation1_8 (terminalBSplitCharacter8 1)
    (terminalBSplitCharacter8 2) terminalBState3FactorCertificate1_8 hRaw hRelation1
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
  · have hBasis : ∀ c, (terminalBState3Branch0Basis8 c).Holds x := by
      intro c
      exact FactorBasisSource.row_holds x terminalBState3RawBasis8
        terminalBState3Branch0SplitRow8 hRaw
        (by intro r; fin_cases r <;> simp [hBranch0])
        (terminalBState3Branch0Source8 c)
    have hRows : ∀ i, (terminalBBranch0TargetCharacter8 i).Holds x := by
      intro i
      fin_cases i
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch0Basis8)
        (terminalBBranch0TargetCharacter8 0)
        terminalBState3Branch0Implication0_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch0Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch0Basis8)
        (terminalBBranch0TargetCharacter8 1)
        terminalBState3Branch0Implication1_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch0Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch0Basis8)
        (terminalBBranch0TargetCharacter8 2)
        terminalBState3Branch0Implication2_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch0Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch0Basis8)
        (terminalBBranch0TargetCharacter8 3)
        terminalBState3Branch0Implication3_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch0Basis8 hBasis)
    exact branch0DerivativeCharacters_impossible8 hSupport hEq
      (terminalB_branch0DerivativeCharacters8 hSupport hRows)
  · have hBasis : ∀ c, (terminalBState3Branch1Basis8 c).Holds x := by
      intro c
      exact FactorBasisSource.row_holds x terminalBState3RawBasis8
        terminalBState3Branch1SplitRow8 hRaw
        (by intro r; fin_cases r; exact hBranch1)
        (terminalBState3Branch1Source8 c)
    have hRows : ∀ i, (terminalBBranch1TargetCharacter8 i).Holds x := by
      intro i
      fin_cases i
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch1Basis8)
        (terminalBBranch1TargetCharacter8 0)
        terminalBState3Branch1Implication0_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch1Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch1Basis8)
        (terminalBBranch1TargetCharacter8 1)
        terminalBState3Branch1Implication1_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch1Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch1Basis8)
        (terminalBBranch1TargetCharacter8 2)
        terminalBState3Branch1Implication2_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch1Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch1Basis8)
        (terminalBBranch1TargetCharacter8 3)
        terminalBState3Branch1Implication3_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch1Basis8 hBasis)
      · exact SignedCharacterRow.holds_of_implicationCertificate x hx
        (SignedCharacterRow.withParityGenerator terminalBState3Branch1Basis8)
        (terminalBBranch1TargetCharacter8 4)
        terminalBState3Branch1Implication4_8
        (SignedCharacterRow.withParityGenerator_holds x
          terminalBState3Branch1Basis8 hBasis)
    exact branch1DerivativeCharacters_impossible8 hSupport hEq
      (terminalB_branch1DerivativeCharacters8 hSupport hRows)

end

end MonochromaticQuantumGraphs.N8D3
