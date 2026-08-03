import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Combination0.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Combination0.Target

/-! Second-quotient eliminant 0 for state 3. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBState3CombinationCertificate0_8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalBState3RawBasis8 (LaurentPolynomial.translate terminalBState3CombinationShift0_8 (tropicalComponentBQuotientRelation8 0) - tropicalComponentBQuotientRelation8 2) terminalBState3SplitRelation0_8 :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBState3Combination0ReductionUse8
    source_eq := terminalBState3Combination0SourceEq8
    target_eq := terminalBState3Combination0TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
