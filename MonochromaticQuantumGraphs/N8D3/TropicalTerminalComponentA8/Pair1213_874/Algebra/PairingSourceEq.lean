import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Algebra.TranslatedRight

/-! Structural 1213/874 pairing-source equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural raw-source interpretation of the pairing polynomial. -/
theorem terminalA1213_874PairingSource8_eq :
    terminalA1213_874PairingSource8 =
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
        tropicalTerminalRelation1213_8 - terminalA1213_874LeftFace8 := by
  rw [tropicalTerminalRelation1213_8_explicit]
  simp [tropicalTerminalExplicitRelation8, terminalA1213_874PairingSource8, terminalA1213_874LeftFace8,
    LaurentPolynomial.translate_add, LaurentPolynomial.translate_single]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
