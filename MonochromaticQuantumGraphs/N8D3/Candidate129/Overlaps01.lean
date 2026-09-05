import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps00

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds006 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p006).Holds x := by
  apply holds_of_combination x hx p002 p005 p006 (1) (-1)
    (fun i => if i.val = 90 then (1) else if i.val = 104 then (-1) else 0) (fun i => if i.val = 87 then (1) else if i.val = 104 then (-1) else 0) _ (holds002 x hx h) (holds005 x hx h)
  decide

theorem holds009 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p009).Holds x := by
  apply holds_of_combination x hx p007 p008 p009 (1) (-1)
    (fun i => if i.val = 51 then (1) else if i.val = 137 then (-1) else 0) (fun i => if i.val = 48 then (1) else if i.val = 137 then (-1) else 0) _ h.h007 h.h008
  decide

#print axioms holds009

end MonochromaticQuantumGraphs.N8D3.Candidate129
