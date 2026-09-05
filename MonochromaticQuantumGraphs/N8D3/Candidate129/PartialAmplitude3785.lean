import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3785Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3785_core_compatible : CoreCompatible coloring3785 := by
  decide

theorem partial_amplitude3785_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3785).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3785 (by decide)
    coloring3785_core_compatible table3785 table3785_complete
  rw [table3785_expanded, table3785_polynomial] at hs
  exact hs

theorem partial_premise134 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p134).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3785 p134 (1) (0 : Exponent 143) _ (partial_amplitude3785_holds W h hW)
  exact premiseCheck134

end MonochromaticQuantumGraphs.N8D3.Candidate129
