import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5337Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring5337_core_compatible : CoreCompatible coloring5337 := by
  decide

theorem partial_amplitude5337_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5337).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring5337 (by decide)
    coloring5337_core_compatible table5337 table5337_complete
  rw [table5337_expanded, table5337_polynomial] at hs
  exact hs

theorem partial_premise003 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p003).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude5337 p003 (1) (0 : Exponent 143) _ (partial_amplitude5337_holds W h hW)
  exact premiseCheck003

end MonochromaticQuantumGraphs.N8D3.Candidate129
