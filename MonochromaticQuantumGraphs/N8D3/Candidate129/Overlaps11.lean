import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps10

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds044 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p044).Holds x := by
  apply holds_of_combination x hx p042 p043 p044 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h042 h.h043
  decide

theorem holds047 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p047).Holds x := by
  apply holds_of_combination x hx p045 p046 p047 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h045 h.h046
  decide

#print axioms holds047

end MonochromaticQuantumGraphs.N8D3.Candidate129
