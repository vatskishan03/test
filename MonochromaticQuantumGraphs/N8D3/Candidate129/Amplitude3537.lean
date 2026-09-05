import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3537Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3537_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3537).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3537 (by decide)
    table3537 table3537_complete
  rw [table3537_expanded, table3537_polynomial] at hs
  exact hs

#print axioms amplitude3537_holds

theorem premise042 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p042).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3537 p042 (1) (0 : Exponent 143) _ (amplitude3537_holds W h hW)
  exact premiseCheck042

end MonochromaticQuantumGraphs.N8D3.Candidate129
