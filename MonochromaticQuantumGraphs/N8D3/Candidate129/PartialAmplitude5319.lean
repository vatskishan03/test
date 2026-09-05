import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5319Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring5319_core_compatible : CoreCompatible coloring5319 := by
  decide

theorem partial_amplitude5319_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5319).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring5319 (by decide)
    coloring5319_core_compatible table5319 table5319_complete
  rw [table5319_expanded, table5319_polynomial] at hs
  exact hs

theorem partial_premise015 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p015).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude5319 p015 (1) (0 : Exponent 143) _ (partial_amplitude5319_holds W h hW)
  exact premiseCheck015

end MonochromaticQuantumGraphs.N8D3.Candidate129
