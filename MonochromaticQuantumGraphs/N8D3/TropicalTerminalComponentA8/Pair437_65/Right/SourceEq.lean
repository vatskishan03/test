import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Uses

/-! Structural 437/65 Right source equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Right reduction source. -/
theorem terminalA437_65RightReduction_source_eq :
    (∑ k : Fin 8,
      Finsupp.single (terminalA437_65RightReductionUse8 k).sourceExponent
        (terminalA437_65RightReductionUse8 k).coefficient) = tropicalTerminalRelation437_8 := by
  rw [tropicalTerminalRelation437_8_explicit]
  simp [terminalA437_65RightReductionUse8, Fin.sum_univ_succ, tropicalTerminalExplicitRelation8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
