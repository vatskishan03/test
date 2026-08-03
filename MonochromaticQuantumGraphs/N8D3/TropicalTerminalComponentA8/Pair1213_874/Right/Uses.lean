import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Use000
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Use001
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Use002
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Use003
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Use004
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Use005
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Use006
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.Use007

/-! Collected 1213/874 Right reduction uses -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Decision-free collection of the bounded Right uses. -/
def terminalA1213_874RightReductionUse8 : Fin 8 → CharacterReductionUse terminalA1213_874BasisRow8 :=
  ![
    terminalA1213_874RightReductionUse0008, terminalA1213_874RightReductionUse0018, terminalA1213_874RightReductionUse0028,
    terminalA1213_874RightReductionUse0038, terminalA1213_874RightReductionUse0048, terminalA1213_874RightReductionUse0058,
    terminalA1213_874RightReductionUse0068, terminalA1213_874RightReductionUse0078
  ]

end

end MonochromaticQuantumGraphs.N8D3
