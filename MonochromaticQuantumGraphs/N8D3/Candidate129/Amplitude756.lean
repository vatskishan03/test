import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude756Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude756_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude756).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring756 (by decide)
    table756 table756_complete
  rw [table756_expanded, table756_polynomial] at hs
  exact hs

#print axioms amplitude756_holds

end MonochromaticQuantumGraphs.N8D3.Candidate129
