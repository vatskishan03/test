import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps12

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds050 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p050).Holds x := by
  apply holds_of_combination x hx p012 p025 p050 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h012 h.h025
  decide

theorem holds051 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p051).Holds x := by
  apply holds_of_combination x hx p013 p026 p051 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h013 h.h026
  decide

#print axioms holds051

end MonochromaticQuantumGraphs.N8D3.Candidate129
