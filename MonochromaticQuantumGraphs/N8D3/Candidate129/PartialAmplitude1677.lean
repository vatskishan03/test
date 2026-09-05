import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1677Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring1677_core_compatible : CoreCompatible coloring1677 := by
  decide

theorem partial_amplitude1677_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude1677).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring1677 (by decide)
    coloring1677_core_compatible table1677 table1677_complete
  rw [table1677_expanded, table1677_polynomial] at hs
  exact hs

theorem partial_premise091 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p091).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude1677 p091 (1) (0 : Exponent 143) _ (partial_amplitude1677_holds W h hW)
  exact premiseCheck091

end MonochromaticQuantumGraphs.N8D3.Candidate129
