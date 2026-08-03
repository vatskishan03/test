import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 Pairing reduction use 15 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 15 for the Pairing reduction. -/
def terminalA437_65PairingReductionMonomial0158 :
    MonomialReductionCertificate terminalA437_65BasisRow8
      (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![0, 0, 0, 0, 0, 0] i
        | .inr _ => 0
      combination_eq := by
        apply SignedCharacterRow.ext <;> decide }
}

/-- The exact coefficient and exponent payload of use 15. -/
def terminalA437_65PairingReductionUse0158 : CharacterReductionUse terminalA437_65BasisRow8 :=
{ coefficient := (-1)
  sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
  targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
  reduction := terminalA437_65PairingReductionMonomial0158
}

@[simp] theorem terminalA437_65PairingReductionUse0158_coefficient :
    terminalA437_65PairingReductionUse0158.coefficient = (-1) := rfl

@[simp] theorem terminalA437_65PairingReductionUse0158_sourceExponent :
    terminalA437_65PairingReductionUse0158.sourceExponent = (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65PairingReductionUse0158_targetExponent :
    terminalA437_65PairingReductionUse0158.targetExponent = (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65PairingReductionUse0158_signExponent :
    terminalA437_65PairingReductionUse0158.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
