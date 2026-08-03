import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 FullDifference reduction use 4 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 4 for the FullDifference reduction. -/
def terminalA437_65FullDifferenceReductionMonomial0048 :
    MonomialReductionCertificate terminalA437_65BasisRow8
      (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![0, 0, 0, 0, 0, 0] i
        | .inr _ => 0
      combination_eq := by
        apply SignedCharacterRow.ext <;> decide }
}

/-- The exact coefficient and exponent payload of use 4. -/
def terminalA437_65FullDifferenceReductionUse0048 : CharacterReductionUse terminalA437_65BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
  targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ))
  reduction := terminalA437_65FullDifferenceReductionMonomial0048
}

@[simp] theorem terminalA437_65FullDifferenceReductionUse0048_coefficient :
    terminalA437_65FullDifferenceReductionUse0048.coefficient = 1 := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0048_sourceExponent :
    terminalA437_65FullDifferenceReductionUse0048.sourceExponent = (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0048_targetExponent :
    terminalA437_65FullDifferenceReductionUse0048.targetExponent = (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0048_signExponent :
    terminalA437_65FullDifferenceReductionUse0048.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
