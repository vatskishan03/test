import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps42

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds143 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p143).Holds x := by
  apply holds_of_combination x hx p020 p142 p143 (1) (-1)
    (fun i => if i.val = 15 then (1) else 0) (fun i => if i.val = 9 then (1) else 0) _ h.h020 h.h142
  decide

theorem holds144 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p144).Holds x := by
  apply holds_of_combination x hx p140 p143 p144 (1) (1)
    (fun i => if i.val = 57 then (1) else if i.val = 104 then (1) else if i.val = 137 then (1) else 0) (fun i => if i.val = 49 then (1) else if i.val = 138 then (1) else 0) _ (holds140 x hx h) (holds143 x hx h)
  decide

#print axioms holds144

end MonochromaticQuantumGraphs.N8D3.Candidate129
