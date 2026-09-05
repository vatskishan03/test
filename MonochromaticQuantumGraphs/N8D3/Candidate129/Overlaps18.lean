import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps17

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds065 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p065).Holds x := by
  apply holds_of_combination x hx p064 p045 p065 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h064 h.h045
  decide

theorem holds067 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p067).Holds x := by
  apply holds_of_combination x hx p066 p046 p067 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h066 h.h046
  decide

#print axioms holds067

end MonochromaticQuantumGraphs.N8D3.Candidate129
