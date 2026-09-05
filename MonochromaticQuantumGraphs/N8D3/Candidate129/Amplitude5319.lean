import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5319Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude5319_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5319).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring5319 (by decide)
    table5319 table5319_complete
  rw [table5319_expanded, table5319_polynomial] at hs
  exact hs

#print axioms amplitude5319_holds

theorem premise015 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p015).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude5319 p015 (1) (0 : Exponent 143) _ (amplitude5319_holds W h hW)
  exact premiseCheck015

end MonochromaticQuantumGraphs.N8D3.Candidate129
