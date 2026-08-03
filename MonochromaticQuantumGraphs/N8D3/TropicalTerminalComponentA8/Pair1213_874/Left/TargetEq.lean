import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Left.Uses

/-! Structural 1213/874 Left target equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Left reduction target. -/
theorem terminalA1213_874LeftReduction_target_eq :
    (∑ k : Fin 9,
      Finsupp.single (terminalA1213_874LeftReductionUse8 k).targetExponent
        (signedCoefficient (terminalA1213_874LeftReductionUse8 k).reduction.signExponent
          (terminalA1213_874LeftReductionUse8 k).coefficient)) = (1 : ℤ) • terminalA1213_874LeftReduced8 := by
  simp [terminalA1213_874LeftReductionUse8, Fin.sum_univ_succ, signedCoefficient, terminalA1213_874LeftReduced8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
