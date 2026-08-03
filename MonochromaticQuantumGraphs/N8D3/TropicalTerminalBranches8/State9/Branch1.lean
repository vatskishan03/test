import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State9.Data

/-! Bounded branch-1 character replay for state 9. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBState9Branch1Implication0_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState9Branch1Basis8)
      (terminalBBranch1TargetCharacter8 0) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

def terminalBState9Branch1Implication1_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState9Branch1Basis8)
      (terminalBBranch1TargetCharacter8 1) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          -1, 0, 1, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

def terminalBState9Branch1Implication2_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState9Branch1Basis8)
      (terminalBBranch1TargetCharacter8 2) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          -1, -1, 1, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

def terminalBState9Branch1Implication3_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState9Branch1Basis8)
      (terminalBBranch1TargetCharacter8 3) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

def terminalBState9Branch1Implication4_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState9Branch1Basis8)
      (terminalBBranch1TargetCharacter8 4) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          -1, -1, 1, 0, 0, 0, 0, 1
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

end

end MonochromaticQuantumGraphs.N8D3
