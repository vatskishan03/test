import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15.Data

/-! Bounded branch-0 character replay for state 15. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBState15Branch0Implication0_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState15Branch0Basis8)
      (terminalBBranch0TargetCharacter8 0) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

def terminalBState15Branch0Implication1_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState15Branch0Basis8)
      (terminalBBranch0TargetCharacter8 1) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

def terminalBState15Branch0Implication2_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState15Branch0Basis8)
      (terminalBBranch0TargetCharacter8 2) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 1, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

def terminalBState15Branch0Implication3_8 :
    SignedCharacterRow.ImplicationCertificate
      (SignedCharacterRow.withParityGenerator
        terminalBState15Branch0Basis8)
      (terminalBBranch0TargetCharacter8 3) :=
  { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
          0, 0, 0, 0, 0, 0, 0, 0, 1
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide }

end

end MonochromaticQuantumGraphs.N8D3
