import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps18

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds068 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p068).Holds x := by
  apply holds_of_combination x hx p065 p067 p068 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ (holds065 x hx h) (holds067 x hx h)
  decide

theorem holds069 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p069).Holds x := by
  apply holds_of_combination x hx p063 p068 p069 (1) (-1)
    (fun i => if i.val = 77 then (1) else if i.val = 89 then (-1) else if i.val = 122 then (-1) else 0) (fun i => if i.val = 69 then (1) else if i.val = 89 then (-1) else if i.val = 122 then (-1) else 0) _ (holds063 x hx h) (holds068 x hx h)
  decide

#print axioms holds069

end MonochromaticQuantumGraphs.N8D3.Candidate129
