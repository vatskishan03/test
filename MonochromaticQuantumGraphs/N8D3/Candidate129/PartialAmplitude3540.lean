import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3540Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3540_core_compatible : CoreCompatible coloring3540 := by
  decide

theorem partial_amplitude3540_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3540).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3540 (by decide)
    coloring3540_core_compatible table3540 table3540_complete
  rw [table3540_expanded, table3540_polynomial] at hs
  exact hs

theorem partial_premise043 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p043).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3540 p043 (1) (0 : Exponent 143) _ (partial_amplitude3540_holds W h hW)
  exact premiseCheck043

end MonochromaticQuantumGraphs.N8D3.Candidate129
