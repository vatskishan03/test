import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps35

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds119 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p119).Holds x := by
  apply holds_of_combination x hx p050 p118 p119 (-1) (1)
    (fun i => if i.val = 6 then (1) else if i.val = 48 then (-1) else 0) (fun i => if i.val = 0 then (1) else if i.val = 48 then (-1) else 0) _ (holds050 x hx h) (holds118 x hx h)
  decide

theorem holds122 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p122).Holds x := by
  apply holds_of_combination x hx p120 p121 p122 (-1) (1)
    (fun i => if i.val = 6 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h120 h.h121
  decide

#print axioms holds122

end MonochromaticQuantumGraphs.N8D3.Candidate129
