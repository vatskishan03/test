import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude759Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring759_core_compatible : CoreCompatible coloring759 := by
  decide

theorem partial_amplitude759_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude759).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring759 (by decide)
    coloring759_core_compatible table759 table759_complete
  rw [table759_expanded, table759_polynomial] at hs
  exact hs

end MonochromaticQuantumGraphs.N8D3.Candidate129
