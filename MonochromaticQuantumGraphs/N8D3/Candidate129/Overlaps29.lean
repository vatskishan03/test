import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps28

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds097 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p097).Holds x := by
  apply holds_of_combination x hx p018 p096 p097 (-1) (1)
    (fun i => if i.val = 7 then (1) else if i.val = 114 then (1) else if i.val = 125 then (1) else 0) (fun i => if i.val = 0 then (1) else if i.val = 51 then (1) else 0) _ (holds018 x hx h) (holds096 x hx h)
  decide

theorem holds098 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p098).Holds x := by
  apply holds_of_combination x hx p021 p008 p098 (-1) (1)
    (fun i => if i.val = 11 then (1) else 0) (fun i => if i.val = 9 then (1) else 0) _ h.h021 h.h008
  decide

#print axioms holds098

end MonochromaticQuantumGraphs.N8D3.Candidate129
