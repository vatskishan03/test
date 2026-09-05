import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude909Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring909_core_compatible : CoreCompatible coloring909 := by
  decide

theorem partial_amplitude909_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude909).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring909 (by decide)
    coloring909_core_compatible table909 table909_complete
  rw [table909_expanded, table909_polynomial] at hs
  exact hs

theorem partial_premise007 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p007).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude909 p007 (1) (0 : Exponent 143) _ (partial_amplitude909_holds W h hW)
  exact premiseCheck007

end MonochromaticQuantumGraphs.N8D3.Candidate129
