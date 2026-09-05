import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5310Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring5310_core_compatible : CoreCompatible coloring5310 := by
  decide

theorem partial_amplitude5310_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5310).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring5310 (by decide)
    coloring5310_core_compatible table5310 table5310_complete
  rw [table5310_expanded, table5310_polynomial] at hs
  exact hs

theorem partial_premise102 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p102).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude5310 p102 (1) (0 : Exponent 143) _ (partial_amplitude5310_holds W h hW)
  exact premiseCheck102

end MonochromaticQuantumGraphs.N8D3.Candidate129
