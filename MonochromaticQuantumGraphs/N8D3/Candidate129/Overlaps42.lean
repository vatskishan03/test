import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps41

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds140 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p140).Holds x := by
  apply holds_of_combination x hx p139 p122 p140 (-1) (1)
    (fun i => if i.val = 38 then (-1) else if i.val = 49 then (1) else if i.val = 89 then (-1) else 0) (fun i => if i.val = 38 then (-1) else if i.val = 48 then (1) else if i.val = 89 then (-1) else 0) _ (holds139 x hx h) (holds122 x hx h)
  decide

theorem holds141 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p141).Holds x := by
  apply holds_of_combination x hx p122 p140 p141 (1) (-1)
    (fun i => if i.val = 48 then (1) else if i.val = 89 then (-1) else if i.val = 141 then (1) else 0) (fun i => if i.val = 49 then (1) else if i.val = 126 then (1) else 0) _ (holds122 x hx h) (holds140 x hx h)
  decide

#print axioms holds141

end MonochromaticQuantumGraphs.N8D3.Candidate129
