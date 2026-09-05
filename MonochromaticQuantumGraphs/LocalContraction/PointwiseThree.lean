import MQGN6Audit.Hall
import Mathlib

open Function
open scoped BigOperators

namespace MonochromaticQuantumGraphs.LocalContraction

noncomputable section

abbrev Vec3 := Fin 3 → ℂ

def dot3 (a b : Vec3) : ℂ := ∑ i, a i * b i

def basis3 (c : Fin 3) : Vec3 := fun i => if i = c then 1 else 0

def axisAt (c : Fin 3) (a : Vec3) : Prop :=
  a c ≠ 0 ∧ ∀ i, i ≠ c → a i = 0

def adjust3 (a : Vec3) (c j : Fin 3) : Vec3 := fun i =>
  if i = c then 1 else if i = j then -(a c / a j) else 0

lemma dot3_basis3 (a : Vec3) (c : Fin 3) : dot3 a (basis3 c) = a c := by
  classical
  simp [dot3, basis3]

lemma adjust3_at_center (a : Vec3) {c j : Fin 3} : adjust3 a c j c = 1 := by
  simp [adjust3]

lemma adjust3_at_other (a : Vec3) {c j d : Fin 3} (hdc : d ≠ c) (hdj : d ≠ j) :
    adjust3 a c j d = 0 := by
  simp [adjust3, hdc, hdj]

lemma dot3_adjust3 (a : Vec3) {c j : Fin 3} (hjc : j ≠ c) (haj : a j ≠ 0) :
    dot3 a (adjust3 a c j) = 0 := by
  classical
  unfold dot3 adjust3
  calc
    (∑ i, a i * (if i = c then 1 else if i = j then -(a c / a j) else 0)) =
        ∑ i, ((if i = c then a i else 0) +
          (if i = j then -(a i * (a c / a j)) else 0)) := by
      apply Finset.sum_congr rfl
      intro i _
      by_cases hic : i = c
      · subst i
        simp [hjc.symm]
      · by_cases hij : i = j
        · subst i
          simp [hic]
        · simp [hic, hij]
    _ = a c + -(a j * (a c / a j)) := by
      rw [Finset.sum_add_distrib]
      simp only [Finset.sum_ite_eq', Finset.mem_univ, if_true]
    _ = 0 := by
      rw [mul_div_cancel₀ (a c) haj]
      simp

/-- `goodAt a c d` means that the hyperplane perpendicular to `a` contains a vector whose
`c`-coordinate is one and whose `d`-coordinate is zero. -/
def goodAt (a : Vec3) (c d : Fin 3) : Prop :=
  ∃ y : Vec3, dot3 a y = 0 ∧ y c = 1 ∧ y d = 0

lemma exists_annihilator_center_one {a : Vec3} {c : Fin 3} (haxis : ¬ axisAt c a) :
    ∃ y : Vec3, dot3 a y = 0 ∧ y c = 1 := by
  by_cases hac : a c = 0
  · refine ⟨basis3 c, ?_, by simp [basis3]⟩
    simpa [hac] using dot3_basis3 a c
  · have hex : ∃ j, j ≠ c ∧ a j ≠ 0 := by
      by_contra h
      push_neg at h
      exact haxis ⟨hac, h⟩
    obtain ⟨j, hjc, haj⟩ := hex
    refine ⟨adjust3 a c j, dot3_adjust3 a hjc haj, adjust3_at_center a⟩

lemma not_goodAt_structure {a : Vec3} {c d : Fin 3} (hdc : d ≠ c)
    (hbad : ¬ goodAt a c d) :
    a c ≠ 0 ∧ ∀ j, j ≠ c → j ≠ d → a j = 0 := by
  constructor
  · intro hac
    apply hbad
    refine ⟨basis3 c, ?_, by simp [basis3], ?_⟩
    · simpa [hac] using dot3_basis3 a c
    · simp [basis3, hdc]
  · intro j hjc hjd
    by_contra haj
    apply hbad
    refine ⟨adjust3 a c j, dot3_adjust3 a hjc haj, adjust3_at_center a, ?_⟩
    exact adjust3_at_other a hdc hjd.symm

lemma bad_color_unique {a : Vec3} {c d e : Fin 3}
    (haxis : ¬ axisAt c a) (hdc : d ≠ c) (hec : e ≠ c)
    (hbad_d : ¬ goodAt a c d) (hbad_e : ¬ goodAt a c e) : d = e := by
  by_contra hde
  have hd := not_goodAt_structure hdc hbad_d
  have he := not_goodAt_structure hec hbad_e
  have had : a d ≠ 0 := by
    intro had0
    apply haxis
    refine ⟨hd.1, ?_⟩
    intro j hjc
    by_cases hjd : j = d
    · simpa [hjd] using had0
    · exact hd.2 j hjc hjd
  exact had (he.2 d hdc hde)

lemma exists_color_ne_two (c d : Fin 3) : ∃ r : Fin 3, r ≠ c ∧ r ≠ d := by
  classical
  by_contra h
  push_neg at h
  have hsub : Finset.univ ⊆ ({c, d} : Finset (Fin 3)) := by
    intro r _
    by_cases hrc : r = c
    · simp [hrc]
    · have hrd : r = d := h r hrc
      simp [hrd]
  have hcard := Finset.card_le_card hsub
  have hpair : ({c, d} : Finset (Fin 3)).card ≤ 2 := by
    simpa using Finset.card_insert_le c ({d} : Finset (Fin 3))
  have hthree : 3 ≤ ({c, d} : Finset (Fin 3)).card := by
    simpa using hcard
  have : 3 ≤ 2 := hthree.trans hpair
  omega

/-- Pointwise axis forcing for a diagonal 3-color tensor with at least two incident hyperplanes. -/
theorem exists_axis_pointwise
    {m : ℕ} (hm : 2 ≤ m)
    (a : Fin m → Vec3) (x : Vec3)
    (hx : ∀ i, x i ≠ 0)
    (hdiag : ∀ y : Fin m → Vec3,
      (∀ u, dot3 (a u) (y u) = 0) →
      (∑ i, x i * ∏ u, y u i) = 0)
    (c : Fin 3) :
    ∃ u : Fin m, axisAt c (a u) := by
  classical
  haveI : NeZero m := ⟨by omega⟩
  by_contra hnone
  push_neg at hnone
  have hfree : ∀ u, ∃ y : Vec3, dot3 (a u) y = 0 ∧ y c = 1 :=
    fun u => exists_annihilator_center_one (hnone u)
  let Other := {d : Fin 3 // d ≠ c}
  have hgood : ∀ d : Other, ∃ u : Fin m, goodAt (a u) c d.1 := by
    intro d
    by_contra hallbad
    push_neg at hallbad
    obtain ⟨r, hrc, hrd⟩ := exists_color_ne_two c d.1
    let y : Fin m → Vec3 := fun _ => basis3 r
    have horth : ∀ u, dot3 (a u) (y u) = 0 := by
      intro u
      have hs := not_goodAt_structure d.2 (hallbad u)
      rw [show y u = basis3 r by rfl, dot3_basis3]
      exact hs.2 r hrc hrd
    have hz := hdiag y horth
    have heval : (∑ i, x i * ∏ u, y u i) = x r := by
      rw [Finset.sum_eq_single r]
      · simp [y, basis3]
      · intro b _ hbr
        have hzero : ∏ u : Fin m, y u b = 0 := by
          apply Finset.prod_eq_zero (Finset.mem_univ (0 : Fin m))
          simp [y, basis3, hbr]
        simp [hzero]
      · simp
    rw [heval] at hz
    exact hx r hz
  have hbadUnique : ∀ u (d e : Other),
      ¬ goodAt (a u) c d.1 → ¬ goodAt (a u) c e.1 → d = e := by
    intro u d e hd he
    apply Subtype.ext
    exact bad_color_unique (hnone u) d.2 e.2 hd he
  obtain ⟨f, hf, hfgood⟩ := MQGN6Audit.exists_injective_of_at_most_one_bad
      (fun d : Other => fun u : Fin m => goodAt (a u) c d.1)
      (by simpa [Other] using hm) hgood hbadUnique
  choose yg hyg using hfgood
  choose y0 hy0 using hfree
  let y : Fin m → Vec3 := Function.extend f yg y0
  have hyorth : ∀ u, dot3 (a u) (y u) = 0 := by
    intro u
    by_cases hu : ∃ d, f d = u
    · obtain ⟨d, rfl⟩ := hu
      rw [show y (f d) = yg d by simp [y, hf.extend_apply]]
      exact (hyg d).1
    · rw [show y u = y0 u by simp [y, Function.extend_apply', hu]]
      exact (hy0 u).1
  have hyc : ∀ u, y u c = 1 := by
    intro u
    by_cases hu : ∃ d, f d = u
    · obtain ⟨d, rfl⟩ := hu
      rw [show y (f d) = yg d by simp [y, hf.extend_apply]]
      exact (hyg d).2.1
    · rw [show y u = y0 u by simp [y, Function.extend_apply', hu]]
      exact (hy0 u).2
  have heval : (∑ i, x i * ∏ u, y u i) = x c := by
    rw [Finset.sum_eq_single c]
    · simp [hyc]
    · intro d _ hdc
      let ds : Other := ⟨d, hdc⟩
      have hyzero : y (f ds) d = 0 := by
        rw [show y (f ds) = yg ds by simp [y, hf.extend_apply]]
        exact (hyg ds).2.2
      have hprod : ∏ u : Fin m, y u d = 0 :=
        Finset.prod_eq_zero (Finset.mem_univ (f ds)) hyzero
      simp [hprod]
    · simp
  have hz := hdiag y hyorth
  rw [heval] at hz
  exact hx c hz

#print axioms exists_axis_pointwise

end

end MonochromaticQuantumGraphs.LocalContraction
