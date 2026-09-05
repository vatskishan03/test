import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps20

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds074 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p074).Holds x := by
  apply holds_of_combination x hx p071 p073 p074 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ (holds071 x hx h) (holds073 x hx h)
  decide

theorem holds075 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p075).Holds x := by
  apply holds_of_combination x hx p052 p074 p075 (1) (-1)
    (fun i => if i.val = 76 then (1) else if i.val = 89 then (-1) else if i.val = 97 then (-1) else 0) (fun i => if i.val = 69 then (1) else if i.val = 89 then (-1) else if i.val = 97 then (-1) else 0) _ (holds052 x hx h) (holds074 x hx h)
  decide

#print axioms holds075

end MonochromaticQuantumGraphs.N8D3.Candidate129
