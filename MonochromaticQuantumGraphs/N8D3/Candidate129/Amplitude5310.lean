import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5310Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude5310_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5310).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring5310 (by decide)
    table5310 table5310_complete
  rw [table5310_expanded, table5310_polynomial] at hs
  exact hs

#print axioms amplitude5310_holds

theorem premise102 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p102).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude5310 p102 (1) (0 : Exponent 143) _ (amplitude5310_holds W h hW)
  exact premiseCheck102

end MonochromaticQuantumGraphs.N8D3.Candidate129
