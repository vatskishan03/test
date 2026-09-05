import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportCoordinates

/-! Complete matching-sum bridge from the official equations to finite Laurent lists. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraph MonochromaticQuantumGraphs.LaurentList
open scoped BigOperators

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem eval_termPolynomial (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (indices : Option (List (Fin 143))) :
    (toPolynomial (termPolynomial indices)).eval x =
      match indices with
      | none => 0
      | some ids => (ids.map x).prod := by
  cases indices with
  | none => simp [termPolynomial]
  | some ids =>
    simp [termPolynomial, eval_exponentOfVariables x hx]

theorem pmTerm_eq_eval (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (q : Fin 8 → Fin 3) (m : Fin 105) :
    pmTerm8 W q m =
      (toPolynomial (termPolynomial (matchingVariables q m))).eval (supportWeight W) := by
  rw [eval_termPolynomial _ (supportWeight_ne_zero W h)]
  simp only [pmTerm8, Fin.prod_univ_four]
  simp only [← matchingPairs_eq]
  rw [matching_weight_eq_lookup W h q m 0,
    matching_weight_eq_lookup W h q m 1,
    matching_weight_eq_lookup W h q m 2,
    matching_weight_eq_lookup W h q m 3]
  unfold matchingVariables
  repeat' split <;> simp_all [mul_assoc]

/-- The complete official sum agrees with a supplied 105-entry table only
after every matching entry has been checked. No numerical sparsity claim is
used to omit terms. -/
theorem pmSum_eq_eval_table (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (q : Fin 8 → Fin 3) (table : Fin 105 → Option (List (Fin 143)))
    (htable : ∀ m, matchingVariables q m = table m) :
    pmSumN 8 3 W q = (toPolynomial (tablePolynomial table)).eval (supportWeight W) := by
  rw [pmSumN8_eq_sum_pmTerm8, tablePolynomial, LaurentList.eval_sum]
  apply Finset.sum_congr rfl
  intro m _
  rw [pmTerm_eq_eval W h, htable]

theorem table_holds_of_equations (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) (q : Fin 8 → Fin 3)
    (hq : ¬ allEqual q) (table : Fin 105 → Option (List (Fin 143)))
    (htable : ∀ m, matchingVariables q m = table m) :
    (toPolynomial (tablePolynomial table)).Holds (supportWeight W) := by
  unfold LaurentPolynomial.Holds
  rw [← pmSum_eq_eval_table W h q table htable]
  simpa [hq] using hW q

end MonochromaticQuantumGraphs.N8D3.Candidate129
