import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5322Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring5322_core_compatible : CoreCompatible coloring5322 := by
  decide

theorem partial_amplitude5322_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5322).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring5322 (by decide)
    coloring5322_core_compatible table5322 table5322_complete
  rw [table5322_expanded, table5322_polynomial] at hs
  exact hs

theorem partial_premise016 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p016).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude5322 p016 (1) (0 : Exponent 143) _ (partial_amplitude5322_holds W h hW)
  exact premiseCheck016

end MonochromaticQuantumGraphs.N8D3.Candidate129
