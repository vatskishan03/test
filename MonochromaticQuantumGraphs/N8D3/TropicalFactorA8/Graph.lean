import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.GraphExact
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor

/-!
# Component-A false-twin classes and cover dispatch
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentAClassMembers8_class00
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 0 ↔
      tropicalComponentARawFactorClass8 r = 0 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class01
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 1 ↔
      tropicalComponentARawFactorClass8 r = 1 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class02
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 2 ↔
      tropicalComponentARawFactorClass8 r = 2 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class03
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 3 ↔
      tropicalComponentARawFactorClass8 r = 3 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class04
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 4 ↔
      tropicalComponentARawFactorClass8 r = 4 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class05
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 5 ↔
      tropicalComponentARawFactorClass8 r = 5 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class06
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 6 ↔
      tropicalComponentARawFactorClass8 r = 6 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class07
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 7 ↔
      tropicalComponentARawFactorClass8 r = 7 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class08
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 8 ↔
      tropicalComponentARawFactorClass8 r = 8 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class09
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 9 ↔
      tropicalComponentARawFactorClass8 r = 9 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class10
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 10 ↔
      tropicalComponentARawFactorClass8 r = 10 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class11
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 11 ↔
      tropicalComponentARawFactorClass8 r = 11 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class12
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 12 ↔
      tropicalComponentARawFactorClass8 r = 12 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class13
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 13 ↔
      tropicalComponentARawFactorClass8 r = 13 := by
  revert r
  decide

private theorem tropicalComponentAClassMembers8_class14
    (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 14 ↔
      tropicalComponentARawFactorClass8 r = 14 := by
  revert r
  decide

/-- Exact membership characterization for all 15 false-twin classes. -/
theorem tropicalComponentAClassMembers8_iff
    (c : Fin 15) (r : Fin 59) :
    r ∈ tropicalComponentAClassMembers8 c ↔
      tropicalComponentARawFactorClass8 r = c := by
  fin_cases c
  · exact tropicalComponentAClassMembers8_class00 r
  · exact tropicalComponentAClassMembers8_class01 r
  · exact tropicalComponentAClassMembers8_class02 r
  · exact tropicalComponentAClassMembers8_class03 r
  · exact tropicalComponentAClassMembers8_class04 r
  · exact tropicalComponentAClassMembers8_class05 r
  · exact tropicalComponentAClassMembers8_class06 r
  · exact tropicalComponentAClassMembers8_class07 r
  · exact tropicalComponentAClassMembers8_class08 r
  · exact tropicalComponentAClassMembers8_class09 r
  · exact tropicalComponentAClassMembers8_class10 r
  · exact tropicalComponentAClassMembers8_class11 r
  · exact tropicalComponentAClassMembers8_class12 r
  · exact tropicalComponentAClassMembers8_class13 r
  · exact tropicalComponentAClassMembers8_class14 r

/-- Every existing class edge expands to a complete bipartite raw graph, with
membership and adjacency both checked from their exact finite tables. -/
theorem tropicalComponentACompleteBipartiteQuotient8 :
    IsCompleteBipartiteQuotient
      tropicalComponentARawFactorEdge8 componentAFactorEdge8
      tropicalComponentAClassMembers8 := by
  intro c d hcd r s hrc hsd
  have hrc' : tropicalComponentARawFactorClass8 r = c :=
    (tropicalComponentAClassMembers8_iff c r).mp hrc
  have hsd' : tropicalComponentARawFactorClass8 s = d :=
    (tropicalComponentAClassMembers8_iff d s).mp hsd
  rw [tropicalComponentARawFactorEdge8_iff_classEdge]
  simpa [hrc', hsd'] using hcd

/-- Exact Component-A dispatch to the already checked 54-row class-cover
table.  The cover table is imported and is not duplicated here. -/
theorem tropicalComponentA_allZero_class_cover8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    ∃ i : Fin 54, ∀ c ∈ componentACover8 i,
      AllZeroInClass tropicalComponentAClassMembers8
        (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
          (tropicalSupportWeight8 W)) c :=
  exists_listed_allZero_cover
    tropicalComponentARawFactorEdge8 componentAFactorEdge8
    tropicalComponentAClassMembers8
    (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
      (tropicalSupportWeight8 W))
    componentACover8 componentACover8_complete
    tropicalComponentACompleteBipartiteQuotient8
    (tropicalComponentARawFactorProducts8 hSupport hEq hChars)

end

end MonochromaticQuantumGraphs.N8D3
