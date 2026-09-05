import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5292Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring5292_core_compatible : CoreCompatible coloring5292 := by
  decide

theorem partial_amplitude5292_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5292).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring5292 (by decide)
    coloring5292_core_compatible table5292 table5292_complete
  rw [table5292_expanded, table5292_polynomial] at hs
  exact hs

theorem partial_premise100 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p100).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude5292 p100 (1) (0 : Exponent 143) _ (partial_amplitude5292_holds W h hW)
  exact premiseCheck100

end MonochromaticQuantumGraphs.N8D3.Candidate129
