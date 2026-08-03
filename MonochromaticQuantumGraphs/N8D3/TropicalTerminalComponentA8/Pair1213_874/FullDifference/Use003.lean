import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 FullDifference reduction use 3 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded monomial implication 3 for the FullDifference reduction. -/
def terminalA1213_874FullDifferenceReductionMonomial0038 :
    MonomialReductionCertificate terminalA1213_874BasisRow8
      (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) :=
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

/-- The exact coefficient and exponent payload of use 3. -/
def terminalA1213_874FullDifferenceReductionUse0038 : CharacterReductionUse terminalA1213_874BasisRow8 :=
{ coefficient := 1
  sourceExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
  targetExponent := (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ))
  reduction := terminalA1213_874FullDifferenceReductionMonomial0038
}

@[simp] theorem terminalA1213_874FullDifferenceReductionUse0038_coefficient :
    terminalA1213_874FullDifferenceReductionUse0038.coefficient = 1 := rfl

@[simp] theorem terminalA1213_874FullDifferenceReductionUse0038_sourceExponent :
    terminalA1213_874FullDifferenceReductionUse0038.sourceExponent = (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874FullDifferenceReductionUse0038_targetExponent :
    terminalA1213_874FullDifferenceReductionUse0038.targetExponent = (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) := rfl

@[simp] theorem terminalA1213_874FullDifferenceReductionUse0038_signExponent :
    terminalA1213_874FullDifferenceReductionUse0038.reduction.signExponent = 0 := rfl

end

end MonochromaticQuantumGraphs.N8D3
