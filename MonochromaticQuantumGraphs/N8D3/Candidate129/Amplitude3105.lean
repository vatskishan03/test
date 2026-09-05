import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3105Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3105_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3105).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3105 (by decide)
    table3105 table3105_complete
  rw [table3105_expanded, table3105_polynomial] at hs
  exact hs

#print axioms amplitude3105_holds

theorem premise012 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p012).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3105 p012 (1) (0 : Exponent 143) _ (amplitude3105_holds W h hW)
  exact premiseCheck012

end MonochromaticQuantumGraphs.N8D3.Candidate129
