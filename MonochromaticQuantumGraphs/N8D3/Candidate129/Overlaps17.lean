import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps16

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds062 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p062).Holds x := by
  apply holds_of_combination x hx p061 p026 p062 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h061 h.h026
  decide

theorem holds063 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p063).Holds x := by
  apply holds_of_combination x hx p060 p062 p063 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ (holds060 x hx h) (holds062 x hx h)
  decide

#print axioms holds063

end MonochromaticQuantumGraphs.N8D3.Candidate129
