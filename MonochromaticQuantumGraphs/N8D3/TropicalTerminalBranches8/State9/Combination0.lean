import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State9.Combination0.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State9.Combination0.Target

/-! Second-quotient eliminant 0 for state 9. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBState9CombinationCertificate0_8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalBState9RawBasis8 (LaurentPolynomial.translate terminalBState9CombinationShift0_8 (tropicalComponentBQuotientRelation8 0) - tropicalComponentBQuotientRelation8 2) terminalBState9SplitRelation0_8 :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBState9Combination0ReductionUse8
    source_eq := terminalBState9Combination0SourceEq8
    target_eq := terminalBState9Combination0TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
