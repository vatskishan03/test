import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps05

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds024 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p024).Holds x := by
  apply holds_of_combination x hx p023 p018 p024 (1) (-1)
    (fun i => if i.val = 58 then (1) else if i.val = 90 then (1) else 0) (fun i => if i.val = 57 then (1) else if i.val = 87 then (1) else 0) _ (holds023 x hx h) (holds018 x hx h)
  decide

theorem holds027 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p027).Holds x := by
  apply holds_of_combination x hx p025 p026 p027 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h025 h.h026
  decide

#print axioms holds027

end MonochromaticQuantumGraphs.N8D3.Candidate129
