import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 Pairing reduction use 2 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 2 for the Pairing reduction. -/
def terminalA437_65PairingReductionMonomial0028 :
    MonomialReductionCertificate terminalA437_65BasisRow8
      (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![0, 0, 0, 0, 0, 0] i
        | .inr _ => 0
      combination_eq := by
        apply SignedCharacterRow.ext <;> decide }
}

/-- The exact coefficient and exponent payload of use 2. -/
def terminalA437_65PairingReductionUse0028 : CharacterReductionUse terminalA437_65BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
  targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ))
  reduction := terminalA437_65PairingReductionMonomial0028
}

@[simp] theorem terminalA437_65PairingReductionUse0028_coefficient :
    terminalA437_65PairingReductionUse0028.coefficient = 1 := rfl

@[simp] theorem terminalA437_65PairingReductionUse0028_sourceExponent :
    terminalA437_65PairingReductionUse0028.sourceExponent = (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65PairingReductionUse0028_targetExponent :
    terminalA437_65PairingReductionUse0028.targetExponent = (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65PairingReductionUse0028_signExponent :
    terminalA437_65PairingReductionUse0028.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
