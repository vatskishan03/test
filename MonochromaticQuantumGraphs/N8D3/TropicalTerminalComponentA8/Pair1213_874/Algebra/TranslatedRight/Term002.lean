import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 shifted exponent 2 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded shifted-exponent identity for right-source term 2. -/
@[simp] theorem terminalA1213_874TranslatedRightExponent8_term002 :
    (Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) + (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 142 (1 : ℤ)) =
      (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) := by
  abel

end

end MonochromaticQuantumGraphs.N8D3
