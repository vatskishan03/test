import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Uses

/-! Structural 1213/874 Right target equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Right reduction target. -/
theorem terminalA1213_874RightReduction_target_eq :
    (∑ k : Fin 8,
      Finsupp.single (terminalA1213_874RightReductionUse8 k).targetExponent
        (signedCoefficient (terminalA1213_874RightReductionUse8 k).reduction.signExponent
          (terminalA1213_874RightReductionUse8 k).coefficient)) = (1 : ℤ) • terminalA1213_874RightReduced8 := by
  simp [terminalA1213_874RightReductionUse8, Fin.sum_univ_succ, signedCoefficient, terminalA1213_874RightReduced8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
