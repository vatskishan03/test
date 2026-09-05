import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps40

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds138 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p138).Holds x := by
  apply holds_of_combination x hx p130 p137 p138 (1) (-1)
    (fun i => if i.val = 89 then (-1) else if i.val = 90 then (1) else 0) (fun i => if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 89 then (-1) else 0) _ (holds130 x hx h) (holds137 x hx h)
  decide

theorem holds139 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p139).Holds x := by
  apply holds_of_combination x hx p025 p117 p139 (-1) (1)
    (fun i => if i.val = 6 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h025 h.h117
  decide

#print axioms holds139

end MonochromaticQuantumGraphs.N8D3.Candidate129
