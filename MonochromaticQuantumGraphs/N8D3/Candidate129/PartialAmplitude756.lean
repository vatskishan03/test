import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude756Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring756_core_compatible : CoreCompatible coloring756 := by
  decide

theorem partial_amplitude756_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude756).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring756 (by decide)
    coloring756_core_compatible table756 table756_complete
  rw [table756_expanded, table756_polynomial] at hs
  exact hs

end MonochromaticQuantumGraphs.N8D3.Candidate129
