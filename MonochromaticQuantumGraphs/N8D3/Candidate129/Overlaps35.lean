import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps34

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds115 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p115).Holds x := by
  apply holds_of_combination x hx p109 p114 p115 (1) (-1)
    (fun i => if i.val = 75 then (1) else if i.val = 89 then (-1) else if i.val = 91 then (-1) else if i.val = 122 then (-1) else 0) (fun i => if i.val = 69 then (1) else if i.val = 89 then (-1) else if i.val = 91 then (-1) else if i.val = 122 then (-1) else 0) _ (holds109 x hx h) (holds114 x hx h)
  decide

theorem holds118 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p118).Holds x := by
  apply holds_of_combination x hx p116 p117 p118 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h116 h.h117
  decide

#print axioms holds118

end MonochromaticQuantumGraphs.N8D3.Candidate129
