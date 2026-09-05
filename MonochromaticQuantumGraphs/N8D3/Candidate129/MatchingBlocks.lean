import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportCombinatorics
import Mathlib.Tactic.FinCases

/-! Exhaustive arithmetic dispatch for bounded 15-matching checks. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

def matchingBlockIndex (b : Fin 7) (j : Fin 15) : Fin 105 :=
  ⟨15 * b.val + j.val, by omega⟩

theorem forall_matching_blocks {P : Fin 105 → Prop}
    (h : ∀ b : Fin 7, ∀ j : Fin 15, P (matchingBlockIndex b j)) : ∀ m, P m := by
  intro m
  let b : Fin 7 := ⟨m.val / 15, by omega⟩
  let j : Fin 15 := ⟨m.val % 15, by omega⟩
  have he : matchingBlockIndex b j = m := by
    apply Fin.ext
    dsimp [matchingBlockIndex, b, j]
    omega
  rw [← he]
  exact h b j

end MonochromaticQuantumGraphs.N8D3.Candidate129
