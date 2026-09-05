import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3861Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3861_core_compatible : CoreCompatible coloring3861 := by
  decide

theorem partial_amplitude3861_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3861).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3861 (by decide)
    coloring3861_core_compatible table3861 table3861_complete
  rw [table3861_expanded, table3861_polynomial] at hs
  exact hs

theorem partial_premise123 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p123).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3861 p123 (1) (0 : Exponent 143) _ (partial_amplitude3861_holds W h hW)
  exact premiseCheck123

end MonochromaticQuantumGraphs.N8D3.Candidate129
