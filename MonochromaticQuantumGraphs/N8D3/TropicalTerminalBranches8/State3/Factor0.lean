import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Factor0.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Factor0.Target

/-! Split factor 0 for state 3. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBState3FactorCertificate0_8 :
    LaurentFactorCertificate (κ := Fin 4)
      terminalBState3RawBasis8 terminalBState3SplitRelation0_8
      (terminalBSplitCharacter8 0)
      (terminalBSplitCharacter8 2) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBState3Factor0ReductionUse8
    source_eq := terminalBState3Factor0SourceEq8
    target_eq := terminalBState3Factor0TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
