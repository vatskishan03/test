import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Data

/-! Explicit termwise uses for `terminalBClass19NestedRight`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass19NestedRightReductionUse8 :
    Fin 8 → CharacterReductionUse terminalBClass19Basis8 :=
![
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := { signExponent := (0 : ℤ)
    implication := { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide } } },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := { signExponent := (0 : ℤ)
    implication := { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide } } },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := { signExponent := (0 : ℤ)
    implication := { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide } } },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := { signExponent := (0 : ℤ)
    implication := { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 1, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide } } },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := { signExponent := (0 : ℤ)
    implication := { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 1, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide } } },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ))
      reduction := { signExponent := (0 : ℤ)
    implication := { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 1, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide } } },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (27 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (27 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
      reduction := { signExponent := (0 : ℤ)
    implication := { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 0, 1, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide } } },
  { coefficient := (1 : ℤ)
      sourceExponent := (Pi.single (27 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      targetExponent := (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (27 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ))
      reduction := { signExponent := (0 : ℤ)
    implication := { coeff := fun s ↦
      match s with
      | .inl i => ![
          0, 0, 1, 0, 0, 0
] i
      | .inr _ => (0 : ℤ)
    combination_eq := by
      apply SignedCharacterRow.ext <;> decide } } }
]

end

end MonochromaticQuantumGraphs.N8D3
