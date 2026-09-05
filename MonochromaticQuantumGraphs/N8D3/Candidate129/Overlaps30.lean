import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps29

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds099 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p099).Holds x := by
  apply holds_of_combination x hx p086 p098 p099 (-1) (1)
    (fun i => if i.val = 1 then (1) else if i.val = 18 then (-1) else if i.val = 137 then (1) else 0) (fun i => if i.val = 0 then (1) else if i.val = 18 then (-1) else if i.val = 138 then (1) else 0) _ (holds086 x hx h) (holds098 x hx h)
  decide

theorem holds101 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p101).Holds x := by
  apply holds_of_combination x hx p012 p100 p101 (1) (-1)
    (fun i => if i.val = 48 then (-1) else if i.val = 139 then (1) else 0) (fun i => if i.val = 48 then (-1) else if i.val = 138 then (1) else 0) _ h.h012 h.h100
  decide

#print axioms holds101

end MonochromaticQuantumGraphs.N8D3.Candidate129
