import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps23

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds082 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p082).Holds x := by
  apply holds_of_combination x hx p036 p031 p082 (1) (1)
    (fun i => if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 69 then (1) else if i.val = 89 then (-1) else 0) (fun i => if i.val = 129 then (1) else 0) _ (holds036 x hx h) (holds031 x hx h)
  decide

theorem holds083 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p083).Holds x := by
  apply holds_of_combination x hx p027 p040 p083 (1) (1)
    (fun i => if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 70 then (1) else if i.val = 89 then (-1) else 0) (fun i => if i.val = 126 then (1) else 0) _ (holds027 x hx h) (holds040 x hx h)
  decide

#print axioms holds083

end MonochromaticQuantumGraphs.N8D3.Candidate129
