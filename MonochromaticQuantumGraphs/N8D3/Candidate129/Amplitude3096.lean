import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3096Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3096_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3096).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3096 (by decide)
    table3096 table3096_complete
  rw [table3096_expanded, table3096_polynomial] at hs
  exact hs

#print axioms amplitude3096_holds

theorem premise085 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p085).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3096 p085 (1) (0 : Exponent 143) _ (amplitude3096_holds W h hW)
  exact premiseCheck085

end MonochromaticQuantumGraphs.N8D3.Candidate129
