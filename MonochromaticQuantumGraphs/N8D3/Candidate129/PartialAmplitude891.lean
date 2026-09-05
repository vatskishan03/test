import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude891Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring891_core_compatible : CoreCompatible coloring891 := by
  decide

theorem partial_amplitude891_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude891).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring891 (by decide)
    coloring891_core_compatible table891 table891_complete
  rw [table891_expanded, table891_polynomial] at hs
  exact hs

theorem partial_premise020 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p020).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude891 p020 (1) (0 : Exponent 143) _ (partial_amplitude891_holds W h hW)
  exact premiseCheck020

end MonochromaticQuantumGraphs.N8D3.Candidate129
