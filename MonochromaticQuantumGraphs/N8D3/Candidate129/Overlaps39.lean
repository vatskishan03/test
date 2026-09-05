import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps38

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds130 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p130).Holds x := by
  apply holds_of_combination x hx p051 p129 p130 (-1) (1)
    (fun i => if i.val = 7 then (1) else if i.val = 51 then (-1) else 0) (fun i => if i.val = 1 then (1) else if i.val = 51 then (-1) else 0) _ (holds051 x hx h) (holds129 x hx h)
  decide

theorem holds133 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p133).Holds x := by
  apply holds_of_combination x hx p131 p132 p133 (-1) (1)
    (fun i => if i.val = 90 then (1) else 0) (fun i => if i.val = 89 then (1) else 0) _ h.h131 h.h132
  decide

#print axioms holds133

end MonochromaticQuantumGraphs.N8D3.Candidate129
