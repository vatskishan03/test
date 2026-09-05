import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3054Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3054_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3054).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3054 (by decide)
    table3054 table3054_complete
  rw [table3054_expanded, table3054_polynomial] at hs
  exact hs

#print axioms amplitude3054_holds

theorem premise026 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p026).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3054 p026 (1) (0 : Exponent 143) _ (amplitude3054_holds W h hW)
  exact premiseCheck026

end MonochromaticQuantumGraphs.N8D3.Candidate129
