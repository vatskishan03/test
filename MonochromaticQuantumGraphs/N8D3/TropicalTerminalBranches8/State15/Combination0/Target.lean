import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State15.Combination0.Data

/-! Sparse target equality for `terminalBState15Combination0`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBState15Combination0TargetExplicit8 :
    (-1 : ℤ) • terminalBState15SplitRelation0_8 = (Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  simp [terminalBState15SplitRelation0_8] <;> abel

theorem terminalBState15Combination0TargetEq8 :
    (∑ k : Fin 8,
      Finsupp.single (terminalBState15Combination0ReductionUse8 k).targetExponent
      (signedCoefficient (terminalBState15Combination0ReductionUse8 k).reduction.signExponent
          (terminalBState15Combination0ReductionUse8 k).coefficient)) = (-1 : ℤ) • terminalBState15SplitRelation0_8 := by
  rw [terminalBState15Combination0TargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBState15Combination0ReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
