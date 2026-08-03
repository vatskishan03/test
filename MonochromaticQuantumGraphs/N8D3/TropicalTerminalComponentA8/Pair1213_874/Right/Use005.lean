import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 Right reduction use 5 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 5 for the Right reduction. -/
def terminalA1213_874RightReductionMonomial0058 :
    MonomialReductionCertificate terminalA1213_874BasisRow8
      (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) :=
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

/-- The exact coefficient and exponent payload of use 5. -/
def terminalA1213_874RightReductionUse0058 : CharacterReductionUse terminalA1213_874BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
  targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ))
  reduction := terminalA1213_874RightReductionMonomial0058
}

@[simp] theorem terminalA1213_874RightReductionUse0058_coefficient :
    terminalA1213_874RightReductionUse0058.coefficient = 1 := rfl

@[simp] theorem terminalA1213_874RightReductionUse0058_sourceExponent :
    terminalA1213_874RightReductionUse0058.sourceExponent = (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874RightReductionUse0058_targetExponent :
    terminalA1213_874RightReductionUse0058.targetExponent = (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874RightReductionUse0058_signExponent :
    terminalA1213_874RightReductionUse0058.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
