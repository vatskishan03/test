import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps03

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds018 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p018).Holds x := by
  apply holds_of_combination x hx p014 p017 p018 (1) (-1)
    (fun i => if i.val = 90 then (1) else if i.val = 104 then (-1) else 0) (fun i => if i.val = 87 then (1) else if i.val = 104 then (-1) else 0) _ (holds014 x hx h) (holds017 x hx h)
  decide

theorem holds019 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p019).Holds x := by
  apply holds_of_combination x hx p018 p010 p019 (1) (-1)
    (fun i => if i.val = 63 then (1) else if i.val = 87 then (1) else 0) (fun i => if i.val = 58 then (1) else if i.val = 90 then (1) else 0) _ (holds018 x hx h) (holds010 x hx h)
  decide

#print axioms holds019

end MonochromaticQuantumGraphs.N8D3.Candidate129
