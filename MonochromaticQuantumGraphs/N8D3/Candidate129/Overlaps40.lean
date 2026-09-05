import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps39

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds136 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p136).Holds x := by
  apply holds_of_combination x hx p134 p135 p136 (-1) (1)
    (fun i => if i.val = 90 then (1) else 0) (fun i => if i.val = 89 then (1) else 0) _ h.h134 h.h135
  decide

theorem holds137 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p137).Holds x := by
  apply holds_of_combination x hx p133 p136 p137 (-1) (1)
    (fun i => if i.val = 7 then (1) else if i.val = 52 then (-1) else if i.val = 69 then (-1) else 0) (fun i => if i.val = 1 then (1) else if i.val = 52 then (-1) else if i.val = 69 then (-1) else 0) _ (holds133 x hx h) (holds136 x hx h)
  decide

#print axioms holds137

end MonochromaticQuantumGraphs.N8D3.Candidate129
