import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5337Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude5337_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5337).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring5337 (by decide)
    table5337 table5337_complete
  rw [table5337_expanded, table5337_polynomial] at hs
  exact hs

#print axioms amplitude5337_holds

theorem premise003 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p003).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude5337 p003 (1) (0 : Exponent 143) _ (amplitude5337_holds W h hW)
  exact premiseCheck003

end MonochromaticQuantumGraphs.N8D3.Candidate129
