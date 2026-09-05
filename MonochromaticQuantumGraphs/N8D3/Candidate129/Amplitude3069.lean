import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3069Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3069_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3069).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3069 (by decide)
    table3069 table3069_complete
  rw [table3069_expanded, table3069_polynomial] at hs
  exact hs

#print axioms amplitude3069_holds

theorem premise028 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p028).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3069 p028 (1) (0 : Exponent 143) _ (amplitude3069_holds W h hW)
  exact premiseCheck028

end MonochromaticQuantumGraphs.N8D3.Candidate129
