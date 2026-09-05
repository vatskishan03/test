import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3582Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3582_core_compatible : CoreCompatible coloring3582 := by
  decide

theorem partial_amplitude3582_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3582).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3582 (by decide)
    coloring3582_core_compatible table3582 table3582_complete
  rw [table3582_expanded, table3582_polynomial] at hs
  exact hs

theorem partial_premise064 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p064).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3582 p064 (1) (0 : Exponent 143) _ (partial_amplitude3582_holds W h hW)
  exact premiseCheck064

end MonochromaticQuantumGraphs.N8D3.Candidate129
