import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Data
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
# Public collector for all 59 factor edges
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

theorem tropicalComponentBRawFactorEdgeProduct8_000
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 7).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor000.leftFactor,
    TropicalFactorB8.Internal.Factor000.rightFactor] using
    TropicalFactorB8.Internal.Factor000.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_001
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 8).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor001.leftFactor,
    TropicalFactorB8.Internal.Factor001.rightFactor] using
    TropicalFactorB8.Internal.Factor001.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_002
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 39).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor002.leftFactor,
    TropicalFactorB8.Internal.Factor002.rightFactor] using
    TropicalFactorB8.Internal.Factor002.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_003
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 40).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor003.leftFactor,
    TropicalFactorB8.Internal.Factor003.rightFactor] using
    TropicalFactorB8.Internal.Factor003.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_004
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 41).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor004.leftFactor,
    TropicalFactorB8.Internal.Factor004.rightFactor] using
    TropicalFactorB8.Internal.Factor004.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_005
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 42).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor005.leftFactor,
    TropicalFactorB8.Internal.Factor005.rightFactor] using
    TropicalFactorB8.Internal.Factor005.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_006
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 43).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor006.leftFactor,
    TropicalFactorB8.Internal.Factor006.rightFactor] using
    TropicalFactorB8.Internal.Factor006.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_007
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 46).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor007.leftFactor,
    TropicalFactorB8.Internal.Factor007.rightFactor] using
    TropicalFactorB8.Internal.Factor007.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_008
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 47).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor008.leftFactor,
    TropicalFactorB8.Internal.Factor008.rightFactor] using
    TropicalFactorB8.Internal.Factor008.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_009
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 0).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 48).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor009.leftFactor,
    TropicalFactorB8.Internal.Factor009.rightFactor] using
    TropicalFactorB8.Internal.Factor009.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_010
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 1).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 7).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor010.leftFactor,
    TropicalFactorB8.Internal.Factor010.rightFactor] using
    TropicalFactorB8.Internal.Factor010.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_011
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 1).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 8).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor011.leftFactor,
    TropicalFactorB8.Internal.Factor011.rightFactor] using
    TropicalFactorB8.Internal.Factor011.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_012
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 1).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 27).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor012.leftFactor,
    TropicalFactorB8.Internal.Factor012.rightFactor] using
    TropicalFactorB8.Internal.Factor012.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_013
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 1).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 28).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor013.leftFactor,
    TropicalFactorB8.Internal.Factor013.rightFactor] using
    TropicalFactorB8.Internal.Factor013.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_014
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 1).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 29).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor014.leftFactor,
    TropicalFactorB8.Internal.Factor014.rightFactor] using
    TropicalFactorB8.Internal.Factor014.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_015
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 1).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 30).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor015.leftFactor,
    TropicalFactorB8.Internal.Factor015.rightFactor] using
    TropicalFactorB8.Internal.Factor015.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_016
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 1).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 31).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor016.leftFactor,
    TropicalFactorB8.Internal.Factor016.rightFactor] using
    TropicalFactorB8.Internal.Factor016.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_017
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 2).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 7).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor017.leftFactor,
    TropicalFactorB8.Internal.Factor017.rightFactor] using
    TropicalFactorB8.Internal.Factor017.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_018
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 2).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 8).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor018.leftFactor,
    TropicalFactorB8.Internal.Factor018.rightFactor] using
    TropicalFactorB8.Internal.Factor018.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_019
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 2).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 27).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor019.leftFactor,
    TropicalFactorB8.Internal.Factor019.rightFactor] using
    TropicalFactorB8.Internal.Factor019.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_020
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 2).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 28).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor020.leftFactor,
    TropicalFactorB8.Internal.Factor020.rightFactor] using
    TropicalFactorB8.Internal.Factor020.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_021
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 2).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 29).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor021.leftFactor,
    TropicalFactorB8.Internal.Factor021.rightFactor] using
    TropicalFactorB8.Internal.Factor021.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_022
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 2).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 30).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor022.leftFactor,
    TropicalFactorB8.Internal.Factor022.rightFactor] using
    TropicalFactorB8.Internal.Factor022.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_023
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 2).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 31).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor023.leftFactor,
    TropicalFactorB8.Internal.Factor023.rightFactor] using
    TropicalFactorB8.Internal.Factor023.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_024
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 3).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 9).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor024.leftFactor,
    TropicalFactorB8.Internal.Factor024.rightFactor] using
    TropicalFactorB8.Internal.Factor024.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_025
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 3).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 10).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor025.leftFactor,
    TropicalFactorB8.Internal.Factor025.rightFactor] using
    TropicalFactorB8.Internal.Factor025.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_026
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 3).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 34).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor026.leftFactor,
    TropicalFactorB8.Internal.Factor026.rightFactor] using
    TropicalFactorB8.Internal.Factor026.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_027
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 4).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 9).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor027.leftFactor,
    TropicalFactorB8.Internal.Factor027.rightFactor] using
    TropicalFactorB8.Internal.Factor027.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_028
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 4).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 10).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor028.leftFactor,
    TropicalFactorB8.Internal.Factor028.rightFactor] using
    TropicalFactorB8.Internal.Factor028.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_029
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 5).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 9).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor029.leftFactor,
    TropicalFactorB8.Internal.Factor029.rightFactor] using
    TropicalFactorB8.Internal.Factor029.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_030
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 5).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 10).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor030.leftFactor,
    TropicalFactorB8.Internal.Factor030.rightFactor] using
    TropicalFactorB8.Internal.Factor030.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_031
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 11).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor031.leftFactor,
    TropicalFactorB8.Internal.Factor031.rightFactor] using
    TropicalFactorB8.Internal.Factor031.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_032
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 21).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor032.leftFactor,
    TropicalFactorB8.Internal.Factor032.rightFactor] using
    TropicalFactorB8.Internal.Factor032.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_033
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 22).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor033.leftFactor,
    TropicalFactorB8.Internal.Factor033.rightFactor] using
    TropicalFactorB8.Internal.Factor033.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_034
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 23).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor034.leftFactor,
    TropicalFactorB8.Internal.Factor034.rightFactor] using
    TropicalFactorB8.Internal.Factor034.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_035
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 24).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor035.leftFactor,
    TropicalFactorB8.Internal.Factor035.rightFactor] using
    TropicalFactorB8.Internal.Factor035.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_036
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 25).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor036.leftFactor,
    TropicalFactorB8.Internal.Factor036.rightFactor] using
    TropicalFactorB8.Internal.Factor036.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_037
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 26).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor037.leftFactor,
    TropicalFactorB8.Internal.Factor037.rightFactor] using
    TropicalFactorB8.Internal.Factor037.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_038
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 35).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor038.leftFactor,
    TropicalFactorB8.Internal.Factor038.rightFactor] using
    TropicalFactorB8.Internal.Factor038.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_039
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 36).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor039.leftFactor,
    TropicalFactorB8.Internal.Factor039.rightFactor] using
    TropicalFactorB8.Internal.Factor039.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_040
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 37).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor040.leftFactor,
    TropicalFactorB8.Internal.Factor040.rightFactor] using
    TropicalFactorB8.Internal.Factor040.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_041
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 6).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 38).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor041.leftFactor,
    TropicalFactorB8.Internal.Factor041.rightFactor] using
    TropicalFactorB8.Internal.Factor041.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_042
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 11).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 32).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor042.leftFactor,
    TropicalFactorB8.Internal.Factor042.rightFactor] using
    TropicalFactorB8.Internal.Factor042.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_043
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 11).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 33).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor043.leftFactor,
    TropicalFactorB8.Internal.Factor043.rightFactor] using
    TropicalFactorB8.Internal.Factor043.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_044
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 12).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 44).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor044.leftFactor,
    TropicalFactorB8.Internal.Factor044.rightFactor] using
    TropicalFactorB8.Internal.Factor044.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_045
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 12).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 45).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor045.leftFactor,
    TropicalFactorB8.Internal.Factor045.rightFactor] using
    TropicalFactorB8.Internal.Factor045.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_046
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 13).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 44).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor046.leftFactor,
    TropicalFactorB8.Internal.Factor046.rightFactor] using
    TropicalFactorB8.Internal.Factor046.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_047
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 13).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 45).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor047.leftFactor,
    TropicalFactorB8.Internal.Factor047.rightFactor] using
    TropicalFactorB8.Internal.Factor047.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_048
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 14).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 44).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor048.leftFactor,
    TropicalFactorB8.Internal.Factor048.rightFactor] using
    TropicalFactorB8.Internal.Factor048.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_049
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 14).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 45).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor049.leftFactor,
    TropicalFactorB8.Internal.Factor049.rightFactor] using
    TropicalFactorB8.Internal.Factor049.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_050
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 15).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 27).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor050.leftFactor,
    TropicalFactorB8.Internal.Factor050.rightFactor] using
    TropicalFactorB8.Internal.Factor050.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_051
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 15).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 30).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor051.leftFactor,
    TropicalFactorB8.Internal.Factor051.rightFactor] using
    TropicalFactorB8.Internal.Factor051.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_052
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 16).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 27).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor052.leftFactor,
    TropicalFactorB8.Internal.Factor052.rightFactor] using
    TropicalFactorB8.Internal.Factor052.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_053
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 17).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 39).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor053.leftFactor,
    TropicalFactorB8.Internal.Factor053.rightFactor] using
    TropicalFactorB8.Internal.Factor053.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_054
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 17).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 42).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor054.leftFactor,
    TropicalFactorB8.Internal.Factor054.rightFactor] using
    TropicalFactorB8.Internal.Factor054.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_055
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 18).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 39).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor055.leftFactor,
    TropicalFactorB8.Internal.Factor055.rightFactor] using
    TropicalFactorB8.Internal.Factor055.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_056
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 18).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 42).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor056.leftFactor,
    TropicalFactorB8.Internal.Factor056.rightFactor] using
    TropicalFactorB8.Internal.Factor056.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_057
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 19).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 39).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor057.leftFactor,
    TropicalFactorB8.Internal.Factor057.rightFactor] using
    TropicalFactorB8.Internal.Factor057.product hSupport hEq hChars

theorem tropicalComponentBRawFactorEdgeProduct8_058
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    (tropicalComponentBRawFactor8 20).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentBRawFactor8 39).factorValue
        (tropicalSupportWeight8 W) = 0 := by
  simpa [tropicalComponentBRawFactor8,
    TropicalFactorB8.Internal.Factor058.leftFactor,
    TropicalFactorB8.Internal.Factor058.rightFactor] using
    TropicalFactorB8.Internal.Factor058.product hSupport hEq hChars

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
