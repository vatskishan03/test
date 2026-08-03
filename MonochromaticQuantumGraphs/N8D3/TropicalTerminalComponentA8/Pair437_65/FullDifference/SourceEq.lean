import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.FullDifference.Uses

/-! Structural 437/65 FullDifference source equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the FullDifference reduction source. -/
theorem terminalA437_65FullDifferenceReduction_source_eq :
    (∑ k : Fin 17,
      Finsupp.single (terminalA437_65FullDifferenceReductionUse8 k).sourceExponent
        (terminalA437_65FullDifferenceReductionUse8 k).coefficient) = terminalA437_65FullDifferenceSource8 := by
  simp [terminalA437_65FullDifferenceReductionUse8, Fin.sum_univ_succ, terminalA437_65FullDifferenceSource8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
