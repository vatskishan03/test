import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1677Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude1677_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude1677).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring1677 (by decide)
    table1677 table1677_complete
  rw [table1677_expanded, table1677_polynomial] at hs
  exact hs

#print axioms amplitude1677_holds

theorem premise091 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p091).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude1677 p091 (1) (0 : Exponent 143) _ (amplitude1677_holds W h hW)
  exact premiseCheck091

end MonochromaticQuantumGraphs.N8D3.Candidate129
