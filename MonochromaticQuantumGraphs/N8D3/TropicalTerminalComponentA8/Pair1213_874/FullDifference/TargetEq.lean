import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.FullDifference.Uses

/-! Structural 1213/874 FullDifference target equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the FullDifference reduction target. -/
theorem terminalA1213_874FullDifferenceReduction_target_eq :
    (∑ k : Fin 17,
      Finsupp.single (terminalA1213_874FullDifferenceReductionUse8 k).targetExponent
        (signedCoefficient (terminalA1213_874FullDifferenceReductionUse8 k).reduction.signExponent
          (terminalA1213_874FullDifferenceReductionUse8 k).coefficient)) = (1 : ℤ) • terminalA1213_874FullDifferenceReduced8 := by
  simp [terminalA1213_874FullDifferenceReductionUse8, Fin.sum_univ_succ, signedCoefficient, terminalA1213_874FullDifferenceReduced8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
