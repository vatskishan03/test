import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 Pairing reduction use 6 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 6 for the Pairing reduction. -/
def terminalA1213_874PairingReductionMonomial0068 :
    MonomialReductionCertificate terminalA1213_874BasisRow8
      (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![
        (-1), 0, 0, 0, 0, 0,
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

/-- The exact coefficient and exponent payload of use 6. -/
def terminalA1213_874PairingReductionUse0068 : CharacterReductionUse terminalA1213_874BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
  targetExponent := (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ))
  reduction := terminalA1213_874PairingReductionMonomial0068
}

@[simp] theorem terminalA1213_874PairingReductionUse0068_coefficient :
    terminalA1213_874PairingReductionUse0068.coefficient = 1 := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0068_sourceExponent :
    terminalA1213_874PairingReductionUse0068.sourceExponent = (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ) + Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ)) := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0068_targetExponent :
    terminalA1213_874PairingReductionUse0068.targetExponent = (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874PairingReductionUse0068_signExponent :
    terminalA1213_874PairingReductionUse0068.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
