import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Factor1.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Factor1.Target

/-! Split factor 1 for state 3. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBState3FactorCertificate1_8 :
    LaurentFactorCertificate (κ := Fin 4)
      terminalBState3RawBasis8 terminalBState3SplitRelation1_8
      (terminalBSplitCharacter8 1)
      (terminalBSplitCharacter8 2) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBState3Factor1ReductionUse8
    source_eq := terminalBState3Factor1SourceEq8
    target_eq := terminalBState3Factor1TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
