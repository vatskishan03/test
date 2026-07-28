import MQGN6Audit.AxisGlobal
import FormalConjectures.Paper.MonochromaticQuantumGraph
import Mathlib

/-!
# The six-vertex contraction identity

This file derives the multilinear contraction of `EqSystemN 6 4` directly from
the recursive perfect-matching sum.  It also proves that the contraction
vanishes when each of the five vectors away from vertex zero is orthogonal to
the corresponding incident-map image.
-/

open scoped BigOperators Matrix

namespace MQGN6Audit

open MonochromaticQuantumGraph

noncomputable section

/-- The weight matrix on the edge from vertex `0` to vertex `u.succ`, viewed as
a linear map between the two four-dimensional color spaces. -/
def incidentMap6 (W : WeightsN 6 4 ℂ) (u : Fin 5) : Vec4 →ₗ[ℂ] Vec4 where
  toFun x j := ∑ i, x i * W (mkEdge 0 u.succ i j)
  map_add' x y := by
    funext j
    simp only [Pi.add_apply, add_mul, Finset.sum_add_distrib]
  map_smul' r x := by
    funext j
    simp only [Pi.smul_apply, smul_eq_mul, Finset.mul_sum, RingHom.id_apply]
    apply Finset.sum_congr rfl
    intro i _
    ring

lemma dot_incidentMap6 (W : WeightsN 6 4 ℂ) (u : Fin 5) (x y : Vec4) :
    dot4 (incidentMap6 W u x) y =
      ∑ i : Fin 4, ∑ j : Fin 4, x i * y j * W (mkEdge 0 u.succ i j) := by
  simp only [dot4, incidentMap6, LinearMap.coe_mk, AddHom.coe_mk, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Put one vector at vertex zero and the other five vectors at its neighbors. -/
def pack6 (x : Vec4) (y : Fin 5 → Vec4) : Fin 6 → Vec4 := Fin.cons x y

/-- Contract every color coefficient of the perfect-matching tensor against
one vector at each of its six vertices. -/
def contraction6 (W : WeightsN 6 4 ℂ) (z : Fin 6 → Vec4) : ℂ :=
  ∑ ι : Fin 6 → Fin 4, (∏ v, z v (ι v)) * pmSumN 6 4 W ι

/-- Contract the diagonal six-tensor against one vector at each vertex. -/
def diagonal6 (z : Fin 6 → Vec4) : ℂ :=
  ∑ c : Fin 4, ∏ v, z v c

def constColor6 (c : Fin 4) : Fin 6 → Fin 4 := fun _ => c

lemma mem_vertices_general {N : Nat} (v : Fin N) : v ∈ vertices N := by
  induction N with
  | zero => exact Fin.elim0 v
  | succ N ih =>
      refine Fin.cases ?_ (fun w => ?_) v
      · simp [vertices]
      · simp [vertices, ih w]

lemma allEqual6_iff (ι : Fin 6 → Fin 4) :
    allEqual ι ↔ ∃ c : Fin 4, ∀ v, ι v = c := by
  constructor
  · intro h
    refine ⟨ι 0, ?_⟩
    intro v
    have hv : v ∈ vertices 6 := mem_vertices_general v
    have hvertices : vertices 6 = (0 : Fin 6) :: (vertices 6).tail := rfl
    rw [hvertices] at hv
    simp only [List.mem_cons] at hv
    rcases hv with hv | hv
    · simp [hv]
    · have hm : List.IsChain (fun a b : Fin 4 => a = b) ((vertices 6).map ι) := by
        apply (List.isChain_map ι).2
        exact h
      rw [hvertices, List.map_cons] at hm
      have himem : ι v ∈ (vertices 6).tail.map ι :=
        List.mem_map.mpr ⟨v, hv, rfl⟩
      exact (hm.rel_cons himem).symm
  · rintro ⟨c, hc⟩
    simp [allEqual, allEqualList, vertices, hc]

lemma filter_allEqual6 :
    Finset.univ.filter (fun ι : Fin 6 → Fin 4 => allEqual ι) =
      Finset.univ.image constColor6 := by
  ext ι
  simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_image]
  constructor
  · intro h
    obtain ⟨c, hc⟩ := allEqual6_iff ι |>.mp h
    refine ⟨c, ?_⟩
    funext v
    exact (hc v).symm
  · rintro ⟨c, rfl⟩
    apply allEqual6_iff (constColor6 c) |>.mpr
    exact ⟨c, fun _ => rfl⟩

/-- Direct multilinear contraction of the defining equations
`EqSystemN 6 4 W`. -/
theorem contraction6_eq_diagonal6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) (z : Fin 6 → Vec4) :
    contraction6 W z = diagonal6 z := by
  unfold contraction6 diagonal6
  calc
    (∑ ι : Fin 6 → Fin 4, (∏ v, z v (ι v)) * pmSumN 6 4 W ι) =
        ∑ ι : Fin 6 → Fin 4,
          if allEqual ι then (∏ v, z v (ι v)) else 0 := by
      apply Finset.sum_congr rfl
      intro ι _
      rw [hW ι]
      split <;> ring
    _ = (∑ ι ∈ Finset.univ.filter (fun ι : Fin 6 → Fin 4 => allEqual ι),
          ∏ v, z v (ι v)) := by
      rw [Finset.sum_filter]
    _ = (∑ ι ∈ Finset.univ.image constColor6, ∏ v, z v (ι v)) := by
      rw [filter_allEqual6]
    _ = ∑ c : Fin 4, ∏ v, z v c := by
      rw [Finset.sum_image fun a _ b _ hab => congrFun hab 0]
      rfl

lemma diagonal6_pack6 (x : Vec4) (y : Fin 5 → Vec4) :
    diagonal6 (pack6 x y) = ∑ c : Fin 4, x c * ∏ u, y u c := by
  unfold diagonal6 pack6
  apply Finset.sum_congr rfl
  intro c _
  rw [Fin.prod_univ_succ]
  simp

lemma pmSumN6_unfold {D : Nat} {α : Type} [Semiring α]
    (W : WeightsN 6 D α) (ι : Fin 6 → Fin D) :
    pmSumN 6 D W ι = ∑ u : Fin 5,
      W (mkEdge 0 u.succ (ι 0) (ι u.succ)) *
        pmSumListAux W ι 4 ((vertices 6).tail.erase u.succ) := by
  simp [pmSumN, pmSumList, pmSumListAux, vertices, Fin.sum_univ_succ]

lemma sum_fin_succ {n m : Nat} {α : Type} [AddCommMonoid α]
    (F : (Fin (n + 1) → Fin m) → α) :
    (∑ ι : Fin (n + 1) → Fin m, F ι) =
      ∑ a : Fin m, ∑ κ : Fin n → Fin m, F (Fin.cons a κ) := by
  rw [← (Fin.consEquiv (fun _ : Fin (n + 1) => Fin m)).sum_comp,
      Fintype.sum_prod_type]
  rfl

lemma sum_tail_pair_zero (u : Fin 5) (p : Fin 4 → Fin 4 → ℂ)
    (q : ({v : Fin 5 // v ≠ u} → Fin 4) → ℂ)
    (hp : ∑ a : Fin 4, ∑ b : Fin 4, p a b = 0) :
    (∑ a : Fin 4, ∑ κ : Fin 5 → Fin 4,
      p a (κ u) * q (fun v => κ v.1)) = 0 := by
  let e := Equiv.funSplitAt u (Fin 4)
  calc
    _ = ∑ a : Fin 4, ∑ br : Fin 4 × ({v : Fin 5 // v ≠ u} → Fin 4),
        p a ((e.symm br) u) * q (fun v => (e.symm br) v.1) := by
      apply Fintype.sum_congr
      intro a
      exact (e.symm.sum_comp (fun κ => p a (κ u) * q (fun v => κ v.1))).symm
    _ = ∑ a : Fin 4, ∑ b : Fin 4,
        ∑ r : {v : Fin 5 // v ≠ u} → Fin 4, p a b * q r := by
      apply Fintype.sum_congr
      intro a
      rw [Fintype.sum_prod_type]
      apply Fintype.sum_congr
      intro b
      apply Fintype.sum_congr
      intro r
      dsimp [e, Equiv.funSplitAt, Equiv.piSplitAt]
      rw [dif_pos rfl]
      congr 2
      funext v
      simp [v.property]
    _ = 0 := by
      simp_rw [← Finset.mul_sum]
      simp_rw [← Finset.sum_mul]
      rw [hp, zero_mul]

lemma pmSumListAux_congr_pair {N D : Nat} {α : Type} [Semiring α]
    (W : WeightsN N D α) (ι1 ι2 : Fin N → Fin D) (n : Nat) :
    ∀ (L : List (Fin N)), (∀ x ∈ L, ι1 x = ι2 x) →
      pmSumListAux W ι1 n L = pmSumListAux W ι2 n L ∧
      pmSumListAux W ι1 (n + 1) L = pmSumListAux W ι2 (n + 1) L := by
  induction n with
  | zero =>
    intro L h
    constructor <;> cases L <;> rfl
  | succ n' ih =>
    intro L h
    constructor
    · exact (ih L h).2
    · cases L with
      | nil => rfl
      | cons hd tl =>
        cases tl with
        | nil => rfl
        | cons hd2 tl2 =>
          change ((hd2 :: tl2).map (fun u =>
              W (mkEdge hd u (ι1 hd) (ι1 u)) *
                pmSumListAux W ι1 n' ((hd2 :: tl2).erase u))).sum =
            ((hd2 :: tl2).map (fun u =>
              W (mkEdge hd u (ι2 hd) (ι2 u)) *
                pmSumListAux W ι2 n' ((hd2 :: tl2).erase u))).sum
          apply congrArg
          apply List.map_congr_left
          intro u hu
          rw [h hd (by simp), h u (by simp [hu])]
          rw [(ih ((hd2 :: tl2).erase u) (by
            intro x hx
            exact h x (by simp [List.mem_of_mem_erase hx]))).1]

lemma pmSumListAux_congr {N D : Nat} {α : Type} [Semiring α]
    (W : WeightsN N D α) (ι1 ι2 : Fin N → Fin D) (n : Nat)
    (L : List (Fin N)) (h : ∀ x ∈ L, ι1 x = ι2 x) :
    pmSumListAux W ι1 n L = pmSumListAux W ι2 n L :=
  (pmSumListAux_congr_pair W ι1 ι2 n L h).1

lemma vertices_nodup_general (N : Nat) : (vertices N).Nodup := by
  induction N with
  | zero => exact List.nodup_nil
  | succ N ih =>
    dsimp [vertices]
    rw [List.nodup_cons]
    constructor
    · intro h
      rw [List.mem_map] at h
      rcases h with ⟨x, _, hx⟩
      have := congrArg Fin.val hx
      simp at this
    · apply List.Nodup.map _ ih
      intro a b h
      exact Fin.succ_inj.mp h

lemma mem_erase_neq {N : Nat} (u x : Fin N) (L : List (Fin N))
    (hNodup : L.Nodup) (h : x ∈ L.erase u) : x ≠ u := by
  intro hxu
  subst x
  induction L with
  | nil => simp at h
  | cons hd tl ih =>
    simp [List.nodup_cons] at hNodup
    by_cases hdu : hd = u
    · subst hd
      simp at h
      exact hNodup.1 h
    · simp [hdu] at h
      rcases h with h | h
      · exact hdu h.symm
      · exact ih hNodup.2 h

def fillTail (u : Fin 5) (r : {v : Fin 5 // v ≠ u} → Fin 4) : Fin 5 → Fin 4 :=
  fun v => if h : v = u then 0 else r ⟨v, h⟩

lemma residual_congr (W : WeightsN 6 4 ℂ) (u : Fin 5) (a : Fin 4)
    (κ : Fin 5 → Fin 4) :
    pmSumListAux W (Fin.cons a κ) 4 ((vertices 6).tail.erase u.succ) =
      pmSumListAux W
        (Fin.cons 0 (fillTail u (fun v => κ v.1))) 4
        ((vertices 6).tail.erase u.succ) := by
  apply pmSumListAux_congr
  intro z hz
  have hzne : z ≠ u.succ :=
    mem_erase_neq u.succ z (vertices 6).tail
      (vertices_nodup_general 6).tail hz
  have hztail : z ∈ (vertices 6).tail := List.mem_of_mem_erase hz
  change z ∈ (vertices 5).map Fin.succ at hztail
  obtain ⟨v, _, rfl⟩ := List.mem_map.mp hztail
  have hvu : v ≠ u := by
    intro hvu
    apply hzne
    rw [hvu]
  simp [fillTail, hvu]

lemma prod_pack6_cons (x : Vec4) (y : Fin 5 → Vec4) (a : Fin 4)
    (κ : Fin 5 → Fin 4) :
    (∏ v : Fin 6, pack6 x y v ((Fin.cons a κ : Fin 6 → Fin 4) v)) =
      x a * ∏ u : Fin 5, y u (κ u) := by
  rw [Fin.prod_univ_succ]
  simp [pack6]

/-- After unfolding the recursive perfect-matching sum at vertex zero, each of
its five summands factors through the corresponding incident bilinear form. -/
theorem contraction6_zero_of_orthogonal
    (W : WeightsN 6 4 ℂ) (x : Vec4) (y : Fin 5 → Vec4)
    (horth : ∀ u, dot4 (incidentMap6 W u x) (y u) = 0) :
    contraction6 W (pack6 x y) = 0 := by
  unfold contraction6
  simp_rw [pmSumN6_unfold]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_eq_zero
  intro u _
  rw [sum_fin_succ]
  let p : Fin 4 → Fin 4 → ℂ := fun a b =>
    x a * y u b * W (mkEdge 0 u.succ a b)
  let q : ({v : Fin 5 // v ≠ u} → Fin 4) → ℂ := fun r =>
    (∏ v ∈ Finset.univ.erase u, y v (fillTail u r v)) *
      pmSumListAux W (Fin.cons 0 (fillTail u r)) 4
        ((vertices 6).tail.erase u.succ)
  have hp : ∑ a : Fin 4, ∑ b : Fin 4, p a b = 0 := by
    dsimp [p]
    rw [← dot_incidentMap6]
    exact horth u
  have hz := sum_tail_pair_zero u p q hp
  rw [← hz]
  apply Fintype.sum_congr
  intro a
  apply Fintype.sum_congr
  intro κ
  rw [prod_pack6_cons]
  simp only [Fin.cons_zero, Fin.cons_succ]
  have hsplit : (∏ v : Fin 5, y v (κ v)) =
      y u (κ u) * ∏ v ∈ Finset.univ.erase u, y v (κ v) :=
    (Finset.mul_prod_erase Finset.univ (fun v => y v (κ v))
      (Finset.mem_univ u)).symm
  have hfill :
      (∏ v ∈ Finset.univ.erase u, y v (fillTail u (fun w => κ w.1) v)) =
        ∏ v ∈ Finset.univ.erase u, y v (κ v) := by
    apply Finset.prod_congr rfl
    intro v hv
    have hvu : v ≠ u := (Finset.mem_erase.mp hv).1
    simp [fillTail, hvu]
  have hres := residual_congr W u a κ
  dsimp [p, q]
  rw [hsplit, hfill, hres]
  ring

/-- The diagonal vanishing hypothesis needed by `AxisGlobal`, derived solely
from `EqSystemN 6 4` and the recursive perfect-matching definition. -/
theorem hdiag_from_eqSystem6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) :
    ∀ (x : Vec4) (y : Fin 5 → Vec4),
      (∀ u, dot4 (incidentMap6 W u x) (y u) = 0) →
      (∑ i, x i * ∏ u, y u i) = 0 := by
  intro x y horth
  have hz := contraction6_zero_of_orthogonal W x y horth
  have heq := contraction6_eq_diagonal6 W hW (pack6 x y)
  rw [hz, diagonal6_pack6] at heq
  exact heq.symm

end

end MQGN6Audit
