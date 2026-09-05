import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps21

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds077 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p077).Holds x := by
  apply holds_of_combination x hx p076 p037 p077 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h076 h.h037
  decide

theorem holds079 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p079).Holds x := by
  apply holds_of_combination x hx p078 p038 p079 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ h.h078 h.h038
  decide

#print axioms holds079

end MonochromaticQuantumGraphs.N8D3.Candidate129
