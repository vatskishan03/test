import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3053Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3053_core_compatible : CoreCompatible coloring3053 := by
  decide

theorem partial_amplitude3053_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3053).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3053 (by decide)
    coloring3053_core_compatible table3053 table3053_complete
  rw [table3053_expanded, table3053_polynomial] at hs
  exact hs

theorem partial_premise117 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p117).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3053 p117 (1) (0 : Exponent 143) _ (partial_amplitude3053_holds W h hW)
  exact premiseCheck117

end MonochromaticQuantumGraphs.N8D3.Candidate129
