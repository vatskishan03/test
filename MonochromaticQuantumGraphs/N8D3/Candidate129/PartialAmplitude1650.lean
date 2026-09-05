import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1650Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring1650_core_compatible : CoreCompatible coloring1650 := by
  decide

theorem partial_amplitude1650_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude1650).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring1650 (by decide)
    coloring1650_core_compatible table1650 table1650_complete
  rw [table1650_expanded, table1650_polynomial] at hs
  exact hs

theorem partial_premise090 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p090).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude1650 p090 (1) (0 : Exponent 143) _ (partial_amplitude1650_holds W h hW)
  exact premiseCheck090

end MonochromaticQuantumGraphs.N8D3.Candidate129
