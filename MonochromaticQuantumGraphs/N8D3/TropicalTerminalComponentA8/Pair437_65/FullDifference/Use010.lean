import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 FullDifference reduction use 10 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 10 for the FullDifference reduction. -/
def terminalA437_65FullDifferenceReductionMonomial0108 :
    MonomialReductionCertificate terminalA437_65BasisRow8
      (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) :=
{ signExponent := 0
  implication :=
    { coeff := fun
        | .inl i => ![0, 0, 1, 0, 0, (-1)] i
        | .inr _ => 0
      combination_eq := by
        apply SignedCharacterRow.ext <;> decide }
}

/-- The exact coefficient and exponent payload of use 10. -/
def terminalA437_65FullDifferenceReductionUse0108 : CharacterReductionUse terminalA437_65BasisRow8 :=
{ coefficient := (-1)
  sourceExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
  targetExponent := (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ))
  reduction := terminalA437_65FullDifferenceReductionMonomial0108
}

@[simp] theorem terminalA437_65FullDifferenceReductionUse0108_coefficient :
    terminalA437_65FullDifferenceReductionUse0108.coefficient = (-1) := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0108_sourceExponent :
    terminalA437_65FullDifferenceReductionUse0108.sourceExponent = (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ) + Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ)) := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0108_targetExponent :
    terminalA437_65FullDifferenceReductionUse0108.targetExponent = (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := rfl

@[simp] theorem terminalA437_65FullDifferenceReductionUse0108_signExponent :
    terminalA437_65FullDifferenceReductionUse0108.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
