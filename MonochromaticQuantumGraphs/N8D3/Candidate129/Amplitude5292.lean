import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5292Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude5292_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5292).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring5292 (by decide)
    table5292 table5292_complete
  rw [table5292_expanded, table5292_polynomial] at hs
  exact hs

#print axioms amplitude5292_holds

theorem premise100 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p100).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude5292 p100 (1) (0 : Exponent 143) _ (amplitude5292_holds W h hW)
  exact premiseCheck100

end MonochromaticQuantumGraphs.N8D3.Candidate129
