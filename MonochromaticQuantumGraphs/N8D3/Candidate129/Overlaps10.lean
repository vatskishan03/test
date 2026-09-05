import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps09

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds040 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p040).Holds x := by
  apply holds_of_combination x hx p036 p039 p040 (-1) (1)
    (fun i => if i.val = 11 then (1) else if i.val = 20 then (-1) else if i.val = 119 then (-1) else 0) (fun i => if i.val = 9 then (1) else if i.val = 20 then (-1) else if i.val = 119 then (-1) else 0) _ (holds036 x hx h) (holds039 x hx h)
  decide

theorem holds041 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p041).Holds x := by
  apply holds_of_combination x hx p040 p032 p041 (1) (-1)
    (fun i => if i.val = 57 then (1) else if i.val = 90 then (1) else 0) (fun i => if i.val = 9 then (1) else if i.val = 76 then (1) else 0) _ (holds040 x hx h) (holds032 x hx h)
  decide

#print axioms holds041

end MonochromaticQuantumGraphs.N8D3.Candidate129
