import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3110Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3110_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3110).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3110 (by decide)
    table3110 table3110_complete
  rw [table3110_expanded, table3110_polynomial] at hs
  exact hs

#print axioms amplitude3110_holds

theorem premise128 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p128).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3110 p128 (1) (0 : Exponent 143) _ (amplitude3110_holds W h hW)
  exact premiseCheck128

end MonochromaticQuantumGraphs.N8D3.Candidate129
