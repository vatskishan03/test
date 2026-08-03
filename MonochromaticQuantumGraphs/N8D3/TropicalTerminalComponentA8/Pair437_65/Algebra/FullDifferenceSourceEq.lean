import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Algebra.TranslatedRight

/-! Structural 437/65 full-source equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural raw-source interpretation of the full subtraction. -/
theorem terminalA437_65FullDifferenceSource8_eq :
    terminalA437_65FullDifferenceSource8 = tropicalTerminalRelation65_8 -
      (1 : ℤ) • LaurentPolynomial.translate (Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
        tropicalTerminalRelation437_8 := by
  rw [tropicalTerminalRelation65_8_explicit,
    tropicalTerminalRelation437_8_explicit]
  simp [tropicalTerminalExplicitRelation8, terminalA437_65FullDifferenceSource8,
    LaurentPolynomial.translate_add, LaurentPolynomial.translate_single]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
