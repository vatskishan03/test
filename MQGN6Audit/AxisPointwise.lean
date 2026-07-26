import MQGN6Audit.Hall
import Mathlib.Algebra.Module.Submodule.Union

open Function
open scoped BigOperators

namespace MQGN6Audit

abbrev Vec4 := Fin 4 → ℂ

def dot4 (a b : Vec4) : ℂ := ∑ i, a i * b i

def basis4 (c : Fin 4) : Vec4 := fun i => if i = c then 1 else 0

def axisAt (c : Fin 4) (a : Vec4) : Prop :=
  a c ≠ 0 ∧ ∀ i, i ≠ c → a i = 0

def adjust4 (a : Vec4) (c j : Fin 4) : Vec4 := fun i =>
  if i = c then 1 else if i = j then -(a c / a j) else 0

lemma dot4_basis4 (a : Vec4) (c : Fin 4) : dot4 a (basis4 c) = a c := by
  classical
  simp [dot4, basis4]

lemma adjust4_at_center (a : Vec4) {c j : Fin 4} : adjust4 a c j c = 1 := by
  simp [adjust4]

lemma adjust4_at_other (a : Vec4) {c j d : Fin 4} (hdc : d ≠ c) (hdj : d ≠ j) :
    adjust4 a c j d = 0 := by
  simp [adjust4, hdc, hdj]

lemma dot4_adjust4 (a : Vec4) {c j : Fin 4} (hjc : j ≠ c) (haj : a j ≠ 0) :
    dot4 a (adjust4 a c j) = 0 := by
  classical
  unfold dot4
  rw [Finset.sum_eq_add_sum_diff_singleton (Finset.mem_univ c)]
  have hjmem : j ∈ Finset.univ.erase c := by simp [hjc]
  rw [Finset.sum_eq_add_sum_diff_singleton hjmem]
  have hrest : ∑ x ∈ (Finset.univ.erase c).erase j, a x * adjust4 a c j x = 0 := by
    apply Finset.sum_eq_zero
    intro x hx
    rw [Finset.mem_erase, Finset.mem_erase] at hx
    simp [adjust4, hx.2.1, hx.1]
  rw [hrest, add_zero]
  simp [adjust4, hjc, haj]
  field_simp

/-- `goodAt a c d` means that the hyperplane perpendicular to `a` contains a vector whose
`c`-coordinate is one and whose `d`-coordinate is zero. -/
def goodAt (a : Vec4) (c d : Fin 4) : Prop :=
  ∃ y : Vec4, dot4 a y = 0 ∧ y c = 1 ∧ y d = 0

lemma exists_annihilator_center_one {a : Vec4} {c : Fin 4} (haxis : ¬ axisAt c a) :
    ∃ y : Vec4, dot4 a y = 0 ∧ y c = 1 := by
  by_cases hac : a c = 0
  · refine ⟨basis4 c, ?_, by simp [basis4]⟩
    simpa [dot4_basis4, hac]
  · have hex : ∃ j, j ≠ c ∧ a j ≠ 0 := by
      by_contra h
      push_neg at h
      exact haxis ⟨hac, h⟩
    obtain ⟨j, hjc, haj⟩ := hex
    refine ⟨adjust4 a c j, dot4_adjust4 a hjc haj, adjust4_at_center a⟩

lemma not_goodAt_structure {a : Vec4} {c d : Fin 4} (hdc : d ≠ c)
    (hbad : ¬ goodAt a c d) :
    a c ≠ 0 ∧ ∀ j, j ≠ c → j ≠ d → a j = 0 := by
  constructor
  · intro hac
    apply hbad
    refine ⟨basis4 c, ?_, by simp [basis4], ?_⟩
    · simpa [dot4_basis4, hac]
    · simp [basis4, hdc]
  · intro j hjc hjd
    by_contra haj
    apply hbad
    refine ⟨adjust4 a c j, dot4_adjust4 a hjc haj, adjust4_at_center a, ?_⟩
    exact adjust4_at_other a hdc hjd.symm

lemma bad_color_unique {a : Vec4} {c d e : Fin 4}
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

lemma exists_color_ne_two (c d : Fin 4) : ∃ r : Fin 4, r ≠ c ∧ r ≠ d := by
  fin_cases c <;> fin_cases d <;> native_decide

/-- Pointwise axis forcing for a diagonal 4-color tensor with five incident hyperplanes. -/
theorem exists_axis_pointwise
    (a : Fin 5 → Vec4) (x : Vec4)
    (hx : ∀ i, x i ≠ 0)
    (hdiag : ∀ y : Fin 5 → Vec4,
      (∀ u, dot4 (a u) (y u) = 0) →
      (∑ i, x i * ∏ u, y u i) = 0)
    (c : Fin 4) :
    ∃ u : Fin 5, axisAt c (a u) := by
  by_contra hnone
  push_neg at hnone
  have hfree : ∀ u, ∃ y : Vec4, dot4 (a u) y = 0 ∧ y c = 1 :=
    fun u => exists_annihilator_center_one (hnone u)
  let Other := {d : Fin 4 // d ≠ c}
  have hgood : ∀ d : Other, ∃ u : Fin 5, goodAt (a u) c d.1 := by
    intro d
    by_contra hallbad
    push_neg at hallbad
    obtain ⟨r, hrc, hrd⟩ := exists_color_ne_two c d.1
    let y : Fin 5 → Vec4 := fun _ => basis4 r
    have horth : ∀ u, dot4 (a u) (y u) = 0 := by
      intro u
      have hs := not_goodAt_structure d.2 (hallbad u)
      rw [show y u = basis4 r by rfl, dot4_basis4]
      exact hs.2 r hrc hrd
    have hz := hdiag y horth
    have heval : (∑ i, x i * ∏ u, y u i) = x r := by
      classical
      rw [Finset.sum_eq_single r]
      · simp [y, basis4]
      · intro b _ hbr
        have hzero : ∏ u : Fin 5, y u b = 0 := by
          apply Finset.prod_eq_zero (Finset.mem_univ (0 : Fin 5))
          simp [y, basis4, hbr]
        simp [hzero]
      · simp
    rw [heval] at hz
    exact hx r hz
  have hbadUnique : ∀ u (d e : Other),
      ¬ goodAt (a u) c d.1 → ¬ goodAt (a u) c e.1 → d = e := by
    intro u d e hd he
    apply Subtype.ext
    exact bad_color_unique (hnone u) d.2 e.2 hd he
  obtain ⟨f, hf, hfgood⟩ := exists_injective_of_at_most_one_bad
      (fun d : Other => fun u : Fin 5 => goodAt (a u) c d.1)
      (by simp [Other]) hgood hbadUnique
  choose yg hyg using hfgood
  choose y0 hy0 using hfree
  let y : Fin 5 → Vec4 := Function.extend f yg y0
  have hyorth : ∀ u, dot4 (a u) (y u) = 0 := by
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
    classical
    rw [Finset.sum_eq_single c]
    · simp [hyc]
    · intro d _ hdc
      let ds : Other := ⟨d, hdc⟩
      have hyzero : y (f ds) d = 0 := by
        rw [show y (f ds) = yg ds by simp [y, hf.extend_apply]]
        exact (hyg ds).2.2
      have hprod : ∏ u : Fin 5, y u d = 0 :=
        Finset.prod_eq_zero (Finset.mem_univ (f ds)) hyzero
      simp [hprod]
    · simp
  have hz := hdiag y hyorth
  rw [heval] at hz
  exact hx c hz

end MQGN6Audit
