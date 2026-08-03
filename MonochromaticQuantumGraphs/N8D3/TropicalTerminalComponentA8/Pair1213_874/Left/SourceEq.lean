import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Left.Uses

/-! Structural 1213/874 Left source equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Left reduction source. -/
theorem terminalA1213_874LeftReduction_source_eq :
    (∑ k : Fin 9,
      Finsupp.single (terminalA1213_874LeftReductionUse8 k).sourceExponent
        (terminalA1213_874LeftReductionUse8 k).coefficient) = tropicalTerminalRelation874_8 := by
  rw [tropicalTerminalRelation874_8_explicit]
  simp [terminalA1213_874LeftReductionUse8, Fin.sum_univ_succ, tropicalTerminalExplicitRelation8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
