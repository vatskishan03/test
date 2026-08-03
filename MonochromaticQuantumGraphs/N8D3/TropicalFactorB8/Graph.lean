import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.GraphExact

/-!
# Component-B false-twin classes and cover dispatch
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentBClassMembers8_class00
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 0 ↔
      tropicalComponentBRawFactorClass8 r = 0 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class01
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 1 ↔
      tropicalComponentBRawFactorClass8 r = 1 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class02
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 2 ↔
      tropicalComponentBRawFactorClass8 r = 2 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class03
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 3 ↔
      tropicalComponentBRawFactorClass8 r = 3 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class04
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 4 ↔
      tropicalComponentBRawFactorClass8 r = 4 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class05
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 5 ↔
      tropicalComponentBRawFactorClass8 r = 5 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class06
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 6 ↔
      tropicalComponentBRawFactorClass8 r = 6 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class07
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 7 ↔
      tropicalComponentBRawFactorClass8 r = 7 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class08
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 8 ↔
      tropicalComponentBRawFactorClass8 r = 8 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class09
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 9 ↔
      tropicalComponentBRawFactorClass8 r = 9 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class10
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 10 ↔
      tropicalComponentBRawFactorClass8 r = 10 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class11
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 11 ↔
      tropicalComponentBRawFactorClass8 r = 11 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class12
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 12 ↔
      tropicalComponentBRawFactorClass8 r = 12 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class13
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 13 ↔
      tropicalComponentBRawFactorClass8 r = 13 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class14
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 14 ↔
      tropicalComponentBRawFactorClass8 r = 14 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class15
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 15 ↔
      tropicalComponentBRawFactorClass8 r = 15 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class16
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 16 ↔
      tropicalComponentBRawFactorClass8 r = 16 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class17
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 17 ↔
      tropicalComponentBRawFactorClass8 r = 17 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class18
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 18 ↔
      tropicalComponentBRawFactorClass8 r = 18 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class19
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 19 ↔
      tropicalComponentBRawFactorClass8 r = 19 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class20
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 20 ↔
      tropicalComponentBRawFactorClass8 r = 20 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class21
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 21 ↔
      tropicalComponentBRawFactorClass8 r = 21 := by
  revert r
  decide

private theorem tropicalComponentBClassMembers8_class22
    (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 22 ↔
      tropicalComponentBRawFactorClass8 r = 22 := by
  revert r
  decide

/-- Exact membership characterization for all 23 false-twin classes. -/
theorem tropicalComponentBClassMembers8_iff
    (c : Fin 23) (r : Fin 49) :
    r ∈ tropicalComponentBClassMembers8 c ↔
      tropicalComponentBRawFactorClass8 r = c := by
  fin_cases c
  · exact tropicalComponentBClassMembers8_class00 r
  · exact tropicalComponentBClassMembers8_class01 r
  · exact tropicalComponentBClassMembers8_class02 r
  · exact tropicalComponentBClassMembers8_class03 r
  · exact tropicalComponentBClassMembers8_class04 r
  · exact tropicalComponentBClassMembers8_class05 r
  · exact tropicalComponentBClassMembers8_class06 r
  · exact tropicalComponentBClassMembers8_class07 r
  · exact tropicalComponentBClassMembers8_class08 r
  · exact tropicalComponentBClassMembers8_class09 r
  · exact tropicalComponentBClassMembers8_class10 r
  · exact tropicalComponentBClassMembers8_class11 r
  · exact tropicalComponentBClassMembers8_class12 r
  · exact tropicalComponentBClassMembers8_class13 r
  · exact tropicalComponentBClassMembers8_class14 r
  · exact tropicalComponentBClassMembers8_class15 r
  · exact tropicalComponentBClassMembers8_class16 r
  · exact tropicalComponentBClassMembers8_class17 r
  · exact tropicalComponentBClassMembers8_class18 r
  · exact tropicalComponentBClassMembers8_class19 r
  · exact tropicalComponentBClassMembers8_class20 r
  · exact tropicalComponentBClassMembers8_class21 r
  · exact tropicalComponentBClassMembers8_class22 r

/-- Every existing class edge expands to a complete bipartite raw graph, with
membership and adjacency both checked from their exact finite tables. -/
theorem tropicalComponentBCompleteBipartiteQuotient8 :
    IsCompleteBipartiteQuotient
      tropicalComponentBRawFactorEdge8 componentBFactorEdge8
      tropicalComponentBClassMembers8 := by
  intro c d hcd r s hrc hsd
  have hrc' : tropicalComponentBRawFactorClass8 r = c :=
    (tropicalComponentBClassMembers8_iff c r).mp hrc
  have hsd' : tropicalComponentBRawFactorClass8 s = d :=
    (tropicalComponentBClassMembers8_iff d s).mp hsd
  rw [tropicalComponentBRawFactorEdge8_iff_classEdge]
  simpa [hrc', hsd'] using hcd

/-- Exact Component-B dispatch to the already checked 288-row class-cover
table.  The cover table is imported and is not duplicated here. -/
theorem tropicalComponentB_allZero_class_cover8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∃ i : Fin 288, ∀ c ∈ componentBCover8 i,
      AllZeroInClass tropicalComponentBClassMembers8
        (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c :=
  exists_listed_allZero_cover
    tropicalComponentBRawFactorEdge8 componentBFactorEdge8
    tropicalComponentBClassMembers8
    (fun r ↦ (tropicalComponentBRawFactor8 r).factorValue
      (tropicalSupportWeight8 W))
    componentBCover8 componentBCover8_complete
    tropicalComponentBCompleteBipartiteQuotient8
    (tropicalComponentBRawFactorProducts8 hSupport hEq hChars)

end

end MonochromaticQuantumGraphs.N8D3
