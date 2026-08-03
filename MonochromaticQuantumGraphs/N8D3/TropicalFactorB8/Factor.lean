import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E000
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E001
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E002
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E003
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E004
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E005
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E006
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E007
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E008
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E009
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E010
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E011
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E012
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E013
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E014
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E015
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E016
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E017
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E018
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E019
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E020
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E021
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E022
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E023
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E024
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E025
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E026
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E027
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E028
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E029
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E030
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E031
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E032
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E033
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E034
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E035
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E036
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E037
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E038
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E039
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E040
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E041
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E042
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E043
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E044
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E045
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E046
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E047
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E048
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E049
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E050
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E051
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E052
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E053
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E054
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E055
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E056
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E057
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E058

/-!
# All 59 Component-B raw factor products
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Product vanishing for every explicitly indexed raw edge. -/
theorem tropicalComponentBRawFactorEdgeProductsByIndex8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∀ e : Fin 59,
      (tropicalComponentBRawFactor8
          (tropicalComponentBRawFactorEdgePair8 e).1).factorValue
          (tropicalSupportWeight8 W) *
        (tropicalComponentBRawFactor8
          (tropicalComponentBRawFactorEdgePair8 e).2).factorValue
          (tropicalSupportWeight8 W) = 0 := by
  intro e
  fin_cases e
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_000 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_001 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_002 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_003 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_004 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_005 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_006 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_007 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_008 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_009 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_010 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_011 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_012 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_013 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_014 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_015 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_016 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_017 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_018 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_019 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_020 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_021 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_022 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_023 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_024 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_025 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_026 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_027 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_028 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_029 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_030 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_031 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_032 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_033 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_034 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_035 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_036 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_037 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_038 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_039 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_040 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_041 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_042 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_043 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_044 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_045 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_046 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_047 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_048 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_049 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_050 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_051 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_052 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_053 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_054 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_055 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_056 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_057 hSupport hEq hChars
  · simpa [tropicalComponentBRawFactorEdgePair8] using
      tropicalComponentBRawFactorEdgeProduct8_058 hSupport hEq hChars

/-- Product vanishing for the exact symmetric raw adjacency relation. -/
theorem tropicalComponentBRawFactorProducts8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    ∀ ⦃r s⦄, tropicalComponentBRawFactorEdge8 r s →
      (tropicalComponentBRawFactor8 r).factorValue
          (tropicalSupportWeight8 W) *
        (tropicalComponentBRawFactor8 s).factorValue
          (tropicalSupportWeight8 W) = 0 := by
  intro r s hrs
  rcases hrs with ⟨e, hpair | hpair⟩
  · simpa [hpair] using
      tropicalComponentBRawFactorEdgeProductsByIndex8 hSupport hEq hChars e
  · simpa [hpair, mul_comm] using
      tropicalComponentBRawFactorEdgeProductsByIndex8 hSupport hEq hChars e

end

end MonochromaticQuantumGraphs.N8D3
