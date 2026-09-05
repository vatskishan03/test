import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3366Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3366_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3366).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3366 (by decide)
    table3366 table3366_complete
  rw [table3366_expanded, table3366_polynomial] at hs
  exact hs

#print axioms amplitude3366_holds

theorem premise070 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p070).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3366 p070 (1) (0 : Exponent 143) _ (amplitude3366_holds W h hW)
  exact premiseCheck070

end MonochromaticQuantumGraphs.N8D3.Candidate129
