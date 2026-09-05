import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps31

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds105 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p105).Holds x := by
  apply holds_of_combination x hx p099 p104 p105 (1) (1)
    (fun i => if i.val = 123 then (1) else 0) (fun i => if i.val = 0 then (1) else if i.val = 51 then (1) else if i.val = 121 then (1) else 0) _ (holds099 x hx h) (holds104 x hx h)
  decide

theorem holds108 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p108).Holds x := by
  apply holds_of_combination x hx p106 p107 p108 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h106 h.h107
  decide

#print axioms holds108

end MonochromaticQuantumGraphs.N8D3.Candidate129
