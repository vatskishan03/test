import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Basis.Row000
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Basis.Row001
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Basis.Row002
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Basis.Row003
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Basis.Row004
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Basis.Row005

/-! Decision-free 437/65 basis collector -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Decision-free collection of all frozen basis rows. -/
theorem terminalA437_65BasisRow8_eq_frozen (i : Fin 6) :
    terminalA437_65BasisRow8 i = ![
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 51 (1 : ℤ) + Pi.single 52 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 108 ((-1) : ℤ) + Pi.single 109 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 111 ((-1) : ℤ) + Pi.single 112 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 114 ((-1) : ℤ) + Pi.single 115 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 138 ((-1) : ℤ) + Pi.single 141 (1 : ℤ)), signExponent := 0 }
  ] i := by
  change terminalA437_65BasisRow8 i = terminalA437_65FrozenBasisRow8 i
  fin_cases i
  · exact terminalA437_65BasisRow8_eq_frozen_row000
  · exact terminalA437_65BasisRow8_eq_frozen_row001
  · exact terminalA437_65BasisRow8_eq_frozen_row002
  · exact terminalA437_65BasisRow8_eq_frozen_row003
  · exact terminalA437_65BasisRow8_eq_frozen_row004
  · exact terminalA437_65BasisRow8_eq_frozen_row005

/-- Every provenance-tagged raw row is a member of class 7. -/
theorem terminalA437_65RawFactorId8_mem (r : Fin 1) :
    terminalA437_65RawFactorId8 r ∈ tropicalComponentAClassMembers8 7 := by
  fin_cases r
  · exact terminalA437_65RawFactorId8_mem_row000

/-- An all-zero class supplies exactly the declared terminal basis. -/
theorem terminalA437_65BasisRow8_holds
    {W : WeightsN 8 3 ℂ}
    (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 7) :
    ∀ i, (terminalA437_65BasisRow8 i).Holds (tropicalSupportWeight8 W) := by
  have hraw : ∀ r : Fin 1,
      (tropicalComponentARawFactor8 (terminalA437_65RawFactorId8 r)).Holds
        (tropicalSupportWeight8 W) := by
    intro r
    exact rawCharacter_holds_of_allZeroInClass
      (tropicalSupportWeight8 W) tropicalComponentAClassMembers8
      tropicalComponentARawFactor8 hzero (terminalA437_65RawFactorId8_mem r)
  intro i
  exact FactorBasisSource.row_holds
    (tropicalSupportWeight8 W) tropicalComponentACharacter8
    (fun r ↦ tropicalComponentARawFactor8 (terminalA437_65RawFactorId8 r))
    hChars hraw (terminalA437_65BasisSource8 i)

end

end MonochromaticQuantumGraphs.N8D3
