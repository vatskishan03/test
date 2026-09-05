import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3294Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3294_core_compatible : CoreCompatible coloring3294 := by
  decide

theorem partial_amplitude3294_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3294).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3294 (by decide)
    coloring3294_core_compatible table3294 table3294_complete
  rw [table3294_expanded, table3294_polynomial] at hs
  exact hs

theorem partial_premise034 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p034).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3294 p034 (1) (0 : Exponent 143) _ (partial_amplitude3294_holds W h hW)
  exact premiseCheck034

end MonochromaticQuantumGraphs.N8D3.Candidate129
