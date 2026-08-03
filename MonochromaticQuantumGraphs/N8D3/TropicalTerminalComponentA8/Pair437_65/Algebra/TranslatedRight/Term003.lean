import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 shifted exponent 3 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded shifted-exponent identity for right-source term 3. -/
@[simp] theorem terminalA437_65TranslatedRightExponent8_term003 :
    (Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) + (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 141 (1 : ℤ)) =
      (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  abel

end

end MonochromaticQuantumGraphs.N8D3
