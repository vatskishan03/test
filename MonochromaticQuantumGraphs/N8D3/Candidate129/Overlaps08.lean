import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps07

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds032 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p032).Holds x := by
  apply holds_of_combination x hx p022 p017 p032 (1) (-1)
    (fun i => if i.val = 90 then (1) else if i.val = 104 then (-1) else 0) (fun i => if i.val = 84 then (1) else if i.val = 104 then (-1) else 0) _ (holds022 x hx h) (holds017 x hx h)
  decide

theorem holds033 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p033).Holds x := by
  apply holds_of_combination x hx p031 p032 p033 (1) (-1)
    (fun i => if i.val = 57 then (1) else if i.val = 90 then (1) else 0) (fun i => if i.val = 9 then (1) else if i.val = 75 then (1) else 0) _ (holds031 x hx h) (holds032 x hx h)
  decide

#print axioms holds033

end MonochromaticQuantumGraphs.N8D3.Candidate129
