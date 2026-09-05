import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3866Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3866_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3866).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3866 (by decide)
    table3866 table3866_complete
  rw [table3866_expanded, table3866_polynomial] at hs
  exact hs

#print axioms amplitude3866_holds

theorem premise135 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p135).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3866 p135 (1) (0 : Exponent 143) _ (amplitude3866_holds W h hW)
  exact premiseCheck135

end MonochromaticQuantumGraphs.N8D3.Candidate129
