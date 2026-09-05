import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps11

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds048 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p048).Holds x := by
  apply holds_of_combination x hx p044 p047 p048 (-1) (1)
    (fun i => if i.val = 11 then (1) else if i.val = 20 then (-1) else if i.val = 119 then (-1) else 0) (fun i => if i.val = 9 then (1) else if i.val = 20 then (-1) else if i.val = 119 then (-1) else 0) _ (holds044 x hx h) (holds047 x hx h)
  decide

theorem holds049 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p049).Holds x := by
  apply holds_of_combination x hx p048 p032 p049 (1) (-1)
    (fun i => if i.val = 57 then (1) else if i.val = 90 then (1) else 0) (fun i => if i.val = 9 then (1) else if i.val = 77 then (1) else 0) _ (holds048 x hx h) (holds032 x hx h)
  decide

#print axioms holds049

end MonochromaticQuantumGraphs.N8D3.Candidate129
