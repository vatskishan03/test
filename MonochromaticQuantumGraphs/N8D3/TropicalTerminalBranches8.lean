import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.NonSurvivor
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State9
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15

/-!
# Terminal Component B contradiction

The exact 288-cover dispatch first eliminates four non-survivor destinations.
The remaining rows are exactly 3, 9 and 15; each is split by two exact
Bq0/Bq2 factor certificates into the frozen branch-zero or branch-one
derivative contradiction.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs.FactorCoverCertificate

/-- The Component B characters cannot hold at an exact GHZ solution on the
canonical six-matching support. -/
theorem tropicalComponentBCharacters_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W)
    (hChars : TropicalComponentBCharacters8 W) : False := by
  obtain ⟨i, hi, hcover⟩ :=
    tropicalTerminalComponentB8_survivor_cover hSupport hEq hChars
  rcases (componentBDispatch8_survivor_iff i).mp hi with rfl | rfl | rfl
  · exact terminalBState3_impossible8 hSupport hEq hChars hcover
  · exact terminalBState9_impossible8 hSupport hEq hChars hcover
  · exact terminalBState15_impossible8 hSupport hEq hChars hcover

end MonochromaticQuantumGraphs.N8D3
