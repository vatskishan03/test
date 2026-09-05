import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps25

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds087 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p087).Holds x := by
  apply holds_of_combination x hx p020 p007 p087 (-1) (1)
    (fun i => if i.val = 11 then (1) else 0) (fun i => if i.val = 9 then (1) else 0) _ h.h020 h.h007
  decide

theorem holds088 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p088).Holds x := by
  apply holds_of_combination x hx p087 p086 p088 (1) (-1)
    (fun i => if i.val = 18 then (-1) else if i.val = 48 then (-1) else if i.val = 138 then (1) else 0) (fun i => if i.val = 18 then (-1) else if i.val = 48 then (-1) else if i.val = 137 then (1) else 0) _ (holds087 x hx h) (holds086 x hx h)
  decide

#print axioms holds088

end MonochromaticQuantumGraphs.N8D3.Candidate129
