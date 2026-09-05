import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportData

/-! Exact agreement with the official matching table and support-local weights. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraph

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Every one of the 420 ordered edge entries agrees with the existing official
table. The existing table and its proof are not regenerated or replaced. -/
theorem matchingPairs_eq (m : Fin 105) (k : Fin 4) :
    matchingPairs m k = matchingEdges8 m k := by
  revert m k
  decide

theorem globalEdge_coordinate {u v : Fin 8} (huv : u < v) (a b : Fin 3) :
    globalEdge (coordinate u v a b) = mkEdge u v a b := by
  simp [globalEdge, decodeCoordinate_coordinate huv]

theorem supportWeight_ne_zero (W : WeightsN 8 3 ℂ) (h : ExactSupport W) :
    ∀ i, supportWeight W i ≠ 0 := by
  intro i
  apply (h (supportGlobal i)).2
  rw [lookup_forward]
  rfl

theorem weight_eq_lookup (W : WeightsN 8 3 ℂ) (h : ExactSupport W) (g : Fin 252) :
    W (globalEdge g) =
      match localIndex g with
      | none => 0
      | some i => supportWeight W i := by
  cases hi : localIndex g with
  | none =>
    simp only
    by_contra hn
    have hs := (h g).1 hn
    simp [hi] at hs
  | some i =>
    have hb : supportGlobal i = g := by
      simpa [hi] using lookup_backward g
    simp only [supportWeight, hb]

theorem matching_weight_eq_lookup (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (q : Fin 8 → Fin 3) (m : Fin 105) (k : Fin 4) :
    let e := matchingPairs m k
    W (mkEdge e.1 e.2 (q e.1) (q e.2)) =
      match localIndex (coordinate e.1 e.2 (q e.1) (q e.2)) with
      | none => 0
      | some i => supportWeight W i := by
  dsimp
  rw [← globalEdge_coordinate (matching_edge_lt m k)]
  exact weight_eq_lookup W h _

end MonochromaticQuantumGraphs.N8D3.Candidate129
