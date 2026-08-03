import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Structural 437/65 omitted-face equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural decomposition into the omitted monomial and left face. -/
theorem terminalA437_65LeftSource8_eq :
    tropicalTerminalRelation65_8 =
      Finsupp.single (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
        (1 : ℤ) + terminalA437_65LeftFace8 := by
  rw [tropicalTerminalRelation65_8_explicit]
  simp [tropicalTerminalExplicitRelation8, terminalA437_65LeftFace8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
