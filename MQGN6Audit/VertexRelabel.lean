import MQGN6Audit.VertexRelabelScratch
import MQGN6Audit.UniqueObstruction

/-!
# Arbitrary vertex relabeling

The matching action was found reflectively and certified over all 720
permutations in `VertexRelabelScratch`.  Here we refine it to the three edge
slots, prove equivariance of every matching monomial and of `pmSumN`, and
transport selected target matchings through a vertex permutation.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function
open scoped BigOperators

noncomputable section

/-- Canonical ordering of an unordered vertex pair. -/
def orderedPair6 (u v : Fin 6) : Fin 6 × Fin 6 :=
  if u < v then (u, v) else (v, u)

/-- Image of one matching edge under a vertex permutation, canonically ordered. -/
def permutedMatchingEdge6 (π : Equiv.Perm (Fin 6))
    (m : Fin 15) (k : Fin 3) : Fin 6 × Fin 6 :=
  let e := matchingEdges6 m k
  orderedPair6 (π e.1) (π e.2)

/-- Locate the image of edge slot `k` in the transported matching. -/
def matchingSlotAction6 (π : Equiv.Perm (Fin 6))
    (m : Fin 15) (k : Fin 3) : Fin 3 :=
  ((List.ofFn fun n : Fin 3 => n).find?
      (fun n => decide
        (matchingEdges6 (matchingAction6 π m) n = permutedMatchingEdge6 π m k))).getD 0

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem matchingSlotAction6_spec :
    ∀ (π : Equiv.Perm (Fin 6)) (m : Fin 15) (k : Fin 3),
      matchingEdges6 (matchingAction6 π m) (matchingSlotAction6 π m k) =
        permutedMatchingEdge6 π m k := by
  native_decide

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem matchingSlotAction6_bijective :
    ∀ (π : Equiv.Perm (Fin 6)) (m : Fin 15),
      Function.Bijective (matchingSlotAction6 π m) := by
  native_decide

/-- The three edge slots are permuted bijectively. -/
def matchingSlotEquiv6 (π : Equiv.Perm (Fin 6)) (m : Fin 15) : Fin 3 ≃ Fin 3 :=
  Equiv.ofBijective (matchingSlotAction6 π m) (matchingSlotAction6_bijective π m)

/-- Vertex permutations act bijectively on the fifteen perfect matchings. -/
def matchingActionEquiv6 (π : Equiv.Perm (Fin 6)) : Fin 15 ≃ Fin 15 where
  toFun := matchingAction6 π
  invFun := matchingAction6 π.symm
  left_inv := matchingAction6_inverse π
  right_inv := matchingAction6_inverse π.symm

/-- Relabel a weight system by sending each new vertex `u` to the old vertex
`π u`. -/
def relabelVertices6 (π : Equiv.Perm (Fin 6)) (W : WeightsN 6 4 ℂ) :
    WeightsN 6 4 ℂ :=
  fun e => orientedWeight6 W (π e.u) (π e.v) e.i e.j

/-- The corresponding coloring on old vertices. -/
def relabelVertexColoring6 (π : Equiv.Perm (Fin 6))
    (q : Fin 6 → Fin 4) : Fin 6 → Fin 4 :=
  fun v => q (π.symm v)

lemma relabelVertices6_matching_factor
    (π : Equiv.Perm (Fin 6)) (W : WeightsN 6 4 ℂ)
    (q : Fin 6 → Fin 4) (m : Fin 15) (k : Fin 3) :
    let e := matchingEdges6 m k
    let k' := matchingSlotAction6 π m k
    let e' := matchingEdges6 (matchingAction6 π m) k'
    relabelVertices6 π W (mkEdge e.1 e.2 (q e.1) (q e.2)) =
      W (mkEdge e'.1 e'.2
        (relabelVertexColoring6 π q e'.1)
        (relabelVertexColoring6 π q e'.2)) := by
  dsimp
  have hslot := matchingSlotAction6_spec π m k
  have hlt := matchingEdges6_lt m k
  rw [hslot]
  unfold permutedMatchingEdge6 orderedPair6
  dsimp
  by_cases hπ : π (matchingEdges6 m k).1 < π (matchingEdges6 m k).2
  · simp [relabelVertices6, relabelVertexColoring6,
      MonochromaticQuantumGraph.mkEdge, hlt, hπ, orientedWeight6]
  · have hne : π (matchingEdges6 m k).2 ≠ π (matchingEdges6 m k).1 := by
      intro heq
      have := π.injective heq.symm
      exact (matchingEdges6_lt m k).ne this
    have hrev : π (matchingEdges6 m k).2 < π (matchingEdges6 m k).1 :=
      lt_of_le_of_ne (le_of_not_gt hπ) hne
    simp [relabelVertices6, relabelVertexColoring6,
      MonochromaticQuantumGraph.mkEdge, hlt, hπ, hrev, orientedWeight6]

lemma pmTerm6_relabelVertices6
    (π : Equiv.Perm (Fin 6)) (W : WeightsN 6 4 ℂ)
    (q : Fin 6 → Fin 4) (m : Fin 15) :
    pmTerm6 (relabelVertices6 π W) q m =
      pmTerm6 W (relabelVertexColoring6 π q) (matchingAction6 π m) := by
  let F : Fin 3 → ℂ := fun k =>
    let e := matchingEdges6 m k
    relabelVertices6 π W (mkEdge e.1 e.2 (q e.1) (q e.2))
  let G : Fin 3 → ℂ := fun k =>
    let e := matchingEdges6 (matchingAction6 π m) k
    W (mkEdge e.1 e.2
      (relabelVertexColoring6 π q e.1)
      (relabelVertexColoring6 π q e.2))
  change (∏ k, F k) = ∏ k, G k
  calc
    (∏ k, F k) = ∏ k, G (matchingSlotEquiv6 π m k) := by
      apply Fintype.prod_congr
      intro k
      simpa [F, G, matchingSlotEquiv6] using
        relabelVertices6_matching_factor π W q m k
    _ = ∏ k, G k := (matchingSlotEquiv6 π m).prod_comp G

lemma pmSumN_relabelVertices6
    (π : Equiv.Perm (Fin 6)) (W : WeightsN 6 4 ℂ)
    (q : Fin 6 → Fin 4) :
    pmSumN 6 4 (relabelVertices6 π W) q =
      pmSumN 6 4 W (relabelVertexColoring6 π q) := by
  rw [pmSumN6_eq_sum_pmTerm6, pmSumN6_eq_sum_pmTerm6]
  simp_rw [pmTerm6_relabelVertices6]
  exact (matchingActionEquiv6 π).sum_comp
    (fun m => pmTerm6 W (relabelVertexColoring6 π q) m)

lemma allEqual_relabelVertexColoring6
    (π : Equiv.Perm (Fin 6)) (q : Fin 6 → Fin 4) :
    allEqual (relabelVertexColoring6 π q) ↔ allEqual q := by
  rw [allEqual6_iff, allEqual6_iff]
  constructor
  · rintro ⟨c, hc⟩
    exact ⟨c, fun v => by simpa [relabelVertexColoring6] using hc (π v)⟩
  · rintro ⟨c, hc⟩
    exact ⟨c, fun v => hc (π.symm v)⟩

lemma eqSystem_relabelVertices6
    (π : Equiv.Perm (Fin 6)) (W : WeightsN 6 4 ℂ)
    (hW : EqSystemN 6 4 W) :
    EqSystemN 6 4 (relabelVertices6 π W) := by
  intro q
  rw [pmSumN_relabelVertices6]
  simpa [allEqual_relabelVertexColoring6] using
    hW (relabelVertexColoring6 π q)

/-- A product of the three selected target factors is nonzero. -/
lemma target_pmTerm6_ne_zero
    {W : WeightsN 6 4 ℂ} (target : Fin 4 → Fin 15)
    (htarget : ∀ c k,
      let e := matchingEdges6 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0) (c : Fin 4) :
    pmTerm6 W (monoColoring6 c) (target c) ≠ 0 := by
  unfold pmTerm6
  rw [Finset.prod_ne_zero_iff]
  intro k _
  simpa [monoColoring6] using htarget c k

/-- The target matching on new vertices whose image is the old target matching. -/
def relabelTargetVertices6 (π : Equiv.Perm (Fin 6))
    (target : Fin 4 → Fin 15) : Fin 4 → Fin 15 :=
  fun c => matchingAction6 π.symm (target c)

lemma relabelTargetVertices6_action
    (π : Equiv.Perm (Fin 6)) (target : Fin 4 → Fin 15) (c : Fin 4) :
    matchingAction6 π (relabelTargetVertices6 π target c) = target c := by
  exact matchingAction6_inverse π.symm (target c)

lemma target_nonzero_relabelVertices6
    {W : WeightsN 6 4 ℂ} (π : Equiv.Perm (Fin 6))
    (target : Fin 4 → Fin 15)
    (htarget : ∀ c k,
      let e := matchingEdges6 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0) :
    ∀ c k,
      let e := matchingEdges6 (relabelTargetVertices6 π target c) k
      relabelVertices6 π W (mkEdge e.1 e.2 c c) ≠ 0 := by
  intro c k
  have hold : pmTerm6 W (monoColoring6 c) (target c) ≠ 0 :=
    target_pmTerm6_ne_zero target htarget c
  have hnew :
      pmTerm6 (relabelVertices6 π W) (monoColoring6 c)
        (relabelTargetVertices6 π target c) ≠ 0 := by
    rw [pmTerm6_relabelVertices6]
    simpa [relabelVertexColoring6, monoColoring6,
      relabelTargetVertices6_action] using hold
  simpa [monoColoring6] using pmTerm6_factor_ne_zero hnew k

/-- Transport a full target-data package through a vertex permutation. -/
theorem exists_axisTargetData6_relabelVertices
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (target : Fin 4 → Fin 15)
    (htarget : ∀ c k,
      let e := matchingEdges6 (target c) k
      W (mkEdge e.1 e.2 c c) ≠ 0)
    (π : Equiv.Perm (Fin 6)) :
    Nonempty (AxisTargetData6 (relabelVertices6 π W)) := by
  have hWr := eqSystem_relabelVertices6 π W hW
  obtain ⟨P⟩ := exists_axisPlan6 (relabelVertices6 π W) hWr
  let target' := relabelTargetVertices6 π target
  have htarget' := target_nonzero_relabelVertices6 π target htarget
  exact ⟨⟨P, target', htarget', axisPlan_target_compatible P target' htarget'⟩⟩

end

end MQGN6Audit
