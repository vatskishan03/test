import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3783Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3783_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3783).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3783 (by decide)
    table3783 table3783_complete
  rw [table3783_expanded, table3783_polynomial] at hs
  exact hs

#print axioms amplitude3783_holds

theorem premise131 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p131).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3783 p131 (1) (0 : Exponent 143) _ (amplitude3783_holds W h hW)
  exact premiseCheck131

end MonochromaticQuantumGraphs.N8D3.Candidate129
