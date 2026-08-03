import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State9.Combination1.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State9.Combination1.Target

/-! Second-quotient eliminant 1 for state 9. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBState9CombinationCertificate1_8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalBState9RawBasis8 (LaurentPolynomial.translate terminalBState9CombinationShift1_8 (tropicalComponentBQuotientRelation8 0) - tropicalComponentBQuotientRelation8 2) terminalBState9SplitRelation1_8 :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBState9Combination1ReductionUse8
    source_eq := terminalBState9Combination1SourceEq8
    target_eq := terminalBState9Combination1TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
