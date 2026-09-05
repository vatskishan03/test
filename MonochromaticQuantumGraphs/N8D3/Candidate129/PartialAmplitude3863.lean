import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3863Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3863_core_compatible : CoreCompatible coloring3863 := by
  decide

theorem partial_amplitude3863_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3863).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3863 (by decide)
    coloring3863_core_compatible table3863 table3863_complete
  rw [table3863_expanded, table3863_polynomial] at hs
  exact hs

theorem partial_premise124 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p124).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3863 p124 (1) (0 : Exponent 143) _ (partial_amplitude3863_holds W h hW)
  exact premiseCheck124

end MonochromaticQuantumGraphs.N8D3.Candidate129
