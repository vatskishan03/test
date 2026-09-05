import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps06

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds030 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p030).Holds x := by
  apply holds_of_combination x hx p028 p029 p030 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h028 h.h029
  decide

theorem holds031 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p031).Holds x := by
  apply holds_of_combination x hx p027 p030 p031 (-1) (1)
    (fun i => if i.val = 11 then (1) else if i.val = 20 then (-1) else if i.val = 119 then (-1) else 0) (fun i => if i.val = 9 then (1) else if i.val = 20 then (-1) else if i.val = 119 then (-1) else 0) _ (holds027 x hx h) (holds030 x hx h)
  decide

#print axioms holds031

end MonochromaticQuantumGraphs.N8D3.Candidate129
