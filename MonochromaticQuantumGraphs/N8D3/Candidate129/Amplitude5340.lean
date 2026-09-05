import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5340Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude5340_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5340).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring5340 (by decide)
    table5340 table5340_complete
  rw [table5340_expanded, table5340_polynomial] at hs
  exact hs

#print axioms amplitude5340_holds

theorem premise004 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p004).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude5340 p004 (1) (0 : Exponent 143) _ (amplitude5340_holds W h hW)
  exact premiseCheck004

end MonochromaticQuantumGraphs.N8D3.Candidate129
