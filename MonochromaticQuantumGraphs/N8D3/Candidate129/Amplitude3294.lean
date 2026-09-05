import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3294Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3294_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3294).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3294 (by decide)
    table3294 table3294_complete
  rw [table3294_expanded, table3294_polynomial] at hs
  exact hs

#print axioms amplitude3294_holds

theorem premise034 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p034).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3294 p034 (1) (0 : Exponent 143) _ (amplitude3294_holds W h hW)
  exact premiseCheck034

end MonochromaticQuantumGraphs.N8D3.Candidate129
