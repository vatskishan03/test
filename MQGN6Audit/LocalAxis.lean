import MQGN6Audit.Contraction

/-!
# A local coordinate axis forced by `EqSystemN 6 4`

The contraction identity specializes the abstract global-axis theorem to the
five edge-weight matrices incident to vertex zero.  The final theorem is stated
directly in the coordinates of `WeightsN 6 4 ℂ`.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph

noncomputable section

@[simp] lemma incidentMap6_basis4
    (W : WeightsN 6 4 ℂ) (u : Fin 5) (i j : Fin 4) :
    incidentMap6 W u (basis4 i) j = W (mkEdge 0 u.succ i j) := by
  simp [incidentMap6, basis4]

/-- For every color `c`, one nonzero edge matrix incident to vertex zero has
its entire image in the `c`-coordinate axis. -/
theorem local_axis_map6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) (c : Fin 4) :
    ∃ u : Fin 5, incidentMap6 W u ≠ 0 ∧
      ∀ x j, j ≠ c → incidentMap6 W u x j = 0 := by
  exact exists_fixed_axis_map (incidentMap6 W) (hdiag_from_eqSystem6 W hW) c

/-- Weight-level local-axis theorem for a putative `n = 6`, `d = 4`
monochromatic quantum graph.  For every prescribed color `c`, some edge from
vertex zero has a nonzero entry in column `c`, while every other column of that
edge-weight matrix is zero. -/
theorem local_axis_weights6
    (W : WeightsN 6 4 ℂ) (hW : EqSystemN 6 4 W) (c : Fin 4) :
    ∃ u : Fin 5,
      (∃ i : Fin 4, W (mkEdge 0 u.succ i c) ≠ 0) ∧
      ∀ i j, j ≠ c → W (mkEdge 0 u.succ i j) = 0 := by
  obtain ⟨u, hmap, haxis⟩ := local_axis_map6 W hW c
  refine ⟨u, ?_, ?_⟩
  · by_contra h
    push_neg at h
    apply hmap
    apply LinearMap.ext
    intro x
    funext j
    by_cases hj : j = c
    · subst j
      simp [incidentMap6, h]
    · simpa using haxis x j hj
  · intro i j hj
    have hzero := haxis (basis4 i) j hj
    simpa using hzero

end

end MQGN6Audit
