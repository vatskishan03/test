import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Left.Uses

/-! Structural 437/65 Left source equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Left reduction source. -/
theorem terminalA437_65LeftReduction_source_eq :
    (∑ k : Fin 9,
      Finsupp.single (terminalA437_65LeftReductionUse8 k).sourceExponent
        (terminalA437_65LeftReductionUse8 k).coefficient) = tropicalTerminalRelation65_8 := by
  rw [tropicalTerminalRelation65_8_explicit]
  simp [terminalA437_65LeftReductionUse8, Fin.sum_univ_succ, tropicalTerminalExplicitRelation8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
