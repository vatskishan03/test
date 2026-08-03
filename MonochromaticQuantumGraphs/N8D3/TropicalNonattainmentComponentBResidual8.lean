import MonochromaticQuantumGraphs.LaurentFaceCertificate

/-!
# Component B residual 48-cover certificate for the N8D3 support

The canonical handoff recovers 48 of the original 288 first-level covers:
45 carry the same nested-face witness and three are stable.  This module
records those 48 rows exactly, reconstructs their 23-class factor graph from
the minimal-cover table, and kernel-checks the residual coverage and survivor
classification.  It does not claim the still-missing 288-to-48 reduction.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs.FactorCoverCertificate

/-- Factor edges reconstructed from the exact 48-row residual table.  The
singleton edges force classes 4, 17 and 22 into every cover. -/
def componentBResidualFactorEdges8 : Finset (Finset (Fin 23)) :=
  {{4}, {17}, {22},
    {0, 5}, {0, 19}, {0, 20}, {0, 21},
    {1, 5}, {1, 14}, {1, 15}, {1, 16},
    {2, 6}, {2, 18}, {3, 6},
    {9, 14}, {9, 16}, {10, 14},
    {11, 19}, {11, 21}, {12, 19}}

/-- Adjacency in the reconstructed residual Component B factor graph. -/
def componentBResidualFactorEdge8 (u v : Fin 23) : Prop :=
  ({u, v} : Finset (Fin 23)) ∈ componentBResidualFactorEdges8

instance : DecidableRel componentBResidualFactorEdge8 := by
  intro u v
  unfold componentBResidualFactorEdge8
  infer_instance

/-- The exact 48 rows, in `B_residual_complete.json` order. -/
def componentBResidualCover8 : Fin 48 → Finset (Fin 23) := ![
  {0, 1, 2, 3, 4, 9, 10, 11, 12, 17, 22},
  {0, 1, 2, 4, 6, 9, 10, 11, 12, 17, 22},
  {0, 1, 4, 6, 9, 10, 11, 12, 17, 18, 22},
  {0, 1, 2, 3, 4, 9, 10, 11, 17, 19, 22},
  {0, 1, 2, 4, 6, 9, 10, 11, 17, 19, 22},
  {0, 1, 4, 6, 9, 10, 11, 17, 18, 19, 22},
  {0, 1, 2, 3, 4, 9, 10, 17, 19, 21, 22},
  {0, 1, 2, 4, 6, 9, 10, 17, 19, 21, 22},
  {0, 1, 4, 6, 9, 10, 17, 18, 19, 21, 22},
  {0, 1, 2, 3, 4, 9, 11, 12, 14, 17, 22},
  {0, 1, 2, 4, 6, 9, 11, 12, 14, 17, 22},
  {0, 1, 4, 6, 9, 11, 12, 14, 17, 18, 22},
  {0, 1, 2, 3, 4, 9, 11, 14, 17, 19, 22},
  {0, 1, 2, 4, 6, 9, 11, 14, 17, 19, 22},
  {0, 1, 4, 6, 9, 11, 14, 17, 18, 19, 22},
  {0, 1, 2, 3, 4, 9, 14, 17, 19, 21, 22},
  {0, 1, 2, 4, 6, 9, 14, 17, 19, 21, 22},
  {0, 1, 4, 6, 9, 14, 17, 18, 19, 21, 22},
  {0, 1, 2, 3, 4, 11, 12, 14, 16, 17, 22},
  {0, 1, 2, 4, 6, 11, 12, 14, 16, 17, 22},
  {0, 1, 4, 6, 11, 12, 14, 16, 17, 18, 22},
  {0, 1, 2, 3, 4, 11, 14, 16, 17, 19, 22},
  {0, 1, 2, 4, 6, 11, 14, 16, 17, 19, 22},
  {0, 1, 4, 6, 11, 14, 16, 17, 18, 19, 22},
  {0, 1, 2, 3, 4, 14, 16, 17, 19, 21, 22},
  {0, 1, 2, 4, 6, 14, 16, 17, 19, 21, 22},
  {0, 1, 4, 6, 14, 16, 17, 18, 19, 21, 22},
  {0, 2, 3, 4, 5, 11, 12, 14, 15, 16, 17, 22},
  {0, 2, 4, 5, 6, 11, 12, 14, 15, 16, 17, 22},
  {0, 4, 5, 6, 11, 12, 14, 15, 16, 17, 18, 22},
  {0, 2, 3, 4, 5, 11, 14, 15, 16, 17, 19, 22},
  {0, 2, 4, 5, 6, 11, 14, 15, 16, 17, 19, 22},
  {0, 4, 5, 6, 11, 14, 15, 16, 17, 18, 19, 22},
  {0, 2, 3, 4, 5, 14, 15, 16, 17, 19, 21, 22},
  {0, 2, 4, 5, 6, 14, 15, 16, 17, 19, 21, 22},
  {0, 4, 5, 6, 14, 15, 16, 17, 18, 19, 21, 22},
  {1, 2, 3, 4, 5, 9, 10, 17, 19, 20, 21, 22},
  {1, 2, 4, 5, 6, 9, 10, 17, 19, 20, 21, 22},
  {1, 4, 5, 6, 9, 10, 17, 18, 19, 20, 21, 22},
  {1, 2, 3, 4, 5, 9, 14, 17, 19, 20, 21, 22},
  {1, 2, 4, 5, 6, 9, 14, 17, 19, 20, 21, 22},
  {1, 4, 5, 6, 9, 14, 17, 18, 19, 20, 21, 22},
  {1, 2, 3, 4, 5, 14, 16, 17, 19, 20, 21, 22},
  {1, 2, 4, 5, 6, 14, 16, 17, 19, 20, 21, 22},
  {1, 4, 5, 6, 14, 16, 17, 18, 19, 20, 21, 22},
  {2, 3, 4, 5, 14, 15, 16, 17, 19, 20, 21, 22},
  {2, 4, 5, 6, 14, 15, 16, 17, 19, 20, 21, 22},
  {4, 5, 6, 14, 15, 16, 17, 18, 19, 20, 21, 22}
]

/-- Original indices of the recovered rows inside the claimed 288-cover
census.  They are exactly `3,9,...,285`. -/
def componentBResidualSourceIndex8 (i : Fin 48) : Fin 288 :=
  ⟨6 * i.val + 3, by omega⟩

/-- The two three-row arm tables of the main connected component. -/
def componentBArm14Cover8 : Fin 3 → Finset (Fin 23) :=
  ![{9, 10}, {9, 14}, {14, 16}]

def componentBArm19Cover8 : Fin 3 → Finset (Fin 23) :=
  ![{11, 12}, {11, 19}, {19, 21}]

/-- The 16 minimal covers of the main connected component. -/
def componentBMainCover8 : Fin 16 → Finset (Fin 23) := ![
  {0, 1, 9, 10, 11, 12},
  {0, 1, 9, 10, 11, 19},
  {0, 1, 9, 10, 19, 21},
  {0, 1, 9, 11, 12, 14},
  {0, 1, 9, 11, 14, 19},
  {0, 1, 9, 14, 19, 21},
  {0, 1, 11, 12, 14, 16},
  {0, 1, 11, 14, 16, 19},
  {0, 1, 14, 16, 19, 21},
  {0, 5, 11, 12, 14, 15, 16},
  {0, 5, 11, 14, 15, 16, 19},
  {0, 5, 14, 15, 16, 19, 21},
  {1, 5, 9, 10, 19, 20, 21},
  {1, 5, 9, 14, 19, 20, 21},
  {1, 5, 14, 16, 19, 20, 21},
  {5, 14, 15, 16, 19, 20, 21}
]

/-- The three covers of the `{2,3,6,18}` component. -/
def componentBTailCover8 : Fin 3 → Finset (Fin 23) :=
  ![{2, 3}, {2, 6}, {6, 18}]

/-- The singleton-factor part common to all recovered rows. -/
def componentBFixedCover8 : Finset (Fin 23) := {4, 17, 22}

def componentBResidualCoverIndex8 (main : Fin 16) (tail : Fin 3) : Fin 48 :=
  ⟨main.val * 3 + tail.val, by omega⟩

theorem componentBResidualCover8_index_eq_union
    (main : Fin 16) (tail : Fin 3) :
    componentBResidualCover8 (componentBResidualCoverIndex8 main tail) =
      componentBMainCover8 main ∪ componentBTailCover8 tail ∪
        componentBFixedCover8 := by
  revert main tail
  decide

theorem componentBArm14Cover8_complete
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBResidualFactorEdge8 cover) :
    ∃ a, componentBArm14Cover8 a ⊆ cover := by
  have h914 : 9 ∈ cover ∨ 14 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 9 14 by decide)
  have h916 : 9 ∈ cover ∨ 16 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 9 16 by decide)
  have h1014 : 10 ∈ cover ∨ 14 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 10 14 by decide)
  by_cases h9 : 9 ∈ cover
  · rcases h1014 with h10 | h14
    · refine ⟨0, ?_⟩
      simpa [componentBArm14Cover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 9 ∈ cover ∧ 10 ∈ cover from ⟨h9, h10⟩)
    · refine ⟨1, ?_⟩
      simpa [componentBArm14Cover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 9 ∈ cover ∧ 14 ∈ cover from ⟨h9, h14⟩)
  · have h14 : 14 ∈ cover := h914.resolve_left h9
    have h16 : 16 ∈ cover := h916.resolve_left h9
    refine ⟨2, ?_⟩
    simpa [componentBArm14Cover8, Finset.insert_subset_iff,
      Finset.singleton_subset_iff] using
      (show 14 ∈ cover ∧ 16 ∈ cover from ⟨h14, h16⟩)

theorem componentBArm19Cover8_complete
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBResidualFactorEdge8 cover) :
    ∃ b, componentBArm19Cover8 b ⊆ cover := by
  have h1119 : 11 ∈ cover ∨ 19 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 11 19 by decide)
  have h1121 : 11 ∈ cover ∨ 21 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 11 21 by decide)
  have h1219 : 12 ∈ cover ∨ 19 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 12 19 by decide)
  by_cases h11 : 11 ∈ cover
  · rcases h1219 with h12 | h19
    · refine ⟨0, ?_⟩
      simpa [componentBArm19Cover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 11 ∈ cover ∧ 12 ∈ cover from ⟨h11, h12⟩)
    · refine ⟨1, ?_⟩
      simpa [componentBArm19Cover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 11 ∈ cover ∧ 19 ∈ cover from ⟨h11, h19⟩)
  · have h19 : 19 ∈ cover := h1119.resolve_left h11
    have h21 : 21 ∈ cover := h1121.resolve_left h11
    refine ⟨2, ?_⟩
    simpa [componentBArm19Cover8, Finset.insert_subset_iff,
      Finset.singleton_subset_iff] using
      (show 19 ∈ cover ∧ 21 ∈ cover from ⟨h19, h21⟩)

def componentBMainBothIndex8 (a b : Fin 3) : Fin 16 :=
  ⟨a.val * 3 + b.val, by omega⟩

def componentBMainLeftIndex8 (b : Fin 3) : Fin 16 :=
  ⟨9 + b.val, by omega⟩

def componentBMainRightIndex8 (a : Fin 3) : Fin 16 :=
  ⟨12 + a.val, by omega⟩

theorem componentBMainCover8_both_eq
    (a b : Fin 3) :
    componentBMainCover8 (componentBMainBothIndex8 a b) =
      {0, 1} ∪ componentBArm14Cover8 a ∪ componentBArm19Cover8 b := by
  revert a b
  decide

theorem componentBMainCover8_left_eq (b : Fin 3) :
    componentBMainCover8 (componentBMainLeftIndex8 b) =
      {0, 5, 14, 15, 16} ∪ componentBArm19Cover8 b := by
  revert b
  decide

theorem componentBMainCover8_right_eq (a : Fin 3) :
    componentBMainCover8 (componentBMainRightIndex8 a) =
      {1, 5, 19, 20, 21} ∪ componentBArm14Cover8 a := by
  revert a
  decide

theorem componentBMainCover8_complete
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBResidualFactorEdge8 cover) :
    ∃ main, componentBMainCover8 main ⊆ cover := by
  have h05 : 0 ∈ cover ∨ 5 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 0 5 by decide)
  have h019 : 0 ∈ cover ∨ 19 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 0 19 by decide)
  have h020 : 0 ∈ cover ∨ 20 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 0 20 by decide)
  have h021 : 0 ∈ cover ∨ 21 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 0 21 by decide)
  have h15 : 1 ∈ cover ∨ 5 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 1 5 by decide)
  have h114 : 1 ∈ cover ∨ 14 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 1 14 by decide)
  have h115 : 1 ∈ cover ∨ 15 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 1 15 by decide)
  have h116 : 1 ∈ cover ∨ 16 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 1 16 by decide)
  by_cases h0 : 0 ∈ cover
  · by_cases h1 : 1 ∈ cover
    · obtain ⟨a, ha⟩ := componentBArm14Cover8_complete cover hcover
      obtain ⟨b, hb⟩ := componentBArm19Cover8_complete cover hcover
      refine ⟨componentBMainBothIndex8 a b, ?_⟩
      rw [componentBMainCover8_both_eq]
      intro v hv
      simp only [Finset.mem_union, Finset.mem_insert, Finset.mem_singleton] at hv
      rcases hv with ((rfl | rfl) | hv) | hv
      · exact h0
      · exact h1
      · exact ha hv
      · exact hb hv
    · have h5 : 5 ∈ cover := h15.resolve_left h1
      have h14 : 14 ∈ cover := h114.resolve_left h1
      have h15' : 15 ∈ cover := h115.resolve_left h1
      have h16 : 16 ∈ cover := h116.resolve_left h1
      obtain ⟨b, hb⟩ := componentBArm19Cover8_complete cover hcover
      refine ⟨componentBMainLeftIndex8 b, ?_⟩
      rw [componentBMainCover8_left_eq]
      intro v hv
      simp only [Finset.mem_union] at hv
      rcases hv with hv | hv
      · simp only [Finset.mem_insert, Finset.mem_singleton] at hv
        rcases hv with rfl | rfl | rfl | rfl | rfl
        · exact h0
        · exact h5
        · exact h14
        · exact h15'
        · exact h16
      · exact hb hv
  · have h5 : 5 ∈ cover := h05.resolve_left h0
    have h19 : 19 ∈ cover := h019.resolve_left h0
    have h20 : 20 ∈ cover := h020.resolve_left h0
    have h21 : 21 ∈ cover := h021.resolve_left h0
    by_cases h1 : 1 ∈ cover
    · obtain ⟨a, ha⟩ := componentBArm14Cover8_complete cover hcover
      refine ⟨componentBMainRightIndex8 a, ?_⟩
      rw [componentBMainCover8_right_eq]
      intro v hv
      simp only [Finset.mem_union] at hv
      rcases hv with hv | hv
      · simp only [Finset.mem_insert, Finset.mem_singleton] at hv
        rcases hv with rfl | rfl | rfl | rfl | rfl
        · exact h1
        · exact h5
        · exact h19
        · exact h20
        · exact h21
      · exact ha hv
    · have h14 : 14 ∈ cover := h114.resolve_left h1
      have h15' : 15 ∈ cover := h115.resolve_left h1
      have h16 : 16 ∈ cover := h116.resolve_left h1
      refine ⟨15, ?_⟩
      simpa [componentBMainCover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 5 ∈ cover ∧ 14 ∈ cover ∧ 15 ∈ cover ∧ 16 ∈ cover ∧
            19 ∈ cover ∧ 20 ∈ cover ∧ 21 ∈ cover from
          ⟨h5, h14, h15', h16, h19, h20, h21⟩)

theorem componentBTailCover8_complete
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBResidualFactorEdge8 cover) :
    ∃ tail, componentBTailCover8 tail ⊆ cover := by
  have h26 : 2 ∈ cover ∨ 6 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 2 6 by decide)
  have h218 : 2 ∈ cover ∨ 18 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 2 18 by decide)
  have h36 : 3 ∈ cover ∨ 6 ∈ cover :=
    hcover (show componentBResidualFactorEdge8 3 6 by decide)
  by_cases h2 : 2 ∈ cover
  · rcases h36 with h3 | h6
    · refine ⟨0, ?_⟩
      simpa [componentBTailCover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 2 ∈ cover ∧ 3 ∈ cover from ⟨h2, h3⟩)
    · refine ⟨1, ?_⟩
      simpa [componentBTailCover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 2 ∈ cover ∧ 6 ∈ cover from ⟨h2, h6⟩)
  · have h6 : 6 ∈ cover := h26.resolve_left h2
    have h18 : 18 ∈ cover := h218.resolve_left h2
    refine ⟨2, ?_⟩
    simpa [componentBTailCover8, Finset.insert_subset_iff,
      Finset.singleton_subset_iff] using
      (show 6 ∈ cover ∧ 18 ∈ cover from ⟨h6, h18⟩)

theorem componentBFixedCover8_subset
    (cover : Finset (Fin 23))
    (hcover : IsVertexCover componentBResidualFactorEdge8 cover) :
    componentBFixedCover8 ⊆ cover := by
  have h4 : 4 ∈ cover := by
    simpa using hcover (show componentBResidualFactorEdge8 4 4 by decide)
  have h17 : 17 ∈ cover := by
    simpa using hcover (show componentBResidualFactorEdge8 17 17 by decide)
  have h22 : 22 ∈ cover := by
    simpa using hcover (show componentBResidualFactorEdge8 22 22 by decide)
  simpa [componentBFixedCover8, Finset.insert_subset_iff,
    Finset.singleton_subset_iff] using
    (show 4 ∈ cover ∧ 17 ∈ cover ∧ 22 ∈ cover from ⟨h4, h17, h22⟩)

/-- The recovered 48-row table is complete for its reconstructed residual
factor graph. -/
theorem componentBResidualCover8_complete :
    IsCompleteTable componentBResidualFactorEdge8 componentBResidualCover8 := by
  intro cover hcover
  obtain ⟨main, hmain⟩ := componentBMainCover8_complete cover hcover
  obtain ⟨tail, htail⟩ := componentBTailCover8_complete cover hcover
  have hfixed := componentBFixedCover8_subset cover hcover
  refine ⟨componentBResidualCoverIndex8 main tail, ?_⟩
  rw [componentBResidualCover8_index_eq_union]
  intro v hv
  simp only [Finset.mem_union] at hv
  rcases hv with (hv | hv) | hv
  · exact hmain hv
  · exact htail hv
  · exact hfixed hv

/-- Exactly 36 residual rows contain factor class 14. -/
theorem componentBResidualCover8_class14_count :
    (Finset.univ.filter fun i : Fin 48 =>
      14 ∈ componentBResidualCover8 i).card = 36 := by
  decide

/-- Of the twelve rows avoiding class 14, exactly nine contain class 19. -/
theorem componentBResidualCover8_class19_count :
    (Finset.univ.filter fun i : Fin 48 =>
      14 ∉ componentBResidualCover8 i ∧
        19 ∈ componentBResidualCover8 i).card = 9 := by
  decide

/-- The three stable rows are exactly residual indices `0,1,2`, whose original
288-cover indices are `3,9,15`. -/
theorem componentBResidualCover8_survivor_iff (i : Fin 48) :
    14 ∉ componentBResidualCover8 i ∧
        19 ∉ componentBResidualCover8 i ↔
      i.val < 3 := by
  revert i
  decide

theorem componentBResidualSourceIndex8_first_three :
    (componentBResidualSourceIndex8 0,
      componentBResidualSourceIndex8 1,
      componentBResidualSourceIndex8 2) = (3, 9, 15) := by
  decide

/-- Kernel-checked dispatch to one of the 48 recovered residual rows. -/
theorem componentBResidual_zero_factor_dispatch
    (factor : Fin 23 → ℂ)
    (hedge : ∀ ⦃u v⦄, componentBResidualFactorEdge8 u v →
      factor u * factor v = 0) :
    ∃ i, ∀ v ∈ componentBResidualCover8 i, factor v = 0 :=
  exists_listed_zero_cover componentBResidualFactorEdge8 factor
    componentBResidualCover8 componentBResidualCover8_complete hedge

end MonochromaticQuantumGraphs.N8D3
