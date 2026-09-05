import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3126Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3126_core_compatible : CoreCompatible coloring3126 := by
  decide

theorem partial_amplitude3126_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3126).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3126 (by decide)
    coloring3126_core_compatible table3126 table3126_complete
  rw [table3126_expanded, table3126_polynomial] at hs
  exact hs

theorem partial_premise001 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p001).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3126 p001 (1) (0 : Exponent 143) _ (partial_amplitude3126_holds W h hW)
  exact premiseCheck001

end MonochromaticQuantumGraphs.N8D3.Candidate129
