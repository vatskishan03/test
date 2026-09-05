import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps27

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds093 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p093).Holds x := by
  apply holds_of_combination x hx p018 p092 p093 (-1) (1)
    (fun i => if i.val = 1 then (1) else if i.val = 114 then (1) else if i.val = 125 then (1) else 0) (fun i => if i.val = 0 then (1) else if i.val = 51 then (1) else 0) _ (holds018 x hx h) (holds092 x hx h)
  decide

theorem holds096 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p096).Holds x := by
  apply holds_of_combination x hx p094 p095 p096 (1) (-1)
    (fun i => if i.val = 90 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h094 h.h095
  decide

#print axioms holds096

end MonochromaticQuantumGraphs.N8D3.Candidate129
