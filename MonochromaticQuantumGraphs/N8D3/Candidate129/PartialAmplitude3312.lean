import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3312Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3312_core_compatible : CoreCompatible coloring3312 := by
  decide

theorem partial_amplitude3312_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3312).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3312 (by decide)
    coloring3312_core_compatible table3312 table3312_complete
  rw [table3312_expanded, table3312_polynomial] at hs
  exact hs

theorem partial_premise037 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p037).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3312 p037 (1) (0 : Exponent 143) _ (partial_amplitude3312_holds W h hW)
  exact premiseCheck037

end MonochromaticQuantumGraphs.N8D3.Candidate129
