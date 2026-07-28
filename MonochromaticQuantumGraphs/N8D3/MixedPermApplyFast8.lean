import MonochromaticQuantumGraphs.N8D3.TargetOrbitsBase8

/-!
# Arithmetic application of the mixed-radix permutation decoder

`mixedPermApplyFast` computes only the requested image.  It does not construct
an `Equiv`, its inverse, or any of the proof fields carried by that structure.
The generic bridge is proved from Mathlib's two pointwise
`decomposeFin.symm` lemmas.
-/

namespace MonochromaticQuantumGraphs.N8D3

/-- The value of `swap 0 pivot` on a known successor. -/
def swapZeroSuccApplyFast {n : Nat}
    (pivot : Fin (n + 1)) (x : Fin n) : Fin (n + 1) :=
  if x.succ = pivot then 0 else x.succ

theorem swapZeroSuccApplyFast_eq_swap {n : Nat}
    (pivot : Fin (n + 1)) (x : Fin n) :
    swapZeroSuccApplyFast pivot x = Equiv.swap 0 pivot x.succ := by
  simp [swapZeroSuccApplyFast, Equiv.swap_apply_def]

/-- Apply the mixed-radix permutation at one point using only arithmetic,
successor elimination, and a single comparison per recursive level. -/
def mixedPermApplyFast : (n : Nat) → Nat → Fin n → Fin n
  | 0, _, v => Fin.elim0 v
  | n + 1, code, v =>
      Fin.cases
        (Fin.ofNat (n + 1) code)
        (fun x =>
          swapZeroSuccApplyFast
            (Fin.ofNat (n + 1) code)
            (mixedPermApplyFast n (code / (n + 1)) x))
        v

/-- Generic `Equiv` decoder with the exact recursion used by `mixedPerm0` …
`mixedPerm8`.  This is used only in the bridge proof. -/
def mixedPermGeneric : (n : Nat) → Nat → Equiv.Perm (Fin n)
  | 0, _ => Equiv.refl _
  | n + 1, code =>
      Equiv.Perm.decomposeFin.symm
        (Fin.ofNat (n + 1) code,
          mixedPermGeneric n (code / (n + 1)))

set_option maxHeartbeats 2000000 in
theorem mixedPermApplyFast_eq_mixedPermGeneric :
    ∀ (n : Nat) (code : Nat) (v : Fin n),
      mixedPermApplyFast n code v = mixedPermGeneric n code v := by
  intro n
  induction n with
  | zero =>
      intro code v
      exact Fin.elim0 v
  | succ n ih =>
      intro code v
      refine Fin.cases ?_ (fun x => ?_) v
      · simp [mixedPermApplyFast, mixedPermGeneric]
      · simp only [
          mixedPermApplyFast,
          mixedPermGeneric,
          Fin.cases_succ,
          Equiv.Perm.decomposeFin_symm_apply_succ,
          swapZeroSuccApplyFast_eq_swap,
          ih
        ]

theorem mixedPermGeneric8_eq_mixedPerm8 (code : Nat) :
    mixedPermGeneric 8 code = mixedPerm8 code := by
  rfl

/-- Fast application specialized to the certificate's S8 code. -/
def vertexPermApplyFast8
    (code : Fin 40320) (v : Fin 8) : Fin 8 :=
  mixedPermApplyFast 8 code.val v

/-- Pointwise bridge back to the official decoder. -/
theorem vertexPermApplyFast8_eq_vertexPermOfCode8
    (code : Fin 40320) (v : Fin 8) :
    vertexPermApplyFast8 code v = vertexPermOfCode8 code v := by
  change mixedPermApplyFast 8 code.val v = mixedPerm8 code.val v
  rw [mixedPermApplyFast_eq_mixedPermGeneric]
  rfl

end MonochromaticQuantumGraphs.N8D3
