import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3863Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3863_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3863).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3863 (by decide)
    table3863 table3863_complete
  rw [table3863_expanded, table3863_polynomial] at hs
  exact hs

#print axioms amplitude3863_holds

theorem premise124 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p124).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3863 p124 (1) (0 : Exponent 143) _ (amplitude3863_holds W h hW)
  exact premiseCheck124

end MonochromaticQuantumGraphs.N8D3.Candidate129
