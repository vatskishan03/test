import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps15

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds058 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p058).Holds x := by
  apply holds_of_combination x hx p052 p057 p058 (1) (-1)
    (fun i => if i.val = 77 then (1) else if i.val = 89 then (-1) else if i.val = 97 then (-1) else 0) (fun i => if i.val = 69 then (1) else if i.val = 89 then (-1) else if i.val = 97 then (-1) else 0) _ (holds052 x hx h) (holds057 x hx h)
  decide

theorem holds060 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p060).Holds x := by
  apply holds_of_combination x hx p059 p025 p060 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h059 h.h025
  decide

#print axioms holds060

end MonochromaticQuantumGraphs.N8D3.Candidate129
