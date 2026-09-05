import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude912Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude912_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude912).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring912 (by decide)
    table912 table912_complete
  rw [table912_expanded, table912_polynomial] at hs
  exact hs

#print axioms amplitude912_holds

theorem premise008 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p008).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude912 p008 (1) (0 : Exponent 143) _ (amplitude912_holds W h hW)
  exact premiseCheck008

end MonochromaticQuantumGraphs.N8D3.Candidate129
