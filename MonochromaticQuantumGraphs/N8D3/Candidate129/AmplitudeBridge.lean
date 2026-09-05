import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportCoordinates

/-! Evaluation of a matching's finite Laurent-list term; support transfer is in PartialSupportBridge. -/

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


end MonochromaticQuantumGraphs.N8D3.Candidate129
