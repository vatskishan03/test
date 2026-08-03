import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 Pairing reduction use 8 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 8 for the Pairing reduction. -/
def terminalA1213_874PairingReductionMonomial0088 :
    MonomialReductionCertificate terminalA1213_874BasisRow8
      (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0
      ] i
        | .inr _ => 0
      combination_eq := by
        apply SignedCharacterRow.ext <;> decide }
}

/-- The exact coefficient and exponent payload of use 8. -/
def terminalA1213_874PairingReductionUse0088 : CharacterReductionUse terminalA1213_874BasisRow8 :=
{ coefficient := (-1)
  sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
  targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ))
  reduction := terminalA1213_874PairingReductionMonomial0088
}

@[simp] theorem terminalA1213_874PairingReductionUse0088_coefficient :
    terminalA1213_874PairingReductionUse0088.coefficient = (-1) := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0088_sourceExponent :
    terminalA1213_874PairingReductionUse0088.sourceExponent = (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0088_targetExponent :
    terminalA1213_874PairingReductionUse0088.targetExponent = (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0088_signExponent :
    terminalA1213_874PairingReductionUse0088.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
