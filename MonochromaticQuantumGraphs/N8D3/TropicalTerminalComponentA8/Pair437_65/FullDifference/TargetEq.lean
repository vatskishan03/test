import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.FullDifference.Uses

/-! Structural 437/65 FullDifference target equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the FullDifference reduction target. -/
theorem terminalA437_65FullDifferenceReduction_target_eq :
    (∑ k : Fin 17,
      Finsupp.single (terminalA437_65FullDifferenceReductionUse8 k).targetExponent
        (signedCoefficient (terminalA437_65FullDifferenceReductionUse8 k).reduction.signExponent
          (terminalA437_65FullDifferenceReductionUse8 k).coefficient)) = (1 : ℤ) • terminalA437_65FullDifferenceReduced8 := by
  simp [terminalA437_65FullDifferenceReductionUse8, Fin.sum_univ_succ, signedCoefficient, terminalA437_65FullDifferenceReduced8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
