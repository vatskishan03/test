import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Left.Uses

/-! Structural 437/65 Left target equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Left reduction target. -/
theorem terminalA437_65LeftReduction_target_eq :
    (∑ k : Fin 9,
      Finsupp.single (terminalA437_65LeftReductionUse8 k).targetExponent
        (signedCoefficient (terminalA437_65LeftReductionUse8 k).reduction.signExponent
          (terminalA437_65LeftReductionUse8 k).coefficient)) = (1 : ℤ) • terminalA437_65LeftReduced8 := by
  simp [terminalA437_65LeftReductionUse8, Fin.sum_univ_succ, signedCoefficient, terminalA437_65LeftReduced8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
