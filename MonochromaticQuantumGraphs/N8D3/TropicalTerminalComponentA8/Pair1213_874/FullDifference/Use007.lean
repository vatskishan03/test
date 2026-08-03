import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 FullDifference reduction use 7 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 7 for the FullDifference reduction. -/
def terminalA1213_874FullDifferenceReductionMonomial0078 :
    MonomialReductionCertificate terminalA1213_874BasisRow8
      (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) :=
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

/-- The exact coefficient and exponent payload of use 7. -/
def terminalA1213_874FullDifferenceReductionUse0078 : CharacterReductionUse terminalA1213_874BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
  targetExponent := (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
  reduction := terminalA1213_874FullDifferenceReductionMonomial0078
}

@[simp] theorem terminalA1213_874FullDifferenceReductionUse0078_coefficient :
    terminalA1213_874FullDifferenceReductionUse0078.coefficient = 1 := rfl

@[simp] theorem terminalA1213_874FullDifferenceReductionUse0078_sourceExponent :
    terminalA1213_874FullDifferenceReductionUse0078.sourceExponent = (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874FullDifferenceReductionUse0078_targetExponent :
    terminalA1213_874FullDifferenceReductionUse0078.targetExponent = (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874FullDifferenceReductionUse0078_signExponent :
    terminalA1213_874FullDifferenceReductionUse0078.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
