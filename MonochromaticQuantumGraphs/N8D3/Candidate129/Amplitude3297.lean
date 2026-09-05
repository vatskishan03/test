import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3297Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3297_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3297).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3297 (by decide)
    table3297 table3297_complete
  rw [table3297_expanded, table3297_polynomial] at hs
  exact hs

#print axioms amplitude3297_holds

theorem premise035 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p035).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3297 p035 (1) (0 : Exponent 143) _ (amplitude3297_holds W h hW)
  exact premiseCheck035

end MonochromaticQuantumGraphs.N8D3.Candidate129
