import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Uses

/-! Structural 1213/874 Right source equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Right reduction source. -/
theorem terminalA1213_874RightReduction_source_eq :
    (∑ k : Fin 8,
      Finsupp.single (terminalA1213_874RightReductionUse8 k).sourceExponent
        (terminalA1213_874RightReductionUse8 k).coefficient) = tropicalTerminalRelation1213_8 := by
  rw [tropicalTerminalRelation1213_8_explicit]
  simp [terminalA1213_874RightReductionUse8, Fin.sum_univ_succ, tropicalTerminalExplicitRelation8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
