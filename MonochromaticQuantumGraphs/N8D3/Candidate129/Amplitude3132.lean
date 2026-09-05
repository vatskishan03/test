import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3132Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3132_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3132).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3132 (by decide)
    table3132 table3132_complete
  rw [table3132_expanded, table3132_polynomial] at hs
  exact hs

#print axioms amplitude3132_holds

end MonochromaticQuantumGraphs.N8D3.Candidate129
