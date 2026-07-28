import MQGN6Audit.LocalAxis

/-!
# Vertex-symmetric local-axis forcing on `K₆`

The first local-axis theorem is stated at vertex zero, matching the recursive
presentation of `pmSumN`.  This file proves the required equivariance under the
transposition `0 ↔ v`, transports the theorem to an arbitrary vertex, and
packages the four color witnesses as an injection into the five neighbours.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function

noncomputable section

/-- Read an undirected edge in the orientation `u → v`.  When the canonical
endpoint order is reversed, the endpoint colors are reversed as well. -/
def orientedWeight6 (W : WeightsN 6 4 ℂ) (u v : Fin 6) (i j : Fin 4) : ℂ :=
  if u < v then W (mkEdge u v i j) else W (mkEdge v u j i)

/-- The transposition carrying vertex zero to `v`. -/
def swapZero6 (v : Fin 6) : Equiv.Perm (Fin 6) := Equiv.swap 0 v

/-- Relabel the vertices of a weight system by `0 ↔ v`, preserving the local
orientation of endpoint colors. -/
def relabelWeight6 (v : Fin 6) (W : WeightsN 6 4 ℂ) : WeightsN 6 4 ℂ :=
  fun e => orientedWeight6 W (swapZero6 v e.u) (swapZero6 v e.v) e.i e.j

/-- The corresponding pullback of a vertex coloring. -/
def relabelColoring6 (v : Fin 6) (ι : Fin 6 → Fin 4) : Fin 6 → Fin 4 :=
  fun u => ι (swapZero6 v u)

lemma allEqual_relabelColoring6 (v : Fin 6) (ι : Fin 6 → Fin 4) :
    allEqual (relabelColoring6 v ι) ↔ allEqual ι := by
  rw [allEqual6_iff, allEqual6_iff]
  constructor
  · rintro ⟨c, hc⟩
    refine ⟨c, ?_⟩
    intro u
    simpa [relabelColoring6, swapZero6] using hc (swapZero6 v u)
  · rintro ⟨c, hc⟩
    exact ⟨c, fun u => hc (swapZero6 v u)⟩

/-- The explicit six-vertex perfect-matching polynomial is equivariant under
swapping vertex zero with any vertex. -/
lemma pmSumN_relabelWeight6 (v : Fin 6) (W : WeightsN 6 4 ℂ)
    (ι : Fin 6 → Fin 4) :
    pmSumN 6 4 (relabelWeight6 v W) ι =
      pmSumN 6 4 W (relabelColoring6 v ι) := by
  set_option maxHeartbeats 2000000 in
    fin_cases v <;>
      simp [relabelWeight6, relabelColoring6, swapZero6, orientedWeight6,
        pmSumN, pmSumList, pmSumListAux, vertices, Equiv.swap_apply_def,
        MonochromaticQuantumGraph.mkEdge] <;>
      ring_nf

lemma eqSystem_relabelWeight6 (v : Fin 6) (W : WeightsN 6 4 ℂ)
    (hW : EqSystemN 6 4 W) :
    EqSystemN 6 4 (relabelWeight6 v W) := by
  intro ι
  rw [pmSumN_relabelWeight6]
  simpa [allEqual_relabelColoring6] using hW (relabelColoring6 v ι)

/-- The old vertex corresponding to the positive new label `u.succ`. -/
def swappedNeighbor6 (v : Fin 6) (u : Fin 5) : Fin 6 :=
  swapZero6 v u.succ

lemma swappedNeighbor6_ne (v : Fin 6) (u : Fin 5) : swappedNeighbor6 v u ≠ v := by
  intro h
  have h' : swapZero6 v u.succ = swapZero6 v 0 := by
    simpa [swappedNeighbor6, swapZero6] using h
  have hu : u.succ = (0 : Fin 6) := (swapZero6 v).injective h'
  exact Fin.succ_ne_zero u hu

@[simp] lemma relabelWeight6_zero_succ (v : Fin 6) (W : WeightsN 6 4 ℂ)
    (u : Fin 5) (i j : Fin 4) :
    relabelWeight6 v W (mkEdge 0 u.succ i j) =
      orientedWeight6 W v (swappedNeighbor6 v u) i j := by
  simp [relabelWeight6, swappedNeighbor6, swapZero6,
    MonochromaticQuantumGraph.mkEdge]

/-- An edge `v—u` is an axis witness for color `c` when it is nonzero in output
color `c` and has no output in any other color. -/
def AxisWitness6 (W : WeightsN 6 4 ℂ) (v : Fin 6) (c : Fin 4) (u : Fin 6) : Prop :=
  u ≠ v ∧
    (∃ i : Fin 4, orientedWeight6 W v u i c ≠ 0) ∧
    ∀ i j, j ≠ c → orientedWeight6 W v u i j = 0

/-- The weight-level local-axis theorem transported to an arbitrary vertex. -/
theorem local_axis_weights6_at
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W)
    (v : Fin 6) (c : Fin 4) :
    ∃ u : Fin 6, AxisWitness6 W v c u := by
  have hWr : EqSystemN 6 4 (relabelWeight6 v W) :=
    eqSystem_relabelWeight6 v W hW
  obtain ⟨u, hnonzero, hzero⟩ := local_axis_weights6 (relabelWeight6 v W) hWr c
  refine ⟨swappedNeighbor6 v u, swappedNeighbor6_ne v u, ?_, ?_⟩
  · obtain ⟨i, hi⟩ := hnonzero
    exact ⟨i, by simpa using hi⟩
  · intro i j hj
    simpa using hzero i j hj

lemma axisWitness6_color_unique
    {W : WeightsN 6 4 ℂ} {v u : Fin 6} {c d : Fin 4}
    (hc : AxisWitness6 W v c u) (hd : AxisWitness6 W v d u) : c = d := by
  by_contra hcd
  obtain ⟨i, hi⟩ := hd.2.1
  exact hi (hc.2.2 i d (Ne.symm hcd))

/-- At every vertex, the four colors admit four distinct witness neighbours. -/
theorem exists_axis_witness_injection6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) (v : Fin 6) :
    ∃ f : Fin 4 → Fin 6, Function.Injective f ∧
      ∀ c, AxisWitness6 W v c (f c) := by
  choose f hf using fun c => local_axis_weights6_at W hW v c
  refine ⟨f, ?_, hf⟩
  intro c d hfd
  have hd : AxisWitness6 W v d (f c) := by
    rw [hfd]
    exact hf d
  exact axisWitness6_color_unique (hf c) hd

end

end MQGN6Audit
