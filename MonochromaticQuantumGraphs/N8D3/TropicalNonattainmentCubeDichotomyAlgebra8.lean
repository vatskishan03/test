import Mathlib

/-!
# Algebraic core of the six-matching cube dichotomy

This module isolates the two-axis linear algebra behind the frozen Component
A/Component B split.  The support-specific module supplies the six matching
factors and proves its hypotheses from the official perfect-matching sum.
-/

namespace MonochromaticQuantumGraphs.N8D3

/-- Determinant of two two-entry column vectors. -/
def cubeDet2 (x y : Fin 2 → ℂ) : ℂ := x 0 * y 1 - x 1 * y 0

/-- Two vectors parallel to the same vector with nonzero first coordinate are
parallel to each other. -/
theorem cubeDet2_trans_left
    {g u v : Fin 2 → ℂ} (hg0 : g 0 ≠ 0)
    (hgu : cubeDet2 g u = 0) (hgv : cubeDet2 g v = 0) :
    cubeDet2 u v = 0 := by
  have hmul : g 0 * cubeDet2 u v = 0 := by
    dsimp [cubeDet2] at hgu hgv ⊢
    linear_combination u 0 * hgv - v 0 * hgu
  exact (mul_eq_zero.mp hmul).resolve_left hg0

/-- Abstract six-term identity with the same incidence pattern as the six
surviving N8D3 perfect matchings. -/
def CubeSixIdentity
    (A D C E P U V : Fin 2 → Fin 2 → ℂ)
    (B G H K L R : Fin 2 → ℂ) : Prop :=
  ∀ a b c d e f,
    A a b * B c * C d e * G f +
    A a b * B c * V d f * L e +
    A a b * P c e * H d * G f +
    D a c * E b e * H d * G f +
    D a c * U b f * H d * L e +
    R a * U b f * P c e * K d = 0

/-- Wedge the six-term identity with `G` along the final Boolean axis. -/
theorem cubeSixIdentity_wedge_G
    {A D C E P U V : Fin 2 → Fin 2 → ℂ}
    {B G H K L R : Fin 2 → ℂ}
    (h : CubeSixIdentity A D C E P U V B G H K L R)
    (a b c d e : Fin 2) :
    cubeDet2 G (V d) * (A a b * B c * L e) +
      cubeDet2 G (U b) *
        (D a c * H d * L e + R a * P c e * K d) = 0 := by
  have h0 := h a b c d e 0
  have h1 := h a b c d e 1
  dsimp [cubeDet2]
  linear_combination G 0 * h1 - G 1 * h0

/-- The six-term identity forces the frozen dichotomy: either every `U_b` and
`V_d` is parallel to `G`, or every `P_c` is parallel to `L`. -/
theorem cubeSixIdentity_component_dichotomy
    {A D C E P U V : Fin 2 → Fin 2 → ℂ}
    {B G H K L R : Fin 2 → ℂ}
    (h : CubeSixIdentity A D C E P U V B G H K L R)
    (hA : ∀ a b, A a b ≠ 0)
    (hB : ∀ c, B c ≠ 0)
    (hL : ∀ e, L e ≠ 0)
    (hR : ∀ a, R a ≠ 0)
    (hK : ∀ d, K d ≠ 0) :
    ((∀ b, cubeDet2 G (U b) = 0) ∧
      ∀ d, cubeDet2 G (V d) = 0) ∨
    (∀ c, cubeDet2 L (P c) = 0) := by
  classical
  by_cases hparallel : ∀ b, cubeDet2 G (U b) = 0
  · left
    refine ⟨hparallel, ?_⟩
    intro d
    by_contra hgd
    have hwedge := cubeSixIdentity_wedge_G h 0 0 0 d 0
    have hproduct :
        cubeDet2 G (V d) * (A 0 0 * B 0 * L 0) = 0 := by
      simpa [hparallel 0] using hwedge
    have hcoefficient : A 0 0 * B 0 * L 0 ≠ 0 :=
      mul_ne_zero (mul_ne_zero (hA 0 0) (hB 0)) (hL 0)
    exact hgd ((mul_eq_zero.mp hproduct).resolve_right hcoefficient)
  · right
    push_neg at hparallel
    obtain ⟨b, hgb⟩ := hparallel
    intro c
    let T : ℂ :=
      cubeDet2 G (V 0) * (A 0 b * B c) +
        cubeDet2 G (U b) * (D 0 c * H 0)
    let Q : ℂ := cubeDet2 G (U b) * R 0 * K 0
    have hlinear (e : Fin 2) : T * L e + Q * P c e = 0 := by
      have hwedge := cubeSixIdentity_wedge_G h 0 b c 0 e
      dsimp [T, Q]
      linear_combination hwedge
    have hdetProduct : Q * cubeDet2 L (P c) = 0 := by
      have h0 := hlinear 0
      have h1 := hlinear 1
      dsimp [cubeDet2]
      linear_combination L 0 * h1 - L 1 * h0
    have hQ : Q ≠ 0 := by
      dsimp [Q]
      exact mul_ne_zero (mul_ne_zero hgb (hR 0)) (hK 0)
    exact (mul_eq_zero.mp hdetProduct).resolve_left hQ

end MonochromaticQuantumGraphs.N8D3
