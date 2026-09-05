import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps33

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds113 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p113).Holds x := by
  apply holds_of_combination x hx p111 p112 p113 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h111 h.h112
  decide

theorem holds114 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p114).Holds x := by
  apply holds_of_combination x hx p110 p113 p114 (-1) (1)
    (fun i => if i.val = 7 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ (holds110 x hx h) (holds113 x hx h)
  decide

#print axioms holds114

end MonochromaticQuantumGraphs.N8D3.Candidate129
