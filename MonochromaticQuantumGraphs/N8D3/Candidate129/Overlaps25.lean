import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps24

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds084 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p084).Holds x := by
  apply holds_of_combination x hx p044 p031 p084 (1) (1)
    (fun i => if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 69 then (1) else if i.val = 89 then (-1) else 0) (fun i => if i.val = 132 then (1) else 0) _ (holds044 x hx h) (holds031 x hx h)
  decide

theorem holds086 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p086).Holds x := by
  apply holds_of_combination x hx p059 p085 p086 (-1) (1)
    (fun i => if i.val = 11 then (1) else 0) (fun i => if i.val = 9 then (1) else 0) _ h.h059 h.h085
  decide

#print axioms holds086

end MonochromaticQuantumGraphs.N8D3.Candidate129
