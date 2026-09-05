import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps04

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds022 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p022).Holds x := by
  apply holds_of_combination x hx p020 p021 p022 (1) (-1)
    (fun i => if i.val = 51 then (1) else if i.val = 137 then (-1) else 0) (fun i => if i.val = 48 then (1) else if i.val = 137 then (-1) else 0) _ h.h020 h.h021
  decide

theorem holds023 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p023).Holds x := by
  apply holds_of_combination x hx p022 p014 p023 (1) (-1)
    (fun i => if i.val = 87 then (1) else if i.val = 104 then (-1) else 0) (fun i => if i.val = 84 then (1) else if i.val = 104 then (-1) else 0) _ (holds022 x hx h) (holds014 x hx h)
  decide

#print axioms holds023

end MonochromaticQuantumGraphs.N8D3.Candidate129
