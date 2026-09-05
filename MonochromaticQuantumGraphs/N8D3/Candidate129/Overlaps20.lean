import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps19

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds071 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p071).Holds x := by
  apply holds_of_combination x hx p070 p037 p071 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h070 h.h037
  decide

theorem holds073 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p073).Holds x := by
  apply holds_of_combination x hx p072 p038 p073 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h072 h.h038
  decide

#print axioms holds073

end MonochromaticQuantumGraphs.N8D3.Candidate129
