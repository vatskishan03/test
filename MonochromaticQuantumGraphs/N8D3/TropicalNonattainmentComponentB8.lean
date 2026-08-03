import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentBResidual8

/-!
# Complete Component B cover certificate for the N8D3 support

This file records the exact 23-class, 21-edge factor graph recovered from the
canonical six-matching certificate.  Its four connected components have
respectively `16`, `3`, `3`, and `2` minimal covers, giving the complete
mixed-radix table of `288` covers.

The older residual module contains precisely the slice with mixed-radix
digits `(bridge, singleton) = (1, 1)`.  Here that slice is identified with
full-table indices `3, 9, ..., 285`, and the complete first-level dispatch is
checked before reusing the residual `48`-row classification.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs.FactorCoverCertificate

/-- The exact 21 class edges of the complete Component B factor graph. -/
def componentBFactorEdges8 : Finset (Finset (Fin 23)) :=
  {{0, 5}, {0, 19}, {0, 20}, {0, 21},
    {1, 5}, {1, 14}, {1, 15}, {1, 16},
    {2, 6}, {2, 18}, {3, 6},
    {4, 7}, {4, 13}, {7, 17}, {8, 22},
    {9, 14}, {9, 16}, {10, 14},
    {11, 19}, {11, 21}, {12, 19}}

/-- Adjacency in the complete Component B factor graph. -/
def componentBFactorEdge8 (u v : Fin 23) : Prop :=
  ({u, v} : Finset (Fin 23)) ∈ componentBFactorEdges8

instance : DecidableRel componentBFactorEdge8 := by
  intro u v
  unfold componentBFactorEdge8
  infer_instance

theorem componentBFactorEdges8_card : componentBFactorEdges8.card = 21 := by
  decide

/-- The three minimal covers of the `{4,7,13,17}` component. -/
def componentBBridgeCover8 : Fin 3 → Finset (Fin 23) :=
  ![{4, 7}, {4, 17}, {7, 13}]

/-- The two minimal covers of the isolated edge `{8,22}`. -/
def componentBSingleCover8 : Fin 2 → Finset (Fin 23) :=
  ![{8}, {22}]

/-- The mixed-radix index `(main, tail, bridge, singleton)` in the canonical
JSON ordering. -/
def componentBCoverIndex8
    (main : Fin 16) (tail : Fin 3) (bridge : Fin 3) (singleton : Fin 2) :
    Fin 288 :=
  ⟨(((main.val * 3 + tail.val) * 3 + bridge.val) * 2 + singleton.val), by
    omega⟩

def componentBMainDigit8 (i : Fin 288) : Fin 16 :=
  ⟨i.val / 18, by omega⟩

def componentBTailDigit8 (i : Fin 288) : Fin 3 :=
  ⟨(i.val / 6) % 3, Nat.mod_lt _ (by omega)⟩

def componentBBridgeDigit8 (i : Fin 288) : Fin 3 :=
  ⟨(i.val / 2) % 3, Nat.mod_lt _ (by omega)⟩

def componentBSingleDigit8 (i : Fin 288) : Fin 2 :=
  ⟨i.val % 2, Nat.mod_lt _ (by omega)⟩

/-- The exact 288 covers, represented without duplicating a 288-row literal:
the four digits select one local minimal cover in each connected component. -/
def componentBCover8 (i : Fin 288) : Finset (Fin 23) :=
  componentBMainCover8 (componentBMainDigit8 i) ∪
    componentBTailCover8 (componentBTailDigit8 i) ∪
    componentBBridgeCover8 (componentBBridgeDigit8 i) ∪
    componentBSingleCover8 (componentBSingleDigit8 i)

/-- Decoding the mixed-radix index reproduces its four input digits and hence
the exact canonical cover row. -/
theorem componentBCover8_index_eq_union
    (main : Fin 16) (tail : Fin 3) (bridge : Fin 3) (singleton : Fin 2) :
    componentBCover8 (componentBCoverIndex8 main tail bridge singleton) =
      componentBMainCover8 main ∪ componentBTailCover8 tail ∪
        componentBBridgeCover8 bridge ∪ componentBSingleCover8 singleton := by
  have hmain :
      componentBMainDigit8
          (componentBCoverIndex8 main tail bridge singleton) = main := by
    apply Fin.ext
    simp only [componentBMainDigit8, componentBCoverIndex8]
    omega
  have htail :
      componentBTailDigit8
          (componentBCoverIndex8 main tail bridge singleton) = tail := by
    apply Fin.ext
    simp only [componentBTailDigit8, componentBCoverIndex8]
    omega
  have hbridge :
      componentBBridgeDigit8
          (componentBCoverIndex8 main tail bridge singleton) = bridge := by
    apply Fin.ext
    simp only [componentBBridgeDigit8, componentBCoverIndex8]
    omega
  have hsingleton :
      componentBSingleDigit8
          (componentBCoverIndex8 main tail bridge singleton) = singleton := by
    apply Fin.ext
    simp only [componentBSingleDigit8, componentBCoverIndex8]
    omega
  simp [componentBCover8, hmain, htail, hbridge, hsingleton,
    Finset.union_assoc]

/-- A bounded first-row check that the mixed-radix table really contains
minimal vertex covers of the complete graph. -/
private theorem componentBCover8_zero_eq :
    componentBCover8 0 =
      ({0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12} : Finset (Fin 23)) := by
  decide

private theorem componentBFactorEdges8_meets_zero
    (edge : Finset (Fin 23)) (hedge : edge ∈ componentBFactorEdges8) :
    ∃ v ∈ edge, v ∈ componentBCover8 0 := by
  simp only [componentBFactorEdges8, Finset.mem_insert,
    Finset.mem_singleton] at hedge
  rcases hedge with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl
  all_goals simp [componentBCover8_zero_eq]

private theorem componentBCover8_zero_private_edge
    (v : Fin 23) (hv : v ∈ componentBCover8 0) :
    ∃ w, w ∉ componentBCover8 0 ∧ componentBFactorEdge8 v w := by
  rw [componentBCover8_zero_eq] at hv
  simp only [Finset.mem_insert, Finset.mem_singleton] at hv
  rcases hv with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl
  · exact ⟨19, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨14, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨18, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨6, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨13, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨17, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨22, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨16, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨14, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨21, by simp [componentBCover8_zero_eq], by decide⟩
  · exact ⟨19, by simp [componentBCover8_zero_eq], by decide⟩

theorem componentBCover8_row0_minimal :
    IsMinimalVertexCover componentBFactorEdge8 (componentBCover8 0) := by
  constructor
  · intro u v huv
    obtain ⟨a, haedge, hacover⟩ :=
      componentBFactorEdges8_meets_zero ({u, v} : Finset (Fin 23)) huv
    simp only [Finset.mem_insert, Finset.mem_singleton] at haedge
    rcases haedge with hau | hav
    · exact Or.inl (hau ▸ hacover)
    · exact Or.inr (hav ▸ hacover)
  · intro v hv herase
    obtain ⟨w, hw, hedge⟩ := componentBCover8_zero_private_edge v hv
    rcases herase hedge with hverase | hwerase
    · exact (Finset.mem_erase.mp hverase).1 rfl
    · exact hw (Finset.mem_of_mem_erase hwerase)

/-- Every residual edge is either a genuine complete-graph edge or one of the
three artificial singleton loops introduced by the residual slice. -/
private theorem componentBResidualEdgeSet8_full_or_fixed
    (edge : Finset (Fin 23)) (hedge : edge ∈ componentBResidualFactorEdges8) :
    edge ∈ componentBFactorEdges8 ∨ edge ⊆ componentBFixedCover8 := by
  simp only [componentBResidualFactorEdges8, Finset.mem_insert,
    Finset.mem_singleton] at hedge
  rcases hedge with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl
  all_goals decide

theorem componentBResidualFactorEdge8_full_or_fixed
    (u v : Fin 23) (h : componentBResidualFactorEdge8 u v) :
    componentBFactorEdge8 u v ∨
      u ∈ componentBFixedCover8 ∨ v ∈ componentBFixedCover8 := by
  rcases componentBResidualEdgeSet8_full_or_fixed ({u, v} : Finset (Fin 23)) h with
      hfull | hfixed
  · exact Or.inl hfull
  · exact Or.inr (Or.inl (hfixed (by simp)))

/-- Adding the three residual fixed classes to a complete-graph cover yields
a cover of the residual graph. -/
theorem componentBResidualizedCover8
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBFactorEdge8 cover) :
    IsVertexCover componentBResidualFactorEdge8
      (cover ∪ componentBFixedCover8) := by
  intro u v huv
  rcases componentBResidualFactorEdge8_full_or_fixed u v huv with
      hfull | hu | hv
  · rcases hcover hfull with hu | hv
    · exact Or.inl (Finset.mem_union_left _ hu)
    · exact Or.inr (Finset.mem_union_left _ hv)
  · exact Or.inl (Finset.mem_union_right _ hu)
  · exact Or.inr (Finset.mem_union_right _ hv)

theorem componentBMainCover8_disjoint_fixed (main : Fin 16) :
    Disjoint (componentBMainCover8 main) componentBFixedCover8 := by
  revert main
  decide

theorem componentBTailCover8_disjoint_fixed (tail : Fin 3) :
    Disjoint (componentBTailCover8 tail) componentBFixedCover8 := by
  revert tail
  decide

/-- Reuse the already checked 16-row main-component table, removing the
artificial residual fixed classes after the dispatch. -/
theorem componentBMainCover8_complete_full
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBFactorEdge8 cover) :
    ∃ main, componentBMainCover8 main ⊆ cover := by
  obtain ⟨main, hmain⟩ :=
    componentBMainCover8_complete (cover ∪ componentBFixedCover8)
      (componentBResidualizedCover8 cover hcover)
  refine ⟨main, ?_⟩
  intro v hv
  rcases Finset.mem_union.mp (hmain hv) with hvcover | hvfixed
  · exact hvcover
  · exact False.elim
      ((Finset.disjoint_left.mp (componentBMainCover8_disjoint_fixed main))
        hv hvfixed)

/-- Reuse the already checked three-row tail-component table. -/
theorem componentBTailCover8_complete_full
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBFactorEdge8 cover) :
    ∃ tail, componentBTailCover8 tail ⊆ cover := by
  obtain ⟨tail, htail⟩ :=
    componentBTailCover8_complete (cover ∪ componentBFixedCover8)
      (componentBResidualizedCover8 cover hcover)
  refine ⟨tail, ?_⟩
  intro v hv
  rcases Finset.mem_union.mp (htail hv) with hvcover | hvfixed
  · exact hvcover
  · exact False.elim
      ((Finset.disjoint_left.mp (componentBTailCover8_disjoint_fixed tail))
        hv hvfixed)

theorem componentBBridgeCover8_complete
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBFactorEdge8 cover) :
    ∃ bridge, componentBBridgeCover8 bridge ⊆ cover := by
  have h47 : 4 ∈ cover ∨ 7 ∈ cover :=
    hcover (show componentBFactorEdge8 4 7 by decide)
  have h413 : 4 ∈ cover ∨ 13 ∈ cover :=
    hcover (show componentBFactorEdge8 4 13 by decide)
  have h717 : 7 ∈ cover ∨ 17 ∈ cover :=
    hcover (show componentBFactorEdge8 7 17 by decide)
  by_cases h4 : 4 ∈ cover
  · rcases h717 with h7 | h17
    · refine ⟨0, ?_⟩
      simpa [componentBBridgeCover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 4 ∈ cover ∧ 7 ∈ cover from ⟨h4, h7⟩)
    · refine ⟨1, ?_⟩
      simpa [componentBBridgeCover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 4 ∈ cover ∧ 17 ∈ cover from ⟨h4, h17⟩)
  · have h7 : 7 ∈ cover := h47.resolve_left h4
    have h13 : 13 ∈ cover := h413.resolve_left h4
    refine ⟨2, ?_⟩
    simpa [componentBBridgeCover8, Finset.insert_subset_iff,
      Finset.singleton_subset_iff] using
      (show 7 ∈ cover ∧ 13 ∈ cover from ⟨h7, h13⟩)

theorem componentBSingleCover8_complete
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBFactorEdge8 cover) :
    ∃ singleton, componentBSingleCover8 singleton ⊆ cover := by
  rcases hcover (show componentBFactorEdge8 8 22 by decide) with h8 | h22
  · refine ⟨0, ?_⟩
    simpa [componentBSingleCover8, Finset.singleton_subset_iff] using h8
  · refine ⟨1, ?_⟩
    simpa [componentBSingleCover8, Finset.singleton_subset_iff] using h22

/-- The exact 288-row table is complete for the exact 21-edge graph. -/
theorem componentBCover8_complete :
    IsCompleteTable componentBFactorEdge8 componentBCover8 := by
  intro cover hcover
  obtain ⟨main, hmain⟩ := componentBMainCover8_complete_full cover hcover
  obtain ⟨tail, htail⟩ := componentBTailCover8_complete_full cover hcover
  obtain ⟨bridge, hbridge⟩ := componentBBridgeCover8_complete cover hcover
  obtain ⟨singleton, hsingleton⟩ :=
    componentBSingleCover8_complete cover hcover
  refine ⟨componentBCoverIndex8 main tail bridge singleton, ?_⟩
  rw [componentBCover8_index_eq_union]
  exact Finset.union_subset
    (Finset.union_subset (Finset.union_subset hmain htail) hbridge) hsingleton

/-- The full-table residual slice uses exactly indices `6*j+3`. -/
theorem componentBCover8_residual_source_eq (j : Fin 48) :
    componentBCover8 (componentBResidualSourceIndex8 j) =
      componentBResidualCover8 j := by
  let main : Fin 16 := ⟨j.val / 3, by omega⟩
  let tail : Fin 3 := ⟨j.val % 3, Nat.mod_lt _ (by omega)⟩
  have hjindex : componentBResidualCoverIndex8 main tail = j := by
    apply Fin.ext
    simp only [componentBResidualCoverIndex8, main, tail]
    omega
  have hsource :
      componentBResidualSourceIndex8 j =
        componentBCoverIndex8 main tail 1 1 := by
    apply Fin.ext
    have hjval := congrArg Fin.val hjindex
    simp only [componentBResidualSourceIndex8, componentBCoverIndex8,
      componentBResidualCoverIndex8] at hjval ⊢
    omega
  rw [hsource, componentBCover8_index_eq_union, ← hjindex,
    componentBResidualCover8_index_eq_union]
  ext v
  simp [componentBBridgeCover8, componentBSingleCover8,
    componentBFixedCover8, or_comm, or_left_comm]

/-- Numerically, the residual slice is exactly `3,9,...,285`. -/
theorem componentBResidualSourceIndex8_iff (i : Fin 288) :
    i.val % 6 = 3 ↔ ∃ j : Fin 48, componentBResidualSourceIndex8 j = i := by
  constructor
  · intro hmod
    let j : Fin 48 := ⟨i.val / 6, by omega⟩
    refine ⟨j, Fin.ext ?_⟩
    simp only [componentBResidualSourceIndex8, j]
    omega
  · rintro ⟨j, rfl⟩
    simp only [componentBResidualSourceIndex8]
    omega

private theorem componentBMainCover8_no_seven (main : Fin 16) :
    7 ∉ componentBMainCover8 main := by
  fin_cases main <;> decide

private theorem componentBMainCover8_no_eight (main : Fin 16) :
    8 ∉ componentBMainCover8 main := by
  fin_cases main <;> decide

private theorem componentBMainCover8_no_seventeen (main : Fin 16) :
    17 ∉ componentBMainCover8 main := by
  fin_cases main <;> decide

private theorem componentBTailCover8_no_seven (tail : Fin 3) :
    7 ∉ componentBTailCover8 tail := by
  fin_cases tail <;> decide

private theorem componentBTailCover8_no_eight (tail : Fin 3) :
    8 ∉ componentBTailCover8 tail := by
  fin_cases tail <;> decide

private theorem componentBTailCover8_no_seventeen (tail : Fin 3) :
    17 ∉ componentBTailCover8 tail := by
  fin_cases tail <;> decide

private theorem componentBBridgeCover8_seven_iff (bridge : Fin 3) :
    7 ∈ componentBBridgeCover8 bridge ↔ bridge ≠ 1 := by
  fin_cases bridge <;> decide

private theorem componentBBridgeCover8_no_eight (bridge : Fin 3) :
    8 ∉ componentBBridgeCover8 bridge := by
  fin_cases bridge <;> decide

private theorem componentBBridgeCover8_seventeen_iff (bridge : Fin 3) :
    17 ∈ componentBBridgeCover8 bridge ↔ bridge = 1 := by
  fin_cases bridge <;> decide

private theorem componentBSingleCover8_no_seven (singleton : Fin 2) :
    7 ∉ componentBSingleCover8 singleton := by
  fin_cases singleton <;> decide

private theorem componentBSingleCover8_eight_iff (singleton : Fin 2) :
    8 ∈ componentBSingleCover8 singleton ↔ singleton = 0 := by
  fin_cases singleton <;> decide

private theorem componentBSingleCover8_no_seventeen (singleton : Fin 2) :
    17 ∉ componentBSingleCover8 singleton := by
  fin_cases singleton <;> decide

private theorem componentBCover8_seven_iff (i : Fin 288) :
    7 ∈ componentBCover8 i ↔ componentBBridgeDigit8 i ≠ 1 := by
  simp only [componentBCover8, Finset.mem_union,
    componentBMainCover8_no_seven, componentBTailCover8_no_seven,
    componentBBridgeCover8_seven_iff, componentBSingleCover8_no_seven,
    false_or, or_false]

private theorem componentBCover8_eight_iff (i : Fin 288) :
    8 ∈ componentBCover8 i ↔ componentBSingleDigit8 i = 0 := by
  simp only [componentBCover8, Finset.mem_union,
    componentBMainCover8_no_eight, componentBTailCover8_no_eight,
    componentBBridgeCover8_no_eight, componentBSingleCover8_eight_iff,
    false_or]

private theorem componentBCover8_seventeen_iff (i : Fin 288) :
    17 ∈ componentBCover8 i ↔ componentBBridgeDigit8 i = 1 := by
  simp only [componentBCover8, Finset.mem_union,
    componentBMainCover8_no_seventeen, componentBTailCover8_no_seventeen,
    componentBBridgeCover8_seventeen_iff,
    componentBSingleCover8_no_seventeen, false_or, or_false]

private theorem componentBBridgeSingleDigits8_iff (i : Fin 288) :
    componentBBridgeDigit8 i = 1 ∧ componentBSingleDigit8 i = 1 ↔
      i.val % 6 = 3 := by
  have h6 := Nat.mod_add_div i.val 6
  have h2 := Nat.mod_add_div i.val 2
  have h3 := Nat.mod_add_div (i.val / 2) 3
  have h6lt := Nat.mod_lt i.val (by omega : 0 < 6)
  have h2lt := Nat.mod_lt i.val (by omega : 0 < 2)
  have h3lt := Nat.mod_lt (i.val / 2) (by omega : 0 < 3)
  constructor
  · rintro ⟨hbridge, hsingle⟩
    have hbridgeVal : (i.val / 2) % 3 = 1 := by
      simpa [componentBBridgeDigit8] using congrArg Fin.val hbridge
    have hsingleVal : i.val % 2 = 1 := by
      simpa [componentBSingleDigit8] using congrArg Fin.val hsingle
    omega
  · intro hmod
    constructor
    · apply Fin.ext
      change (i.val / 2) % 3 = 1
      omega
    · apply Fin.ext
      change i.val % 2 = 1
      omega

/-- Avoiding class `7` and the subsequent `{8,17}` core is equivalent to
belonging to the exact residual 48-cover slice. -/
theorem componentBCover8_residual_iff (i : Fin 288) :
    7 ∉ componentBCover8 i ∧
        ¬ ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i ↔
      i.val % 6 = 3 := by
  rw [← componentBBridgeSingleDigits8_iff]
  simp only [Finset.insert_subset_iff, Finset.singleton_subset_iff,
    componentBCover8_seven_iff, componentBCover8_eight_iff,
    componentBCover8_seventeen_iff]
  constructor
  · rintro ⟨hbridge, hcore⟩
    have hb : componentBBridgeDigit8 i = 1 := by
      by_contra hb
      exact hbridge hb
    refine ⟨hb, ?_⟩
    have hs0 : componentBSingleDigit8 i ≠ 0 := by
      intro hs
      exact hcore ⟨hs, hb⟩
    omega
  · rintro ⟨hbridge, hsingle⟩
    refine ⟨?_, ?_⟩
    · simp [hbridge]
    · rintro ⟨hs0, _⟩
      exact Fin.zero_ne_one (hs0.symm.trans hsingle)

/-- Ordered destinations of the complete Component B first-level dispatch. -/
inductive ComponentBDispatch8 where
  | class7
  | core817
  | class14
  | class19
  | survivor
  deriving DecidableEq

/-- The canonical dispatch order: class 7, the `{8,17}` core, class 14,
class 19, and finally one of the three stable residual rows. -/
def componentBDispatch8 (i : Fin 288) : ComponentBDispatch8 :=
  if 7 ∈ componentBCover8 i then
    .class7
  else if ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i then
    .core817
  else if 14 ∈ componentBCover8 i then
    .class14
  else if 19 ∈ componentBCover8 i then
    .class19
  else
    .survivor

theorem componentBDispatch8_class7_iff (i : Fin 288) :
    componentBDispatch8 i = .class7 ↔ 7 ∈ componentBCover8 i := by
  unfold componentBDispatch8
  by_cases h7 : 7 ∈ componentBCover8 i
  · simp [h7]
  by_cases hcore : ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i
  · simp [h7, hcore]
  by_cases h14 : 14 ∈ componentBCover8 i
  · simp [h7, hcore, h14]
  by_cases h19 : 19 ∈ componentBCover8 i <;>
    simp [h7, hcore, h14, h19]

theorem componentBDispatch8_core817_iff (i : Fin 288) :
    componentBDispatch8 i = .core817 ↔
      7 ∉ componentBCover8 i ∧
        ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i := by
  unfold componentBDispatch8
  by_cases h7 : 7 ∈ componentBCover8 i
  · simp [h7]
  by_cases hcore : ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i
  · simp [h7, hcore]
  by_cases h14 : 14 ∈ componentBCover8 i
  · simp [h7, hcore, h14]
  by_cases h19 : 19 ∈ componentBCover8 i <;>
    simp [h7, hcore, h14, h19]

theorem componentBDispatch8_class14_iff (i : Fin 288) :
    componentBDispatch8 i = .class14 ↔
      7 ∉ componentBCover8 i ∧
        ¬ ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i ∧
        14 ∈ componentBCover8 i := by
  unfold componentBDispatch8
  by_cases h7 : 7 ∈ componentBCover8 i
  · simp [h7]
  by_cases hcore : ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i
  · simp [h7, hcore]
  by_cases h14 : 14 ∈ componentBCover8 i
  · simp [h7, hcore, h14]
  by_cases h19 : 19 ∈ componentBCover8 i <;>
    simp [h7, hcore, h14, h19]

theorem componentBDispatch8_class19_iff (i : Fin 288) :
    componentBDispatch8 i = .class19 ↔
      7 ∉ componentBCover8 i ∧
        ¬ ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i ∧
        14 ∉ componentBCover8 i ∧ 19 ∈ componentBCover8 i := by
  unfold componentBDispatch8
  by_cases h7 : 7 ∈ componentBCover8 i
  · simp [h7]
  by_cases hcore : ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i
  · simp [h7, hcore]
  by_cases h14 : 14 ∈ componentBCover8 i
  · simp [h7, hcore, h14]
  by_cases h19 : 19 ∈ componentBCover8 i <;>
    simp [h7, hcore, h14, h19]

private theorem componentBDispatch8_survivor_conditions_iff (i : Fin 288) :
    componentBDispatch8 i = .survivor ↔
      7 ∉ componentBCover8 i ∧
        ¬ ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i ∧
        14 ∉ componentBCover8 i ∧ 19 ∉ componentBCover8 i := by
  unfold componentBDispatch8
  by_cases h7 : 7 ∈ componentBCover8 i
  · simp [h7]
  by_cases hcore : ({8, 17} : Finset (Fin 23)) ⊆ componentBCover8 i
  · simp [h7, hcore]
  by_cases h14 : 14 ∈ componentBCover8 i
  · simp [h7, hcore, h14]
  by_cases h19 : 19 ∈ componentBCover8 i <;>
    simp [h7, hcore, h14, h19]

theorem componentBDispatch8_survivor_iff (i : Fin 288) :
    componentBDispatch8 i = .survivor ↔ i = 3 ∨ i = 9 ∨ i = 15 := by
  constructor
  · intro hdispatch
    rcases (componentBDispatch8_survivor_conditions_iff i).mp hdispatch with
      ⟨h7, hcore, h14, h19⟩
    have hmod : i.val % 6 = 3 :=
      (componentBCover8_residual_iff i).mp ⟨h7, hcore⟩
    obtain ⟨j, hji⟩ := (componentBResidualSourceIndex8_iff i).mp hmod
    have hcover : componentBCover8 i = componentBResidualCover8 j := by
      rw [← hji]
      exact componentBCover8_residual_source_eq j
    rw [hcover] at h14 h19
    have hjlt : j.val < 3 :=
      (componentBResidualCover8_survivor_iff j).mp ⟨h14, h19⟩
    subst i
    have hjcases : j.val = 0 ∨ j.val = 1 ∨ j.val = 2 := by omega
    rcases hjcases with hj | hj | hj
    · left
      apply Fin.ext
      simp [componentBResidualSourceIndex8, hj]
    · right; left
      apply Fin.ext
      simp [componentBResidualSourceIndex8, hj]
    · right; right
      apply Fin.ext
      simp [componentBResidualSourceIndex8, hj]
  · rintro (rfl | rfl | rfl) <;> decide

/-- The five ordered cases form a genuine partition because the dispatch is
a single-valued total function. -/
theorem componentBDispatch8_partition (i : Fin 288) :
    ∃! destination : ComponentBDispatch8,
      componentBDispatch8 i = destination := by
  refine ⟨componentBDispatch8 i, rfl, ?_⟩
  intro destination hdestination
  exact hdestination.symm

private def componentBFilterSigmaEquiv8
    (p : Fin 16 × Fin 18 → Prop) :
    {x : Fin 16 × Fin 18 // p x} ≃
      Σ main : Fin 16, {r : Fin 18 // p (main, r)} where
  toFun x := ⟨x.1.1, ⟨x.1.2, x.2⟩⟩
  invFun x := ⟨(x.1, x.2.1), x.2.2⟩
  left_inv := by
    rintro ⟨⟨main, r⟩, h⟩
    rfl
  right_inv := by
    rintro ⟨main, ⟨r, h⟩⟩
    rfl

private theorem componentB_card_filter_product_eq_sum8
    (p : Fin 16 × Fin 18 → Prop) [DecidablePred p] :
    ((Finset.univ : Finset (Fin 16 × Fin 18)).filter p).card =
      ∑ main : Fin 16,
        ((Finset.univ : Finset (Fin 18)).filter fun r =>
          p (main, r)).card := by
  classical
  calc
    ((Finset.univ : Finset (Fin 16 × Fin 18)).filter p).card =
        Fintype.card {x : Fin 16 × Fin 18 // p x} :=
      (Fintype.card_subtype p).symm
    _ = Fintype.card (Σ main : Fin 16, {r : Fin 18 // p (main, r)}) :=
      Fintype.card_congr (componentBFilterSigmaEquiv8 p)
    _ = ∑ main : Fin 16, Fintype.card {r : Fin 18 // p (main, r)} :=
      Fintype.card_sigma
    _ = ∑ main : Fin 16,
          ((Finset.univ : Finset (Fin 18)).filter fun r =>
            p (main, r)).card := by
      apply Finset.sum_congr rfl
      intro main _
      exact Fintype.card_subtype _

private theorem componentBDispatch8_card_eq_sum_blocks
    (destination : ComponentBDispatch8) :
    (Finset.univ.filter fun i : Fin 288 =>
      componentBDispatch8 i = destination).card =
      ∑ main : Fin 16,
        (Finset.univ.filter fun r : Fin 18 =>
          componentBDispatch8
              ((finProdFinEquiv : Fin 16 × Fin 18 ≃ Fin 288) (main, r)) =
            destination).card := by
  calc
    (Finset.univ.filter fun i : Fin 288 =>
        componentBDispatch8 i = destination).card =
        ((Finset.univ : Finset (Fin 16 × Fin 18)).filter fun x =>
          componentBDispatch8
              ((finProdFinEquiv : Fin 16 × Fin 18 ≃ Fin 288) x) =
            destination).card := by
      symm
      apply Finset.card_equiv
        (finProdFinEquiv : Fin 16 × Fin 18 ≃ Fin 288)
      intro x
      simp
    _ = _ := componentB_card_filter_product_eq_sum8 _

private theorem componentBDispatch8_class7_block_count (main : Fin 16) :
    (Finset.univ.filter fun r : Fin 18 =>
      componentBDispatch8
          ((finProdFinEquiv : Fin 16 × Fin 18 ≃ Fin 288) (main, r)) =
        .class7).card = 12 := by
  fin_cases main <;> decide

private theorem componentBDispatch8_core817_block_count (main : Fin 16) :
    (Finset.univ.filter fun r : Fin 18 =>
      componentBDispatch8
          ((finProdFinEquiv : Fin 16 × Fin 18 ≃ Fin 288) (main, r)) =
        .core817).card = 3 := by
  fin_cases main <;> decide

private theorem componentBDispatch8_class14_block_count (main : Fin 16) :
    (Finset.univ.filter fun r : Fin 18 =>
      componentBDispatch8
          ((finProdFinEquiv : Fin 16 × Fin 18 ≃ Fin 288) (main, r)) =
        .class14).card =
      if 14 ∈ componentBMainCover8 main then 3 else 0 := by
  fin_cases main <;> decide

private theorem componentBDispatch8_class19_block_count (main : Fin 16) :
    (Finset.univ.filter fun r : Fin 18 =>
      componentBDispatch8
          ((finProdFinEquiv : Fin 16 × Fin 18 ≃ Fin 288) (main, r)) =
        .class19).card =
      if 14 ∉ componentBMainCover8 main ∧ 19 ∈ componentBMainCover8 main
      then 3 else 0 := by
  fin_cases main <;> decide

private theorem componentBDispatch8_survivor_block_count (main : Fin 16) :
    (Finset.univ.filter fun r : Fin 18 =>
      componentBDispatch8
          ((finProdFinEquiv : Fin 16 × Fin 18 ≃ Fin 288) (main, r)) =
        .survivor).card =
      if 14 ∉ componentBMainCover8 main ∧ 19 ∉ componentBMainCover8 main
      then 3 else 0 := by
  fin_cases main <;> decide

theorem componentBDispatch8_class7_count :
    (Finset.univ.filter fun i : Fin 288 =>
      componentBDispatch8 i = .class7).card = 192 := by
  rw [componentBDispatch8_card_eq_sum_blocks]
  simp_rw [componentBDispatch8_class7_block_count]
  decide

theorem componentBDispatch8_core817_count :
    (Finset.univ.filter fun i : Fin 288 =>
      componentBDispatch8 i = .core817).card = 48 := by
  rw [componentBDispatch8_card_eq_sum_blocks]
  simp_rw [componentBDispatch8_core817_block_count]
  decide

theorem componentBDispatch8_class14_count :
    (Finset.univ.filter fun i : Fin 288 =>
      componentBDispatch8 i = .class14).card = 36 := by
  rw [componentBDispatch8_card_eq_sum_blocks]
  simp_rw [componentBDispatch8_class14_block_count]
  decide

theorem componentBDispatch8_class19_count :
    (Finset.univ.filter fun i : Fin 288 =>
      componentBDispatch8 i = .class19).card = 9 := by
  rw [componentBDispatch8_card_eq_sum_blocks]
  simp_rw [componentBDispatch8_class19_block_count]
  decide

theorem componentBDispatch8_survivor_count :
    (Finset.univ.filter fun i : Fin 288 =>
      componentBDispatch8 i = .survivor).card = 3 := by
  rw [componentBDispatch8_card_eq_sum_blocks]
  simp_rw [componentBDispatch8_survivor_block_count]
  decide

/-- The three terminal rows are exactly full-table rows `3`, `9`, and `15`,
with the exact covers recorded by the canonical residual table. -/
theorem componentBDispatch8_survivor_covers :
    (componentBCover8 3, componentBCover8 9, componentBCover8 15) =
      (componentBResidualCover8 0,
        componentBResidualCover8 1,
        componentBResidualCover8 2) := by
  decide

theorem componentBDispatch8_survivor_covers_exact :
    (componentBCover8 3, componentBCover8 9, componentBCover8 15) =
      (({0, 1, 2, 3, 4, 9, 10, 11, 12, 17, 22} : Finset (Fin 23)),
        ({0, 1, 2, 4, 6, 9, 10, 11, 12, 17, 22} : Finset (Fin 23)),
        ({0, 1, 4, 6, 9, 10, 11, 12, 17, 18, 22} : Finset (Fin 23))) := by
  decide

/-- Kernel-checked dispatch from all complete Component B factor products to
one of the 288 exact cover rows. -/
theorem componentB_zero_factor_dispatch
    (factor : Fin 23 → ℂ)
    (hedge : ∀ ⦃u v⦄, componentBFactorEdge8 u v →
      factor u * factor v = 0) :
    ∃ i, ∀ v ∈ componentBCover8 i, factor v = 0 :=
  exists_listed_zero_cover componentBFactorEdge8 factor componentBCover8
    componentBCover8_complete hedge

end MonochromaticQuantumGraphs.N8D3
