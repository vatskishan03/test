import MQGN6Audit.UniqueDagCheck6

/-!
# The all-identical target orbit

If all four selected target colors use the same perfect matching, that matching
is exceptional at both endpoints of its three edges. Every other physical edge
is witnessed from both endpoints and hence supports one forced color pair. A
counting argument on the 64 colorings constant on the three target edges then
produces a forbidden coloring with exactly one forced matching.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function
open scoped BigOperators

noncomputable section

abbrev identicalMatching6 : Fin 15 := ⟨0, by decide⟩

def targetBlock6 : Fin 6 → Fin 3 := ![0, 0, 1, 1, 2, 2]

def blockRep6 : Fin 3 → Fin 6 := ![0, 2, 4]

def blockColoring6 (t : Fin 3 → Fin 4) : Fin 6 → Fin 4 :=
  fun v => t (targetBlock6 v)

abbrev BlockAssignment6 := Fin 3 → Fin 4

@[simp] lemma targetBlock_blockRep6 (b : Fin 3) : targetBlock6 (blockRep6 b) = b := by
  fin_cases b <;> rfl

lemma planAllowedEntry6_swap (plan : Fin 6 → Fin 4 → Fin 6)
    (u v : Fin 6) (a b : Fin 4) :
    PlanAllowedEntry6 plan u v a b ↔ PlanAllowedEntry6 plan v u b a := by
  simp only [PlanAllowedEntry6]
  constructor <;> rintro ⟨h₁, h₂⟩ <;> exact ⟨h₂, h₁⟩

lemma matchingAllowed6_at_vertex
    (plan : Fin 6 → Fin 4 → Fin 6) (q : Fin 6 → Fin 4)
    (m : Fin 15) (h : MatchingAllowed6 plan q m) (v : Fin 6) :
    PlanAllowedEntry6 plan v (matchingMate6 m v) (q v) (q (matchingMate6 m v)) := by
  obtain ⟨k, hk⟩ := matchingEdges6_contains_vertex m v
  have ha := h k
  let e := matchingEdges6 m k
  change (e.1 = v ∧ e.2 = matchingMate6 m v) ∨
    (e.2 = v ∧ e.1 = matchingMate6 m v) at hk
  change PlanAllowedEntry6 plan e.1 e.2 (q e.1) (q e.2) at ha
  rcases hk with ⟨h1, h2⟩ | ⟨h2, h1⟩
  · simpa [h1, h2] using ha
  · have hs := (planAllowedEntry6_swap plan e.1 e.2 (q e.1) (q e.2)).1 ha
    simpa [h1, h2] using hs

lemma identical_witness_ne_mate
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6)
    (v : Fin 6) (c : Fin 4) :
    D.plan.witness v c ≠ matchingMate6 identicalMatching6 v := by
  intro h
  obtain ⟨d, hdc⟩ := exists_ne c
  have hdtarget : D.target d = identicalMatching6 := by
    simp [htarget, identicalTargetRep6, identicalMatching6]
  have hcd := D.compatible d v c
  have : c = d := hcd (by simpa [hdtarget] using h)
  exact hdc this

def OtherNeighbor6 (v : Fin 6) :=
  {u : Fin 6 // u ≠ v ∧ u ≠ matchingMate6 identicalMatching6 v}

set_option maxRecDepth 100000 in
theorem card_otherNeighbor6 :
    ∀ v : Fin 6, Fintype.card (OtherNeighbor6 v) = 4 := by
  native_decide

lemma exists_witness_color_nontarget
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6)
    {v u : Fin 6} (huv : u ≠ v)
    (hum : u ≠ matchingMate6 identicalMatching6 v) :
    ∃ c : Fin 4, D.plan.witness v c = u := by
  let f : Fin 4 → OtherNeighbor6 v := fun c =>
    ⟨D.plan.witness v c, (D.plan.axis v c).1,
      identical_witness_ne_mate D htarget v c⟩
  have hf : Function.Injective f := by
    intro c d hcd
    apply D.plan.injective v
    exact congrArg Subtype.val hcd
  have hcard : Fintype.card (Fin 4) = Fintype.card (OtherNeighbor6 v) := by
    simp [card_otherNeighbor6 v]
  have hsurj : Function.Surjective f :=
    ((Fintype.bijective_iff_injective_and_card f).2 ⟨hf, hcard⟩).2
  obtain ⟨c, hc⟩ := hsurj ⟨u, huv, hum⟩
  exact ⟨c, congrArg Subtype.val hc⟩

lemma ne_identicalMate_symm {u v : Fin 6}
    (h : u ≠ matchingMate6 identicalMatching6 v) :
    v ≠ matchingMate6 identicalMatching6 u := by
  intro hv
  apply h
  calc
    u = matchingMate6 identicalMatching6 (matchingMate6 identicalMatching6 u) :=
      (matchingMate6_involutive identicalMatching6 u).symm
    _ = matchingMate6 identicalMatching6 v := by rw [hv]

lemma matchingAllowed_nontarget_vertex_unique
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6)
    {q q' : Fin 6 → Fin 4} {m : Fin 15}
    (hq : MatchingAllowed6 D.plan.witness q m)
    (hq' : MatchingAllowed6 D.plan.witness q' m)
    (v : Fin 6)
    (hne : matchingMate6 m v ≠ matchingMate6 identicalMatching6 v) :
    q v = q' v := by
  let u := matchingMate6 m v
  have huv : v ≠ u := (matchingMate6_ne m v).symm
  have hum : v ≠ matchingMate6 identicalMatching6 u := by
    apply ne_identicalMate_symm
    exact hne
  obtain ⟨c, hc⟩ := exists_witness_color_nontarget D htarget huv hum
  have ha := matchingAllowed6_at_vertex D.plan.witness q m hq v
  have ha' := matchingAllowed6_at_vertex D.plan.witness q' m hq' v
  exact (ha.2 c hc).trans (ha'.2 c hc).symm

def oneShareMatching6 : Fin 6 → Fin 15 := ![1, 2, 3, 6, 11, 14]

def oneShareFreeBlock6 : Fin 6 → Fin 3 := ![0, 0, 2, 2, 1, 1]

def disjointMatching6 : Fin 8 → Fin 15 := ![4, 5, 7, 8, 9, 10, 12, 13]

set_option maxRecDepth 100000 in
theorem oneShare_rep_nontarget6 :
    ∀ s : Fin 6, ∀ b : Fin 3, b ≠ oneShareFreeBlock6 s →
      matchingMate6 (oneShareMatching6 s) (blockRep6 b) ≠
        matchingMate6 identicalMatching6 (blockRep6 b) := by
  native_decide

set_option maxRecDepth 100000 in
theorem disjoint_rep_nontarget6 :
    ∀ s : Fin 8, ∀ b : Fin 3,
      matchingMate6 (disjointMatching6 s) (blockRep6 b) ≠
        matchingMate6 identicalMatching6 (blockRep6 b) := by
  native_decide

set_option maxRecDepth 100000 in
theorem matching6_trichotomy_identical :
    ∀ m : Fin 15, m = identicalMatching6 ∨
      (∃ s : Fin 6, m = oneShareMatching6 s) ∨
      ∃ s : Fin 8, m = disjointMatching6 s := by
  native_decide

def blockCovered6 (plan : Fin 6 → Fin 4 → Fin 6) (m : Fin 15) :
    Finset BlockAssignment6 :=
  Finset.univ.filter fun t => MatchingAllowed6 plan (blockColoring6 t) m

lemma blockCovered_share_card_le_four
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6) (s : Fin 6) :
    (blockCovered6 D.plan.witness (oneShareMatching6 s)).card ≤ 4 := by
  let S := blockCovered6 D.plan.witness (oneShareMatching6 s)
  let f : {t // t ∈ S} → Fin 4 := fun t => t.1 (oneShareFreeBlock6 s)
  have hf : Function.Injective f := by
    intro t t' heq
    apply Subtype.ext
    funext b
    by_cases hb : b = oneShareFreeBlock6 s
    · simpa [f, hb] using heq
    · have ht := (Finset.mem_filter.mp t.2).2
      have ht' := (Finset.mem_filter.mp t'.2).2
      have hv := matchingAllowed_nontarget_vertex_unique D htarget ht ht'
        (blockRep6 b) (oneShare_rep_nontarget6 s b hb)
      simpa [blockColoring6] using hv
  have hc := Fintype.card_le_of_injective f hf
  simpa [S] using hc

lemma blockCovered_disjoint_card_le_one
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6) (s : Fin 8) :
    (blockCovered6 D.plan.witness (disjointMatching6 s)).card ≤ 1 := by
  let S := blockCovered6 D.plan.witness (disjointMatching6 s)
  have hsub : Subsingleton {t // t ∈ S} := ⟨by
    intro t t'
    apply Subtype.ext
    funext b
    have ht := (Finset.mem_filter.mp t.2).2
    have ht' := (Finset.mem_filter.mp t'.2).2
    have hv := matchingAllowed_nontarget_vertex_unique D htarget ht ht'
      (blockRep6 b) (disjoint_rep_nontarget6 s b)
    simpa [blockColoring6] using hv⟩
  have hc : Fintype.card {t // t ∈ S} ≤ 1 :=
    Fintype.card_le_one_iff_subsingleton.2 hsub
  simpa [S] using hc

def shareCoveredUnion6 (plan : Fin 6 → Fin 4 → Fin 6) : Finset BlockAssignment6 :=
  Finset.univ.biUnion fun s : Fin 6 => blockCovered6 plan (oneShareMatching6 s)

def disjointCoveredUnion6 (plan : Fin 6 → Fin 4 → Fin 6) : Finset BlockAssignment6 :=
  Finset.univ.biUnion fun s : Fin 8 => blockCovered6 plan (disjointMatching6 s)

def monoBlockAssignments6 : Finset BlockAssignment6 :=
  Finset.univ.filter fun t => allEqual (blockColoring6 t)

set_option maxRecDepth 100000 in
theorem monoBlockAssignments6_card : monoBlockAssignments6.card = 4 := by
  native_decide

lemma shareCoveredUnion6_card_le
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6) :
    (shareCoveredUnion6 D.plan.witness).card ≤ 24 := by
  calc
    (shareCoveredUnion6 D.plan.witness).card ≤
        ∑ s : Fin 6, (blockCovered6 D.plan.witness (oneShareMatching6 s)).card := by
      exact Finset.card_biUnion_le
    _ ≤ ∑ _s : Fin 6, 4 := by
      apply Finset.sum_le_sum
      intro s _
      exact blockCovered_share_card_le_four D htarget s
    _ = 24 := by decide

lemma disjointCoveredUnion6_card_le
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6) :
    (disjointCoveredUnion6 D.plan.witness).card ≤ 8 := by
  calc
    (disjointCoveredUnion6 D.plan.witness).card ≤
        ∑ s : Fin 8, (blockCovered6 D.plan.witness (disjointMatching6 s)).card := by
      exact Finset.card_biUnion_le
    _ ≤ ∑ _s : Fin 8, 1 := by
      apply Finset.sum_le_sum
      intro s _
      exact blockCovered_disjoint_card_le_one D htarget s
    _ = 8 := by decide

def forbiddenCover6 (plan : Fin 6 → Fin 4 → Fin 6) : Finset BlockAssignment6 :=
  monoBlockAssignments6 ∪ shareCoveredUnion6 plan ∪ disjointCoveredUnion6 plan

lemma forbiddenCover6_card_le
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6) :
    (forbiddenCover6 D.plan.witness).card ≤ 36 := by
  calc
    (forbiddenCover6 D.plan.witness).card ≤
        monoBlockAssignments6.card +
          (shareCoveredUnion6 D.plan.witness).card +
          (disjointCoveredUnion6 D.plan.witness).card := by
      unfold forbiddenCover6
      omega
    _ ≤ 4 + 24 + 8 := by
      omega
    _ = 36 := by decide

lemma blockAssignment_univ_card :
    (Finset.univ : Finset BlockAssignment6).card = 64 := by
  native_decide

lemma exists_uncovered_blockAssignment6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6) :
    ∃ t : BlockAssignment6, t ∉ forbiddenCover6 D.plan.witness := by
  have hc : (forbiddenCover6 D.plan.witness).card <
      (Finset.univ : Finset BlockAssignment6).card := by
    rw [blockAssignment_univ_card]
    exact lt_of_le_of_lt (forbiddenCover6_card_le D htarget) (by decide)
  obtain ⟨t, htuniv, ht⟩ := Finset.exists_mem_notMem_of_card_lt_card hc
  exact ⟨t, ht⟩

lemma blockMatchingForced_identical6
    {W : WeightsN 6 4 ℂ} (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6) (t : BlockAssignment6) :
    MatchingForced6 D.plan.witness D.target (blockColoring6 t) identicalMatching6 := by
  intro k
  left
  let e := matchingEdges6 identicalMatching6 k
  refine ⟨blockColoring6 t e.1, ?_, rfl, ?_⟩
  · fin_cases k <;> simp [e, identicalMatching6, matchingEdges6, htarget,
      identicalTargetRep6, blockColoring6, targetBlock6, matchingMate6]
  · fin_cases k <;> rfl

/-- Exact contradiction for the all-identical selected-target orbit. -/
theorem false_of_identicalTarget6
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (D : AxisTargetData6 W)
    (htarget : D.target = identicalTargetRep6) : False := by
  obtain ⟨t, ht⟩ := exists_uncovered_blockAssignment6 D htarget
  have hmono : ¬ allEqual (blockColoring6 t) := by
    intro h
    apply ht
    unfold forbiddenCover6
    apply Finset.mem_union_left
    apply Finset.mem_union_left
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, h⟩
  have hforced := blockMatchingForced_identical6 D htarget t
  apply false_of_unique_forced_matching6 hW D (blockColoring6 t) identicalMatching6
    hmono hforced
  intro n hne
  intro hnallowed
  apply ht
  unfold forbiddenCover6
  rcases matching6_trichotomy_identical n with rfl | hshare | hdisjoint
  · exact False.elim (hne rfl)
  · rcases hshare with ⟨s, rfl⟩
    apply Finset.mem_union_left
    apply Finset.mem_union_right
    apply Finset.mem_biUnion.mpr
    refine ⟨s, Finset.mem_univ _, ?_⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, hnallowed⟩
  · rcases hdisjoint with ⟨s, rfl⟩
    apply Finset.mem_union_right
    apply Finset.mem_biUnion.mpr
    refine ⟨s, Finset.mem_univ _, ?_⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, hnallowed⟩

end

end MQGN6Audit
