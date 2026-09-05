import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3339Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3339_core_compatible : CoreCompatible coloring3339 := by
  decide

theorem partial_amplitude3339_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3339).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3339 (by decide)
    coloring3339_core_compatible table3339 table3339_complete
  rw [table3339_expanded, table3339_polynomial] at hs
  exact hs

theorem partial_premise076 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p076).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3339 p076 (1) (0 : Exponent 143) _ (partial_amplitude3339_holds W h hW)
  exact premiseCheck076

end MonochromaticQuantumGraphs.N8D3.Candidate129
