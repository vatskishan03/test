import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 FullDifference reduction use 1 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 1 for the FullDifference reduction. -/
def terminalA437_65FullDifferenceReductionMonomial0018 :
    MonomialReductionCertificate terminalA437_65BasisRow8
      (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![0, 0, 0, 0, 0, 0] i
        | .inr _ => 0
      combination_eq := by
        apply SignedCharacterRow.ext <;> decide }
}

/-- The exact coefficient and exponent payload of use 1. -/
def terminalA437_65FullDifferenceReductionUse0018 : CharacterReductionUse terminalA437_65BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
  targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
  reduction := terminalA437_65FullDifferenceReductionMonomial0018
}

@[simp] theorem terminalA437_65FullDifferenceReductionUse0018_coefficient :
    terminalA437_65FullDifferenceReductionUse0018.coefficient = 1 := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0018_sourceExponent :
    terminalA437_65FullDifferenceReductionUse0018.sourceExponent = (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0018_targetExponent :
    terminalA437_65FullDifferenceReductionUse0018.targetExponent = (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0018_signExponent :
    terminalA437_65FullDifferenceReductionUse0018.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
