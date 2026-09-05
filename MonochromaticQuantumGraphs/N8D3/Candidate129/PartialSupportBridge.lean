import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportData
import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge

/-!
# Partial-support certificate projection

The original Laurent certificate can be evaluated with every unused support
variable replaced by one. The actual graph need only satisfy the selected
zero and nonzero conditions. Every required matching is checked to be killed
by a selected zero or to use only selected nonzero coordinates. Consequently
all other canonical coordinates, including coordinates outside the original
support, are unrestricted. No assumption of exact support is made here.
-/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraph MonochromaticQuantumGraphs.LaurentList
open scoped BigOperators

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

structure PartialSupport (W : WeightsN 8 3 ℂ) : Prop where
  nonzero : ∀ g, coreNonzero g = true → W (globalEdge g) ≠ 0
  zero : ∀ g, coreZero g = true → W (globalEdge g) = 0

def partialWeight (W : WeightsN 8 3 ℂ) (i : Fin 143) : ℂ :=
  if coreNonzero (supportGlobal i) then supportWeight W i else 1

theorem partialWeight_ne_zero (W : WeightsN 8 3 ℂ) (h : PartialSupport W) :
    ∀ i, partialWeight W i ≠ 0 := by
  intro i
  unfold partialWeight
  split_ifs with hi
  · exact h.nonzero (supportGlobal i) hi
  · exact one_ne_zero

theorem core_weight_eq_lookup (W : WeightsN 8 3 ℂ) (g : Fin 252)
    (h : coreNonzero g = true) :
    W (globalEdge g) =
      match localIndex g with
      | none => 0
      | some i => partialWeight W i := by
  have hs := coreNonzero_supported g h
  cases hi : localIndex g with
  | none => simp [hi] at hs
  | some i =>
    have hg : supportGlobal i = g := by
      simpa [hi] using lookup_backward g
    simp [partialWeight, supportWeight, hg, h]

theorem core_pmTerm_eq_eval (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (q : Fin 8 → Fin 3) (hq : CoreCompatible q) (m : Fin 105) :
    pmTerm8 W q m =
      (toPolynomial (termPolynomial (matchingVariables q m))).eval (partialWeight W) := by
  rcases hq m with ⟨k, hk⟩ | hn
  · have hi := coreZero_unsupported _ hk
    rw [matchingVariables_none_of_lookup_none q m k hi]
    rw [eval_termPolynomial _ (partialWeight_ne_zero W h)]
    unfold pmTerm8
    apply Finset.prod_eq_zero (Finset.mem_univ k)
    rw [← matchingPairs_eq]
    dsimp only
    rw [← globalEdge_coordinate (matching_edge_lt m k)]
    exact h.zero (matchingCoordinate q m k) hk
  · rw [eval_termPolynomial _ (partialWeight_ne_zero W h)]
    have he (k : Fin 4) :
        let e := matchingPairs m k
        W (mkEdge e.1 e.2 (q e.1) (q e.2)) =
          match localIndex (matchingCoordinate q m k) with
          | none => 0
          | some i => partialWeight W i := by
      dsimp
      rw [← globalEdge_coordinate (matching_edge_lt m k)]
      exact core_weight_eq_lookup W _ (hn k)
    simp only [pmTerm8, Fin.prod_univ_four, ← matchingPairs_eq]
    rw [he 0, he 1, he 2, he 3]
    unfold matchingVariables matchingCoordinate
    repeat' split <;> simp_all [mul_assoc]

theorem core_pmSum_eq_eval_table (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (q : Fin 8 → Fin 3) (hq : CoreCompatible q)
    (table : Fin 105 → Option (List (Fin 143)))
    (htable : ∀ m, matchingVariables q m = table m) :
    pmSumN 8 3 W q = (toPolynomial (tablePolynomial table)).eval (partialWeight W) := by
  rw [pmSumN8_eq_sum_pmTerm8, tablePolynomial, LaurentList.eval_sum]
  apply Finset.sum_congr rfl
  intro m _
  rw [core_pmTerm_eq_eval W h q hq, htable]

theorem core_table_holds_of_equations (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) (q : Fin 8 → Fin 3) (hq : ¬ allEqual q)
    (hc : CoreCompatible q) (table : Fin 105 → Option (List (Fin 143)))
    (htable : ∀ m, matchingVariables q m = table m) :
    (toPolynomial (tablePolynomial table)).Holds (partialWeight W) := by
  unfold LaurentPolynomial.Holds
  rw [← core_pmSum_eq_eval_table W h q hc table htable]
  simpa [hq] using hW q

#print axioms core_pmSum_eq_eval_table

end MonochromaticQuantumGraphs.N8D3.Candidate129
