import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps22

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds080 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p080).Holds x := by
  apply holds_of_combination x hx p077 p079 p080 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ (holds077 x hx h) (holds079 x hx h)
  decide

theorem holds081 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p081).Holds x := by
  apply holds_of_combination x hx p063 p080 p081 (1) (-1)
    (fun i => if i.val = 76 then (1) else if i.val = 89 then (-1) else if i.val = 122 then (-1) else 0) (fun i => if i.val = 69 then (1) else if i.val = 89 then (-1) else if i.val = 122 then (-1) else 0) _ (holds063 x hx h) (holds080 x hx h)
  decide

#print axioms holds081

end MonochromaticQuantumGraphs.N8D3.Candidate129
