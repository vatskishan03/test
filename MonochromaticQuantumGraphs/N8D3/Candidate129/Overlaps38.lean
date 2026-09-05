import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps37

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds127 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p127).Holds x := by
  apply holds_of_combination x hx p119 p126 p127 (1) (-1)
    (fun i => if i.val = 89 then (-1) else if i.val = 90 then (1) else 0) (fun i => if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 89 then (-1) else 0) _ (holds119 x hx h) (holds126 x hx h)
  decide

theorem holds129 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p129).Holds x := by
  apply holds_of_combination x hx p128 p107 p129 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h128 h.h107
  decide

#print axioms holds129

end MonochromaticQuantumGraphs.N8D3.Candidate129
