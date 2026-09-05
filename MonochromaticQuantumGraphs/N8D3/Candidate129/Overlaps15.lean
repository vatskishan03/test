import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps14

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds056 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p056).Holds x := by
  apply holds_of_combination x hx p055 p046 p056 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h055 h.h046
  decide

theorem holds057 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p057).Holds x := by
  apply holds_of_combination x hx p054 p056 p057 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ (holds054 x hx h) (holds056 x hx h)
  decide

#print axioms holds057

end MonochromaticQuantumGraphs.N8D3.Candidate129
