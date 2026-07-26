import MQGN6Audit.AxisPointwise

open Function
open scoped BigOperators

namespace MQGN6Audit

noncomputable section

def coordinateKernel (i : Fin 4) : Submodule ℂ Vec4 where
  carrier := {x | x i = 0}
  zero_mem' := rfl
  add_mem' := by intro x y hx hy; simp [hx, hy]
  smul_mem' := by intro r x hx; simp [hx]

@[simp] lemma mem_coordinateKernel {i : Fin 4} {x : Vec4} :
    x ∈ coordinateKernel i ↔ x i = 0 := Iff.rfl

def offAxisKernel (A : Vec4 →ₗ[ℂ] Vec4) (c : Fin 4) : Submodule ℂ Vec4 where
  carrier := {x | ∀ i, i ≠ c → A x i = 0}
  zero_mem' := by simp
  add_mem' := by
    intro x y hx hy i hic
    simp [hx i hic, hy i hic]
  smul_mem' := by
    intro r x hx i hic
    simp [hx i hic]

@[simp] lemma mem_offAxisKernel {A : Vec4 →ₗ[ℂ] Vec4} {c : Fin 4} {x : Vec4} :
    x ∈ offAxisKernel A c ↔ ∀ i, i ≠ c → A x i = 0 := Iff.rfl

lemma coordinateKernel_ne_top (i : Fin 4) : coordinateKernel i ≠ ⊤ := by
  intro h
  have hb : basis4 i ∈ coordinateKernel i := by rw [h]; simp
  simpa [basis4] using hb

/-- Global axis forcing: pointwise axis witnesses plus the finite-union theorem force one fixed
nonzero incident map to have its entire image in a prescribed coordinate axis. -/
theorem exists_fixed_axis_map
    (A : Fin 5 → (Vec4 →ₗ[ℂ] Vec4))
    (hdiag : ∀ (x : Vec4) (y : Fin 5 → Vec4),
      (∀ u, dot4 (A u x) (y u) = 0) →
      (∑ i, x i * ∏ u, y u i) = 0)
    (c : Fin 4) :
    ∃ u : Fin 5, A u ≠ 0 ∧ ∀ x i, i ≠ c → A u x i = 0 := by
  by_contra hnone
  push_neg at hnone
  let U := {u : Fin 5 // A u ≠ 0}
  let p : Sum U (Fin 4) → Submodule ℂ Vec4
    | Sum.inl u => offAxisKernel (A u.1) c
    | Sum.inr i => coordinateKernel i
  have hp : ∀ q, p q ≠ ⊤ := by
    intro q
    cases q with
    | inr i => exact coordinateKernel_ne_top i
    | inl u =>
        intro htop
        apply hnone u.1 u.2
        intro x i hic
        have hx : x ∈ offAxisKernel (A u.1) c := by rw [htop]; simp
        exact hx i hic
  obtain ⟨x, hx⟩ := Submodule.exists_forall_notMem_of_forall_ne_top p hp
  have hxc : ∀ i, x i ≠ 0 := by
    intro i hzero
    exact hx (Sum.inr i) hzero
  have hpoint : ∃ u : Fin 5, axisAt c (A u x) :=
    exists_axis_pointwise (fun u => A u x) x hxc (hdiag x) c
  obtain ⟨u, huaxis⟩ := hpoint
  have huA : A u ≠ 0 := by
    intro hu0
    have hz : A u x c = 0 := by simp [hu0]
    exact huaxis.1 hz
  let us : U := ⟨u, huA⟩
  apply hx (Sum.inl us)
  intro i hic
  exact huaxis.2 i hic

end

end MQGN6Audit
