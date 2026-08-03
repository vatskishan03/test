import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 Pairing reduction use 3 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 3 for the Pairing reduction. -/
def terminalA437_65PairingReductionMonomial0038 :
    MonomialReductionCertificate terminalA437_65BasisRow8
      (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![0, 0, 0, 0, 0, 0] i
        | .inr _ => 0
      combination_eq := by
        apply SignedCharacterRow.ext <;> decide }
}

/-- The exact coefficient and exponent payload of use 3. -/
def terminalA437_65PairingReductionUse0038 : CharacterReductionUse terminalA437_65BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
  targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
  reduction := terminalA437_65PairingReductionMonomial0038
}

@[simp] theorem terminalA437_65PairingReductionUse0038_coefficient :
    terminalA437_65PairingReductionUse0038.coefficient = 1 := rfl

@[simp] theorem terminalA437_65PairingReductionUse0038_sourceExponent :
    terminalA437_65PairingReductionUse0038.sourceExponent = (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65PairingReductionUse0038_targetExponent :
    terminalA437_65PairingReductionUse0038.targetExponent = (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65PairingReductionUse0038_signExponent :
    terminalA437_65PairingReductionUse0038.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
