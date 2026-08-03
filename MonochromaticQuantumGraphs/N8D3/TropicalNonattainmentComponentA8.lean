import MonochromaticQuantumGraphs.LaurentFaceCertificate

/-!
# Component A finite cover certificate for the N8D3 support

The recovered 54-row Component A table determines a 15-vertex factor graph:
its rows are exactly the minimal vertex covers of the graph below.  This file
records that finite data and replays its coverage inside Lean.  The separate
support-specific module must still prove that the cube equations produce these
factor edges and that every listed row triggers its declared nested face.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs.FactorCoverCertificate

/-- The factor graph reconstructed exactly from the 54 minimal covers in the
canonical `A_complete.json` certificate. -/
def componentAFactorEdges8 : Finset (Finset (Fin 15)) :=
  {{0, 5}, {0, 13}, {0, 14}, {1, 5}, {1, 10}, {1, 11},
    {2, 7}, {3, 6}, {3, 12}, {4, 6}, {8, 10}, {9, 13}}

/-- Adjacency in the reconstructed Component A factor graph. -/
def componentAFactorEdge8 (u v : Fin 15) : Prop :=
  ({u, v} : Finset (Fin 15)) ∈ componentAFactorEdges8

instance : DecidableRel componentAFactorEdge8 := by
  intro u v
  unfold componentAFactorEdge8
  infer_instance

/-- The exact 54 covers, in the order of `A_complete.json`. -/
def componentACover8 : Fin 54 → Finset (Fin 15) := ![
  {0, 1, 2, 3, 4, 8, 9},
  {0, 1, 2, 3, 6, 8, 9},
  {0, 1, 2, 6, 8, 9, 12},
  {0, 1, 3, 4, 7, 8, 9},
  {0, 1, 3, 6, 7, 8, 9},
  {0, 1, 6, 7, 8, 9, 12},
  {0, 1, 2, 3, 4, 8, 13},
  {0, 1, 2, 3, 6, 8, 13},
  {0, 1, 2, 6, 8, 12, 13},
  {0, 1, 3, 4, 7, 8, 13},
  {0, 1, 3, 6, 7, 8, 13},
  {0, 1, 6, 7, 8, 12, 13},
  {0, 1, 2, 3, 4, 9, 10},
  {0, 1, 2, 3, 6, 9, 10},
  {0, 1, 2, 6, 9, 10, 12},
  {0, 1, 3, 4, 7, 9, 10},
  {0, 1, 3, 6, 7, 9, 10},
  {0, 1, 6, 7, 9, 10, 12},
  {0, 1, 2, 3, 4, 10, 13},
  {0, 1, 2, 3, 6, 10, 13},
  {0, 1, 2, 6, 10, 12, 13},
  {0, 1, 3, 4, 7, 10, 13},
  {0, 1, 3, 6, 7, 10, 13},
  {0, 1, 6, 7, 10, 12, 13},
  {0, 2, 3, 4, 5, 9, 10, 11},
  {0, 2, 3, 5, 6, 9, 10, 11},
  {0, 2, 5, 6, 9, 10, 11, 12},
  {0, 3, 4, 5, 7, 9, 10, 11},
  {0, 3, 5, 6, 7, 9, 10, 11},
  {0, 5, 6, 7, 9, 10, 11, 12},
  {0, 2, 3, 4, 5, 10, 11, 13},
  {0, 2, 3, 5, 6, 10, 11, 13},
  {0, 2, 5, 6, 10, 11, 12, 13},
  {0, 3, 4, 5, 7, 10, 11, 13},
  {0, 3, 5, 6, 7, 10, 11, 13},
  {0, 5, 6, 7, 10, 11, 12, 13},
  {1, 2, 3, 4, 5, 8, 13, 14},
  {1, 2, 3, 5, 6, 8, 13, 14},
  {1, 2, 5, 6, 8, 12, 13, 14},
  {1, 3, 4, 5, 7, 8, 13, 14},
  {1, 3, 5, 6, 7, 8, 13, 14},
  {1, 5, 6, 7, 8, 12, 13, 14},
  {1, 2, 3, 4, 5, 10, 13, 14},
  {1, 2, 3, 5, 6, 10, 13, 14},
  {1, 2, 5, 6, 10, 12, 13, 14},
  {1, 3, 4, 5, 7, 10, 13, 14},
  {1, 3, 5, 6, 7, 10, 13, 14},
  {1, 5, 6, 7, 10, 12, 13, 14},
  {2, 3, 4, 5, 10, 11, 13, 14},
  {2, 3, 5, 6, 10, 11, 13, 14},
  {2, 5, 6, 10, 11, 12, 13, 14},
  {3, 4, 5, 7, 10, 11, 13, 14},
  {3, 5, 6, 7, 10, 11, 13, 14},
  {5, 6, 7, 10, 11, 12, 13, 14}
]

/-- A bounded first-row replay, kept as a cheap regression before the complete
54-row and all-cover checks below. -/
theorem componentACover8_row0_minimal :
    IsMinimalVertexCover componentAFactorEdge8 (componentACover8 0) := by
  unfold IsMinimalVertexCover IsVertexCover
  decide

/-- The nine minimal covers of the first connected factor-graph component. -/
def componentAG1Cover8 : Fin 9 → Finset (Fin 15) := ![
  {0, 1, 8, 9},
  {0, 1, 8, 13},
  {0, 1, 9, 10},
  {0, 1, 10, 13},
  {0, 5, 9, 10, 11},
  {0, 5, 10, 11, 13},
  {1, 5, 8, 13, 14},
  {1, 5, 10, 13, 14},
  {5, 10, 11, 13, 14}
]

/-- The two minimal covers of the isolated edge `{2,7}`. -/
def componentAG2Cover8 : Fin 2 → Finset (Fin 15) := ![{2}, {7}]

/-- The three minimal covers of the `{3,4,6,12}` component. -/
def componentAG3Cover8 : Fin 3 → Finset (Fin 15) :=
  ![{3, 4}, {3, 6}, {6, 12}]

/-- Mixed-radix index matching the original JSON row order. -/
def componentACoverIndex8 (a : Fin 9) (b : Fin 2) (c : Fin 3) : Fin 54 :=
  ⟨a.val * 6 + b.val * 3 + c.val, by omega⟩

/-- The explicit 54-row table is the Cartesian product of the three
connected-component cover tables, in the recovered order. -/
theorem componentACover8_index_eq_union
    (a : Fin 9) (b : Fin 2) (c : Fin 3) :
    componentACover8 (componentACoverIndex8 a b c) =
      componentAG1Cover8 a ∪ componentAG2Cover8 b ∪ componentAG3Cover8 c := by
  revert a b c
  decide

/-- Every cover of the first connected factor-graph component contains one of
its nine declared minimal rows. -/
theorem componentAG1Cover8_complete
    (cover : Finset (Fin 15))
    (hcover : IsVertexCover componentAFactorEdge8 cover) :
    ∃ a, componentAG1Cover8 a ⊆ cover := by
  have h05 : 0 ∈ cover ∨ 5 ∈ cover :=
    hcover (show componentAFactorEdge8 0 5 by decide)
  have h013 : 0 ∈ cover ∨ 13 ∈ cover :=
    hcover (show componentAFactorEdge8 0 13 by decide)
  have h014 : 0 ∈ cover ∨ 14 ∈ cover :=
    hcover (show componentAFactorEdge8 0 14 by decide)
  have h15 : 1 ∈ cover ∨ 5 ∈ cover :=
    hcover (show componentAFactorEdge8 1 5 by decide)
  have h110 : 1 ∈ cover ∨ 10 ∈ cover :=
    hcover (show componentAFactorEdge8 1 10 by decide)
  have h111 : 1 ∈ cover ∨ 11 ∈ cover :=
    hcover (show componentAFactorEdge8 1 11 by decide)
  have h810 : 8 ∈ cover ∨ 10 ∈ cover :=
    hcover (show componentAFactorEdge8 8 10 by decide)
  have h913 : 9 ∈ cover ∨ 13 ∈ cover :=
    hcover (show componentAFactorEdge8 9 13 by decide)
  by_cases h0 : 0 ∈ cover
  · by_cases h1 : 1 ∈ cover
    · rcases h810 with h8 | h10
      · rcases h913 with h9 | h13
        · refine ⟨0, ?_⟩
          simpa [componentAG1Cover8, Finset.insert_subset_iff,
            Finset.singleton_subset_iff] using
            (show 0 ∈ cover ∧ 1 ∈ cover ∧ 8 ∈ cover ∧ 9 ∈ cover from
              ⟨h0, h1, h8, h9⟩)
        · refine ⟨1, ?_⟩
          simpa [componentAG1Cover8, Finset.insert_subset_iff,
            Finset.singleton_subset_iff] using
            (show 0 ∈ cover ∧ 1 ∈ cover ∧ 8 ∈ cover ∧ 13 ∈ cover from
              ⟨h0, h1, h8, h13⟩)
      · rcases h913 with h9 | h13
        · refine ⟨2, ?_⟩
          simpa [componentAG1Cover8, Finset.insert_subset_iff,
            Finset.singleton_subset_iff] using
            (show 0 ∈ cover ∧ 1 ∈ cover ∧ 9 ∈ cover ∧ 10 ∈ cover from
              ⟨h0, h1, h9, h10⟩)
        · refine ⟨3, ?_⟩
          simpa [componentAG1Cover8, Finset.insert_subset_iff,
            Finset.singleton_subset_iff] using
            (show 0 ∈ cover ∧ 1 ∈ cover ∧ 10 ∈ cover ∧ 13 ∈ cover from
              ⟨h0, h1, h10, h13⟩)
    · have h5 : 5 ∈ cover := h15.resolve_left h1
      have h10 : 10 ∈ cover := h110.resolve_left h1
      have h11 : 11 ∈ cover := h111.resolve_left h1
      rcases h913 with h9 | h13
      · refine ⟨4, ?_⟩
        simpa [componentAG1Cover8, Finset.insert_subset_iff,
          Finset.singleton_subset_iff] using
          (show 0 ∈ cover ∧ 5 ∈ cover ∧ 9 ∈ cover ∧ 10 ∈ cover ∧
              11 ∈ cover from ⟨h0, h5, h9, h10, h11⟩)
      · refine ⟨5, ?_⟩
        simpa [componentAG1Cover8, Finset.insert_subset_iff,
          Finset.singleton_subset_iff] using
          (show 0 ∈ cover ∧ 5 ∈ cover ∧ 10 ∈ cover ∧ 11 ∈ cover ∧
              13 ∈ cover from ⟨h0, h5, h10, h11, h13⟩)
  · have h5 : 5 ∈ cover := h05.resolve_left h0
    have h13 : 13 ∈ cover := h013.resolve_left h0
    have h14 : 14 ∈ cover := h014.resolve_left h0
    by_cases h1 : 1 ∈ cover
    · rcases h810 with h8 | h10
      · refine ⟨6, ?_⟩
        simpa [componentAG1Cover8, Finset.insert_subset_iff,
          Finset.singleton_subset_iff] using
          (show 1 ∈ cover ∧ 5 ∈ cover ∧ 8 ∈ cover ∧ 13 ∈ cover ∧
              14 ∈ cover from ⟨h1, h5, h8, h13, h14⟩)
      · refine ⟨7, ?_⟩
        simpa [componentAG1Cover8, Finset.insert_subset_iff,
          Finset.singleton_subset_iff] using
          (show 1 ∈ cover ∧ 5 ∈ cover ∧ 10 ∈ cover ∧ 13 ∈ cover ∧
              14 ∈ cover from ⟨h1, h5, h10, h13, h14⟩)
    · have h10 : 10 ∈ cover := h110.resolve_left h1
      have h11 : 11 ∈ cover := h111.resolve_left h1
      refine ⟨8, ?_⟩
      simpa [componentAG1Cover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 5 ∈ cover ∧ 10 ∈ cover ∧ 11 ∈ cover ∧ 13 ∈ cover ∧
            14 ∈ cover from ⟨h5, h10, h11, h13, h14⟩)

theorem componentAG2Cover8_complete
    (cover : Finset (Fin 15))
    (hcover : IsVertexCover componentAFactorEdge8 cover) :
    ∃ b, componentAG2Cover8 b ⊆ cover := by
  rcases hcover (show componentAFactorEdge8 2 7 by decide) with h2 | h7
  · refine ⟨0, ?_⟩
    simpa [componentAG2Cover8, Finset.singleton_subset_iff] using h2
  · refine ⟨1, ?_⟩
    simpa [componentAG2Cover8, Finset.singleton_subset_iff] using h7

theorem componentAG3Cover8_complete
    (cover : Finset (Fin 15))
    (hcover : IsVertexCover componentAFactorEdge8 cover) :
    ∃ c, componentAG3Cover8 c ⊆ cover := by
  have h36 : 3 ∈ cover ∨ 6 ∈ cover :=
    hcover (show componentAFactorEdge8 3 6 by decide)
  have h312 : 3 ∈ cover ∨ 12 ∈ cover :=
    hcover (show componentAFactorEdge8 3 12 by decide)
  have h46 : 4 ∈ cover ∨ 6 ∈ cover :=
    hcover (show componentAFactorEdge8 4 6 by decide)
  by_cases h3 : 3 ∈ cover
  · rcases h46 with h4 | h6
    · refine ⟨0, ?_⟩
      simpa [componentAG3Cover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 3 ∈ cover ∧ 4 ∈ cover from ⟨h3, h4⟩)
    · refine ⟨1, ?_⟩
      simpa [componentAG3Cover8, Finset.insert_subset_iff,
        Finset.singleton_subset_iff] using
        (show 3 ∈ cover ∧ 6 ∈ cover from ⟨h3, h6⟩)
  · have h6 : 6 ∈ cover := h36.resolve_left h3
    have h12 : 12 ∈ cover := h312.resolve_left h3
    refine ⟨2, ?_⟩
    simpa [componentAG3Cover8, Finset.insert_subset_iff,
      Finset.singleton_subset_iff] using
      (show 6 ∈ cover ∧ 12 ∈ cover from ⟨h6, h12⟩)

/-- The 54 recovered rows are exhaustive.  The proof uses the three
connected components of the factor graph and never expands all `2^15`
subsets in one kernel reduction. -/
theorem componentACover8_complete :
    IsCompleteTable componentAFactorEdge8 componentACover8 := by
  intro cover hcover
  obtain ⟨a, ha⟩ := componentAG1Cover8_complete cover hcover
  obtain ⟨b, hb⟩ := componentAG2Cover8_complete cover hcover
  obtain ⟨c, hc⟩ := componentAG3Cover8_complete cover hcover
  refine ⟨componentACoverIndex8 a b c, ?_⟩
  rw [componentACover8_index_eq_union]
  intro v hv
  simp only [Finset.mem_union] at hv
  rcases hv with (hv | hv) | hv
  · exact ha hv
  · exact hb hv
  · exact hc hv

/-- The edge `{2,7}` splits the table into the two nested-face witness
families, and every minimal row contains exactly one of its endpoints. -/
theorem componentACover8_two_xor_seven (i : Fin 54) :
    (2 ∈ componentACover8 i ∧ 7 ∉ componentACover8 i) ∨
      (7 ∈ componentACover8 i ∧ 2 ∉ componentACover8 i) := by
  revert i
  decide

/-- Exactly 27 rows use the `(1213,874)` witness family. -/
theorem componentACover8_witness1213_count :
    (Finset.univ.filter fun i : Fin 54 => 2 ∈ componentACover8 i).card = 27 := by
  decide

/-- Exactly 27 rows use the `(437,65)` witness family. -/
theorem componentACover8_witness437_count :
    (Finset.univ.filter fun i : Fin 54 => 7 ∈ componentACover8 i).card = 27 := by
  decide

/-- Kernel-checked dispatch from the Component A factor products to one of
the 54 recovered zero-factor rows. -/
theorem componentA_zero_factor_dispatch
    (factor : Fin 15 → ℂ)
    (hedge : ∀ ⦃u v⦄, componentAFactorEdge8 u v →
      factor u * factor v = 0) :
    ∃ i, ∀ v ∈ componentACover8 i, factor v = 0 :=
  exists_listed_zero_cover componentAFactorEdge8 factor componentACover8
    componentACover8_complete hedge

end MonochromaticQuantumGraphs.N8D3
