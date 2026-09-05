import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5322Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude5322_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5322).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring5322 (by decide)
    table5322 table5322_complete
  rw [table5322_expanded, table5322_polynomial] at hs
  exact hs

#print axioms amplitude5322_holds

theorem premise016 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p016).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude5322 p016 (1) (0 : Exponent 143) _ (amplitude5322_holds W h hW)
  exact premiseCheck016

end MonochromaticQuantumGraphs.N8D3.Candidate129
