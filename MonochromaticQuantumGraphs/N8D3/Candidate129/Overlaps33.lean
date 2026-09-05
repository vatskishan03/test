import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps32

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds109 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p109).Holds x := by
  apply holds_of_combination x hx p060 p108 p109 (-1) (1)
    (fun i => if i.val = 7 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ (holds060 x hx h) (holds108 x hx h)
  decide

theorem holds110 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p110).Holds x := by
  apply holds_of_combination x hx p085 p028 p110 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h085 h.h028
  decide

#print axioms holds110

end MonochromaticQuantumGraphs.N8D3.Candidate129
