import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3105Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3105_core_compatible : CoreCompatible coloring3105 := by
  decide

theorem partial_amplitude3105_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3105).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3105 (by decide)
    coloring3105_core_compatible table3105 table3105_complete
  rw [table3105_expanded, table3105_polynomial] at hs
  exact hs

theorem partial_premise012 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p012).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3105 p012 (1) (0 : Exponent 143) _ (partial_amplitude3105_holds W h hW)
  exact premiseCheck012

end MonochromaticQuantumGraphs.N8D3.Candidate129
