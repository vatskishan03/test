import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3132Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3132_core_compatible : CoreCompatible coloring3132 := by
  decide

theorem partial_amplitude3132_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3132).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3132 (by decide)
    coloring3132_core_compatible table3132 table3132_complete
  rw [table3132_expanded, table3132_polynomial] at hs
  exact hs

end MonochromaticQuantumGraphs.N8D3.Candidate129
