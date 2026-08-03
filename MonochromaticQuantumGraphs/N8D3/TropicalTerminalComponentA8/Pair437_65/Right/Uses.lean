import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Use000
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Use001
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Use002
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Use003
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Use004
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Use005
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Use006
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.Use007

/-! Collected 437/65 Right reduction uses -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Decision-free collection of the bounded Right uses. -/
def terminalA437_65RightReductionUse8 : Fin 8 → CharacterReductionUse terminalA437_65BasisRow8 :=
  ![
    terminalA437_65RightReductionUse0008, terminalA437_65RightReductionUse0018, terminalA437_65RightReductionUse0028,
    terminalA437_65RightReductionUse0038, terminalA437_65RightReductionUse0048, terminalA437_65RightReductionUse0058,
    terminalA437_65RightReductionUse0068, terminalA437_65RightReductionUse0078
  ]

end

end MonochromaticQuantumGraphs.N8D3
