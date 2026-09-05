import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3126Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3126_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3126).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3126 (by decide)
    table3126 table3126_complete
  rw [table3126_expanded, table3126_polynomial] at hs
  exact hs

#print axioms amplitude3126_holds

theorem premise001 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p001).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3126 p001 (1) (0 : Exponent 143) _ (amplitude3126_holds W h hW)
  exact premiseCheck001

end MonochromaticQuantumGraphs.N8D3.Candidate129
