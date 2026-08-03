import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs.FactorCoverCertificate

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

private theorem terminalBClass7InitialBasis_holds8
    {W : WeightsN 8 3 ℂ} (hChars : TropicalComponentBCharacters8 W)
    (hzero7 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 7) :
    ∀ c, (terminalBClass7InitialBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin 1,
      (tropicalComponentBRawFactor8 (terminalBClass7RawSource8 r)).Holds x := by
    intro r
    fin_cases r
    · exact rawCharacter_holds_of_allZeroInClass x
        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero7 (by decide)
  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBClass7RawSource8 r))
    hChars hraw (terminalBClass7InitialSource8 c)

theorem terminalBClass7_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    (hzero7 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 7) : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hInitial := terminalBClass7InitialBasis_holds8 hChars hzero7
  have h0 : (terminalBClass7Basis8 0).Holds x := hInitial 0
  have h1 : (terminalBClass7Basis8 1).Holds x := hInitial 1
  have h2 : (terminalBClass7Basis8 2).Holds x := hInitial 2
  have hPrefix3 : ∀ c : Fin 3,
      (terminalBClass7Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h3 : (terminalBClass7Basis8 3).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 3 ↦ terminalBClass7Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 0) (terminalBClass7Basis8 3)
      terminalBClass7CharacterCertificate3_8 hPrefix3
      (tropicalOverlapRelations8_hold hSupport hEq 0)
  have hPrefix4 : ∀ c : Fin 4,
      (terminalBClass7Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h4 : (terminalBClass7Basis8 4).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 4 ↦ terminalBClass7Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 19) (terminalBClass7Basis8 4)
      terminalBClass7CharacterCertificate4_8 hPrefix4
      (tropicalOverlapRelations8_hold hSupport hEq 19)
  have hPrefix5 : ∀ c : Fin 5,
      (terminalBClass7Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h5 : (terminalBClass7Basis8 5).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 5 ↦ terminalBClass7Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 45) (terminalBClass7Basis8 5)
      terminalBClass7CharacterCertificate5_8 hPrefix5
      (tropicalOverlapRelations8_hold hSupport hEq 45)
  have hBasis : ∀ c, (terminalBClass7Basis8 c).Holds x := by
    intro c
    fin_cases c <;> assumption
  exact false_of_laurentNestedFaceCertificate x hx terminalBClass7Basis8
    tropicalTerminalRelation65_8
    tropicalTerminalRelation437_8
    terminalBClass7NestedCertificate8 hBasis
    (tropicalTerminalRelation65_8_hold hSupport hEq)
    (tropicalTerminalRelation437_8_hold hSupport hEq)
private theorem terminalBCore817InitialBasis_holds8
    {W : WeightsN 8 3 ℂ} (hChars : TropicalComponentBCharacters8 W)
    (hzero8 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 8)
    (hzero17 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 17) :
    ∀ c, (terminalBCore817InitialBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin 5,
      (tropicalComponentBRawFactor8 (terminalBCore817RawSource8 r)).Holds x := by
    intro r
    fin_cases r
    · exact rawCharacter_holds_of_allZeroInClass x
        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero8 (by decide)
    · exact rawCharacter_holds_of_allZeroInClass x
        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero8 (by decide)
    · exact rawCharacter_holds_of_allZeroInClass x
        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero8 (by decide)
    · exact rawCharacter_holds_of_allZeroInClass x
        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero17 (by decide)
    · exact rawCharacter_holds_of_allZeroInClass x
        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero17 (by decide)
  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBCore817RawSource8 r))
    hChars hraw (terminalBCore817InitialSource8 c)

theorem terminalBCore817_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    (hzero8 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 8)
    (hzero17 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 17) : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hInitial := terminalBCore817InitialBasis_holds8 hChars hzero8 hzero17
  have h0 : (terminalBCore817Basis8 0).Holds x := hInitial 0
  have h1 : (terminalBCore817Basis8 1).Holds x := hInitial 1
  have h2 : (terminalBCore817Basis8 2).Holds x := hInitial 2
  have h3 : (terminalBCore817Basis8 3).Holds x := hInitial 3
  have h4 : (terminalBCore817Basis8 4).Holds x := hInitial 4
  have h5 : (terminalBCore817Basis8 5).Holds x := hInitial 5
  have h6 : (terminalBCore817Basis8 6).Holds x := hInitial 6
  have hPrefix7 : ∀ c : Fin 7,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h7 : (terminalBCore817Basis8 7).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 7 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 18) (terminalBCore817Basis8 7)
      terminalBCore817CharacterCertificate7_8 hPrefix7
      (tropicalOverlapRelations8_hold hSupport hEq 18)
  have hPrefix8 : ∀ c : Fin 8,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h8 : (terminalBCore817Basis8 8).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 8 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 30) (terminalBCore817Basis8 8)
      terminalBCore817CharacterCertificate8_8 hPrefix8
      (tropicalOverlapRelations8_hold hSupport hEq 30)
  have hPrefix9 : ∀ c : Fin 9,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h9 : (terminalBCore817Basis8 9).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 9 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 211) (terminalBCore817Basis8 9)
      terminalBCore817CharacterCertificate9_8 hPrefix9
      (tropicalOverlapRelations8_hold hSupport hEq 211)
  have hPrefix10 : ∀ c : Fin 10,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h10 : (terminalBCore817Basis8 10).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 10 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 225) (terminalBCore817Basis8 10)
      terminalBCore817CharacterCertificate10_8 hPrefix10
      (tropicalOverlapRelations8_hold hSupport hEq 225)
  have hPrefix11 : ∀ c : Fin 11,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h11 : (terminalBCore817Basis8 11).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 11 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 239) (terminalBCore817Basis8 11)
      terminalBCore817CharacterCertificate11_8 hPrefix11
      (tropicalOverlapRelations8_hold hSupport hEq 239)
  have hPrefix12 : ∀ c : Fin 12,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h12 : (terminalBCore817Basis8 12).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 12 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalComponentBQuotientRelation8 0) (terminalBCore817Basis8 12)
      terminalBCore817CharacterCertificate12_8 hPrefix12
      (tropicalComponentBQuotientRelations8_hold hSupport hEq hChars 0)
  have hPrefix13 : ∀ c : Fin 13,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h13 : (terminalBCore817Basis8 13).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 13 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalComponentBQuotientRelation8 4) (terminalBCore817Basis8 13)
      terminalBCore817CharacterCertificate13_8 hPrefix13
      (tropicalComponentBQuotientRelations8_hold hSupport hEq hChars 4)
  have hPrefix14 : ∀ c : Fin 14,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h14 : (terminalBCore817Basis8 14).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 14 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalComponentBQuotientRelation8 12) (terminalBCore817Basis8 14)
      terminalBCore817CharacterCertificate14_8 hPrefix14
      (tropicalComponentBQuotientRelations8_hold hSupport hEq hChars 12)
  have hPrefix15 : ∀ c : Fin 15,
      (terminalBCore817Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h15 : (terminalBCore817Basis8 15).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 15 ↦ terminalBCore817Basis8 ⟨c.val, by omega⟩)
      (tropicalComponentBQuotientRelation8 42) (terminalBCore817Basis8 15)
      terminalBCore817CharacterCertificate15_8 hPrefix15
      (tropicalComponentBQuotientRelations8_hold hSupport hEq hChars 42)
  have hBasis : ∀ c, (terminalBCore817Basis8 c).Holds x := by
    intro c
    fin_cases c <;> assumption
  exact false_of_laurentNestedFaceCertificate x hx terminalBCore817Basis8
    tropicalTerminalRelation874_8
    tropicalTerminalRelation1213_8
    terminalBCore817NestedCertificate8 hBasis
    (tropicalTerminalRelation874_8_hold hSupport hEq)
    (tropicalTerminalRelation1213_8_hold hSupport hEq)
private theorem terminalBClass14InitialBasis_holds8
    {W : WeightsN 8 3 ℂ} (hChars : TropicalComponentBCharacters8 W)
    (hzero14 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 14) :
    ∀ c, (terminalBClass14InitialBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin 1,
      (tropicalComponentBRawFactor8 (terminalBClass14RawSource8 r)).Holds x := by
    intro r
    fin_cases r
    · exact rawCharacter_holds_of_allZeroInClass x
        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero14 (by decide)
  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBClass14RawSource8 r))
    hChars hraw (terminalBClass14InitialSource8 c)

theorem terminalBClass14_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    (hzero14 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 14) : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hInitial := terminalBClass14InitialBasis_holds8 hChars hzero14
  have h0 : (terminalBClass14Basis8 0).Holds x := hInitial 0
  have h1 : (terminalBClass14Basis8 1).Holds x := hInitial 1
  have h2 : (terminalBClass14Basis8 2).Holds x := hInitial 2
  have hPrefix3 : ∀ c : Fin 3,
      (terminalBClass14Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h3 : (terminalBClass14Basis8 3).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 3 ↦ terminalBClass14Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 210) (terminalBClass14Basis8 3)
      terminalBClass14CharacterCertificate3_8 hPrefix3
      (tropicalOverlapRelations8_hold hSupport hEq 210)
  have hPrefix4 : ∀ c : Fin 4,
      (terminalBClass14Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h4 : (terminalBClass14Basis8 4).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 4 ↦ terminalBClass14Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 246) (terminalBClass14Basis8 4)
      terminalBClass14CharacterCertificate4_8 hPrefix4
      (tropicalOverlapRelations8_hold hSupport hEq 246)
  have hPrefix5 : ∀ c : Fin 5,
      (terminalBClass14Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h5 : (terminalBClass14Basis8 5).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 5 ↦ terminalBClass14Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 282) (terminalBClass14Basis8 5)
      terminalBClass14CharacterCertificate5_8 hPrefix5
      (tropicalOverlapRelations8_hold hSupport hEq 282)
  have hBasis : ∀ c, (terminalBClass14Basis8 c).Holds x := by
    intro c
    fin_cases c <;> assumption
  exact false_of_laurentNestedFaceCertificate x hx terminalBClass14Basis8
    tropicalTerminalRelation74_8
    tropicalTerminalRelation77_8
    terminalBClass14NestedCertificate8 hBasis
    (tropicalTerminalRelation74_8_hold hSupport hEq)
    (tropicalTerminalRelation77_8_hold hSupport hEq)
private theorem terminalBClass19InitialBasis_holds8
    {W : WeightsN 8 3 ℂ} (hChars : TropicalComponentBCharacters8 W)
    (hzero19 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 19) :
    ∀ c, (terminalBClass19InitialBasis8 c).Holds (tropicalSupportWeight8 W) := by
  let x := tropicalSupportWeight8 W
  have hraw : ∀ r : Fin 1,
      (tropicalComponentBRawFactor8 (terminalBClass19RawSource8 r)).Holds x := by
    intro r
    fin_cases r
    · exact rawCharacter_holds_of_allZeroInClass x
        tropicalComponentBClassMembers8 tropicalComponentBRawFactor8 hzero19 (by decide)
  intro c
  exact FactorBasisSource.row_holds x tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBClass19RawSource8 r))
    hChars hraw (terminalBClass19InitialSource8 c)

theorem terminalBClass19_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W)
    (hzero19 : AllZeroInClass tropicalComponentBClassMembers8
      (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 19) : False := by
  let x := tropicalSupportWeight8 W
  have hx : ∀ i, x i ≠ 0 := tropicalSupportWeight8_ne_zero hSupport
  have hInitial := terminalBClass19InitialBasis_holds8 hChars hzero19
  have h0 : (terminalBClass19Basis8 0).Holds x := hInitial 0
  have h1 : (terminalBClass19Basis8 1).Holds x := hInitial 1
  have h2 : (terminalBClass19Basis8 2).Holds x := hInitial 2
  have hPrefix3 : ∀ c : Fin 3,
      (terminalBClass19Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h3 : (terminalBClass19Basis8 3).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 3 ↦ terminalBClass19Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 223) (terminalBClass19Basis8 3)
      terminalBClass19CharacterCertificate3_8 hPrefix3
      (tropicalOverlapRelations8_hold hSupport hEq 223)
  have hPrefix4 : ∀ c : Fin 4,
      (terminalBClass19Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h4 : (terminalBClass19Basis8 4).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 4 ↦ terminalBClass19Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 259) (terminalBClass19Basis8 4)
      terminalBClass19CharacterCertificate4_8 hPrefix4
      (tropicalOverlapRelations8_hold hSupport hEq 259)
  have hPrefix5 : ∀ c : Fin 5,
      (terminalBClass19Basis8 ⟨c.val, by omega⟩).Holds x := by
    intro c
    fin_cases c <;> assumption
  have h5 : (terminalBClass19Basis8 5).Holds x :=
    holds_of_laurentCharacterCertificate x hx
      (fun c : Fin 5 ↦ terminalBClass19Basis8 ⟨c.val, by omega⟩)
      (tropicalOverlapRelation8 293) (terminalBClass19Basis8 5)
      terminalBClass19CharacterCertificate5_8 hPrefix5
      (tropicalOverlapRelations8_hold hSupport hEq 293)
  have hBasis : ∀ c, (terminalBClass19Basis8 c).Holds x := by
    intro c
    fin_cases c <;> assumption
  exact false_of_laurentNestedFaceCertificate x hx terminalBClass19Basis8
    tropicalTerminalRelation73_8
    tropicalTerminalRelation75_8
    terminalBClass19NestedCertificate8 hBasis
    (tropicalTerminalRelation73_8_hold hSupport hEq)
    (tropicalTerminalRelation75_8_hold hSupport hEq)


/-- All non-survivor Component B cover destinations are contradictory.  The
remaining cover is therefore one of the three exact survivor rows. -/
theorem tropicalTerminalComponentB8_survivor_cover
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∃ i : Fin 288, componentBDispatch8 i = .survivor ∧
      ∀ c ∈ componentBCover8 i,
        AllZeroInClass tropicalComponentBClassMembers8
          (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
            (tropicalSupportWeight8 W)) c := by
  obtain ⟨i, hcover⟩ :=
    tropicalComponentB_allZero_class_cover8 hSupport hEq hChars
  cases hdispatch : componentBDispatch8 i with
  | class7 =>
      exact False.elim (terminalBClass7_impossible8 hSupport hEq hChars
        (hcover 7 ((componentBDispatch8_class7_iff i).mp hdispatch)))
  | core817 =>
      have hcore := (componentBDispatch8_core817_iff i).mp hdispatch
      exact False.elim (terminalBCore817_impossible8 hSupport hEq hChars
        (hcover 8 (hcore.2 (by decide)))
        (hcover 17 (hcore.2 (by decide))))
  | class14 =>
      have h14 := (componentBDispatch8_class14_iff i).mp hdispatch
      exact False.elim (terminalBClass14_impossible8 hSupport hEq hChars
        (hcover 14 h14.2.2))
  | class19 =>
      have h19 := (componentBDispatch8_class19_iff i).mp hdispatch
      exact False.elim (terminalBClass19_impossible8 hSupport hEq hChars
        (hcover 19 h19.2.2.2))
  | survivor =>
      exact ⟨i, hdispatch, hcover⟩


end

end MonochromaticQuantumGraphs.N8D3
