import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3782Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3782_core_compatible : CoreCompatible coloring3782 := by
  decide

theorem partial_amplitude3782_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3782).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3782 (by decide)
    coloring3782_core_compatible table3782 table3782_complete
  rw [table3782_expanded, table3782_polynomial] at hs
  exact hs

theorem partial_premise121 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p121).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3782 p121 (1) (0 : Exponent 143) _ (partial_amplitude3782_holds W h hW)
  exact premiseCheck121

end MonochromaticQuantumGraphs.N8D3.Candidate129
