import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 Pairing reduction use 9 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 9 for the Pairing reduction. -/
def terminalA1213_874PairingReductionMonomial0098 :
    MonomialReductionCertificate terminalA1213_874BasisRow8
      (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) :=
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

/-- The exact coefficient and exponent payload of use 9. -/
def terminalA1213_874PairingReductionUse0098 : CharacterReductionUse terminalA1213_874BasisRow8 :=
{ coefficient := (-1)
  sourceExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
  targetExponent := (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ))
  reduction := terminalA1213_874PairingReductionMonomial0098
}

@[simp] theorem terminalA1213_874PairingReductionUse0098_coefficient :
    terminalA1213_874PairingReductionUse0098.coefficient = (-1) := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0098_sourceExponent :
    terminalA1213_874PairingReductionUse0098.sourceExponent = (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0098_targetExponent :
    terminalA1213_874PairingReductionUse0098.targetExponent = (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0098_signExponent :
    terminalA1213_874PairingReductionUse0098.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
