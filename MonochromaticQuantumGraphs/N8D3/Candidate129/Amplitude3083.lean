import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3083Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3083_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3083).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3083 (by decide)
    table3083 table3083_complete
  rw [table3083_expanded, table3083_polynomial] at hs
  exact hs

#print axioms amplitude3083_holds

theorem premise106 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p106).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3083 p106 (1) (0 : Exponent 143) _ (amplitude3083_holds W h hW)
  exact premiseCheck106

end MonochromaticQuantumGraphs.N8D3.Candidate129
