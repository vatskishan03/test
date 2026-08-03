import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Left.Data

/-! Sparse source equality for `terminalBClass7NestedLeft`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass7NestedLeftSourceExplicit8 :
    tropicalTerminalRelation65_8 = (Finsupp.single (Pi.single (31 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (28 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (21 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (91 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  calc
    tropicalTerminalRelation65_8 = tropicalTerminalExplicitRelation8 0 :=
      tropicalTerminalRelation65_8_explicit
    _ = (Finsupp.single (Pi.single (31 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (28 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (21 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (91 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
      change (Finsupp.single (Pi.single (31 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (28 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (21 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (91 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) = (Finsupp.single (Pi.single (31 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (28 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (21 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (91 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144))
      rfl

theorem terminalBClass7NestedLeftSourceEq8 :
    (∑ k : Fin 9,
      Finsupp.single (terminalBClass7NestedLeftReductionUse8 k).sourceExponent
        (terminalBClass7NestedLeftReductionUse8 k).coefficient) = tropicalTerminalRelation65_8 := by
  rw [terminalBClass7NestedLeftSourceExplicit8]
  simp only [Fin.sum_univ_succ, terminalBClass7NestedLeftReductionUse8] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
