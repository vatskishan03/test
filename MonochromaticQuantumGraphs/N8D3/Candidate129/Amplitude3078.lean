import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3078Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3078_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3078).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3078 (by decide)
    table3078 table3078_complete
  rw [table3078_expanded, table3078_polynomial] at hs
  exact hs

#print axioms amplitude3078_holds

theorem premise059 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p059).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3078 p059 (1) (0 : Exponent 143) _ (amplitude3078_holds W h hW)
  exact premiseCheck059

end MonochromaticQuantumGraphs.N8D3.Candidate129
