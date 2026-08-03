import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 Right reduction use 5 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 5 for the Right reduction. -/
def terminalA437_65RightReductionMonomial0058 :
    MonomialReductionCertificate terminalA437_65BasisRow8
      (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) (Pi.single 12 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![1, (-1), 0, 0, 0, 0] i
        | .inr _ => 0
      combination_eq := by
        apply SignedCharacterRow.ext <;> decide }
}

/-- The exact coefficient and exponent payload of use 5. -/
def terminalA437_65RightReductionUse0058 : CharacterReductionUse terminalA437_65BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
  targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ))
  reduction := terminalA437_65RightReductionMonomial0058
}

@[simp] theorem terminalA437_65RightReductionUse0058_coefficient :
    terminalA437_65RightReductionUse0058.coefficient = 1 := rfl

@[simp] theorem terminalA437_65RightReductionUse0058_sourceExponent :
    terminalA437_65RightReductionUse0058.sourceExponent = (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65RightReductionUse0058_targetExponent :
    terminalA437_65RightReductionUse0058.targetExponent = (Pi.single 12 (1 : ℤ) + Pi.single 48 ((-1) : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65RightReductionUse0058_signExponent :
    terminalA437_65RightReductionUse0058.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
