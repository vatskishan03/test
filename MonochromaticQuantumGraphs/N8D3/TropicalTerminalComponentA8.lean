import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65

/-!
# Complete 27+27 terminal replay for Component A

The exact 54-row factor cover is retained.  Its checked `{2,7}` exclusive-or
dispatches each listed row to the corresponding historical nested-face pair.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Component A is impossible on the canonical support under EqSystem. -/
theorem tropicalComponentACharacters_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) : False := by
  obtain ⟨i, hcover⟩ :=
    tropicalComponentA_allZero_class_cover8 hSupport hEq hChars
  rcases componentACover8_two_xor_seven i with h2 | h7
  · exact terminalA1213_874_impossible8 hSupport hEq hChars
      (hcover 2 h2.1)
  · exact terminalA437_65_impossible8 hSupport hEq hChars
      (hcover 7 h7.1)

end

end MonochromaticQuantumGraphs.N8D3
