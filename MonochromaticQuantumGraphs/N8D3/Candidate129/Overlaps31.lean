import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps30

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds103 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p103).Holds x := by
  apply holds_of_combination x hx p000 p102 p103 (1) (-1)
    (fun i => if i.val = 48 then (-1) else if i.val = 139 then (1) else 0) (fun i => if i.val = 48 then (-1) else if i.val = 138 then (1) else 0) _ h.h000 h.h102
  decide

theorem holds104 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p104).Holds x := by
  apply holds_of_combination x hx p101 p103 p104 (-1) (1)
    (fun i => if i.val = 11 then (1) else if i.val = 19 then (-1) else 0) (fun i => if i.val = 9 then (1) else if i.val = 19 then (-1) else 0) _ (holds101 x hx h) (holds103 x hx h)
  decide

#print axioms holds104

end MonochromaticQuantumGraphs.N8D3.Candidate129
