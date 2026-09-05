import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1650Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude1650_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude1650).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring1650 (by decide)
    table1650 table1650_complete
  rw [table1650_expanded, table1650_polynomial] at hs
  exact hs

#print axioms amplitude1650_holds

theorem premise090 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p090).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude1650 p090 (1) (0 : Exponent 143) _ (amplitude1650_holds W h hW)
  exact premiseCheck090

end MonochromaticQuantumGraphs.N8D3.Candidate129
