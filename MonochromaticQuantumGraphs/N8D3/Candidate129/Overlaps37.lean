import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps36

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds125 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p125).Holds x := by
  apply holds_of_combination x hx p123 p124 p125 (-1) (1)
    (fun i => if i.val = 6 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h123 h.h124
  decide

theorem holds126 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p126).Holds x := by
  apply holds_of_combination x hx p122 p125 p126 (-1) (1)
    (fun i => if i.val = 49 then (-1) else if i.val = 69 then (-1) else if i.val = 90 then (1) else 0) (fun i => if i.val = 49 then (-1) else if i.val = 69 then (-1) else if i.val = 89 then (1) else 0) _ (holds122 x hx h) (holds125 x hx h)
  decide

#print axioms holds126

end MonochromaticQuantumGraphs.N8D3.Candidate129
