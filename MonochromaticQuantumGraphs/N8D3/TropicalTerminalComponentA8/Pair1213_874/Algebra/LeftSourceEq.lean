import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Structural 1213/874 omitted-face equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural decomposition into the omitted monomial and left face. -/
theorem terminalA1213_874LeftSource8_eq :
    tropicalTerminalRelation874_8 =
      Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
        (1 : ℤ) + terminalA1213_874LeftFace8 := by
  rw [tropicalTerminalRelation874_8_explicit]
  simp [tropicalTerminalExplicitRelation8, terminalA1213_874LeftFace8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
