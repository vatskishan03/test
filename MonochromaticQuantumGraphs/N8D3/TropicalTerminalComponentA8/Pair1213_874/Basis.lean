import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row000
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row001
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row002
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row003
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row004
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row005
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row006
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row007
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row008
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row009
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row010
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row011
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row012
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row013
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row014
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row015
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row016
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row017
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row018
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row019
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row020
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row021
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row022
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row023
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row024
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row025
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row026
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row027
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row028
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row029
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis.Row030

/-! Decision-free 1213/874 basis collector -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Decision-free collection of all frozen basis rows. -/
theorem terminalA1213_874BasisRow8_eq_frozen (i : Fin 31) :
    terminalA1213_874BasisRow8 i = ![
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 51 (1 : ℤ) + Pi.single 52 ((-1) : ℤ) + Pi.single 139 ((-1) : ℤ) + Pi.single 142 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 108 ((-1) : ℤ) + Pi.single 109 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 111 ((-1) : ℤ) + Pi.single 112 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 48 (1 : ℤ) + Pi.single 49 ((-1) : ℤ) + Pi.single 114 ((-1) : ℤ) + Pi.single 115 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 86 (1 : ℤ) + Pi.single 87 ((-1) : ℤ) + Pi.single 101 ((-1) : ℤ) + Pi.single 104 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 86 (1 : ℤ) + Pi.single 87 ((-1) : ℤ) + Pi.single 102 ((-1) : ℤ) + Pi.single 105 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 85 (1 : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 98 ((-1) : ℤ) + Pi.single 101 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 85 (1 : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 99 ((-1) : ℤ) + Pi.single 102 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 85 (1 : ℤ) + Pi.single 87 ((-1) : ℤ) + Pi.single 98 ((-1) : ℤ) + Pi.single 104 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 85 (1 : ℤ) + Pi.single 87 ((-1) : ℤ) + Pi.single 99 ((-1) : ℤ) + Pi.single 105 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 75 (1 : ℤ) + Pi.single 76 ((-1) : ℤ) + Pi.single 126 ((-1) : ℤ) + Pi.single 129 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 69 (1 : ℤ) + Pi.single 70 ((-1) : ℤ) + Pi.single 126 ((-1) : ℤ) + Pi.single 129 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 99 (1 : ℤ) + Pi.single 105 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 104 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 89 (1 : ℤ) + Pi.single 99 (1 : ℤ) + Pi.single 102 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 89 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 101 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 88 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 102 (1 : ℤ) + Pi.single 105 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 101 (1 : ℤ) + Pi.single 104 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 64 (1 : ℤ) + Pi.single 65 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 89 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 99 (1 : ℤ) + Pi.single 105 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 104 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 89 (1 : ℤ) + Pi.single 99 (1 : ℤ) + Pi.single 102 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 89 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 101 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 85 ((-1) : ℤ) + Pi.single 88 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 102 (1 : ℤ) + Pi.single 105 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 90 (1 : ℤ) + Pi.single 101 (1 : ℤ) + Pi.single 104 ((-1) : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 58 (1 : ℤ) + Pi.single 59 ((-1) : ℤ) + Pi.single 86 ((-1) : ℤ) + Pi.single 89 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 1 (1 : ℤ) + Pi.single 7 ((-1) : ℤ) + Pi.single 9 ((-1) : ℤ) + Pi.single 15 (1 : ℤ)), signExponent := 0 },
    { exponent := (Pi.single 1 (1 : ℤ) + Pi.single 7 ((-1) : ℤ) + Pi.single 11 ((-1) : ℤ) + Pi.single 17 (1 : ℤ)), signExponent := 0 }
  ] i := by
  change terminalA1213_874BasisRow8 i = terminalA1213_874FrozenBasisRow8 i
  fin_cases i
  · exact terminalA1213_874BasisRow8_eq_frozen_row000
  · exact terminalA1213_874BasisRow8_eq_frozen_row001
  · exact terminalA1213_874BasisRow8_eq_frozen_row002
  · exact terminalA1213_874BasisRow8_eq_frozen_row003
  · exact terminalA1213_874BasisRow8_eq_frozen_row004
  · exact terminalA1213_874BasisRow8_eq_frozen_row005
  · exact terminalA1213_874BasisRow8_eq_frozen_row006
  · exact terminalA1213_874BasisRow8_eq_frozen_row007
  · exact terminalA1213_874BasisRow8_eq_frozen_row008
  · exact terminalA1213_874BasisRow8_eq_frozen_row009
  · exact terminalA1213_874BasisRow8_eq_frozen_row010
  · exact terminalA1213_874BasisRow8_eq_frozen_row011
  · exact terminalA1213_874BasisRow8_eq_frozen_row012
  · exact terminalA1213_874BasisRow8_eq_frozen_row013
  · exact terminalA1213_874BasisRow8_eq_frozen_row014
  · exact terminalA1213_874BasisRow8_eq_frozen_row015
  · exact terminalA1213_874BasisRow8_eq_frozen_row016
  · exact terminalA1213_874BasisRow8_eq_frozen_row017
  · exact terminalA1213_874BasisRow8_eq_frozen_row018
  · exact terminalA1213_874BasisRow8_eq_frozen_row019
  · exact terminalA1213_874BasisRow8_eq_frozen_row020
  · exact terminalA1213_874BasisRow8_eq_frozen_row021
  · exact terminalA1213_874BasisRow8_eq_frozen_row022
  · exact terminalA1213_874BasisRow8_eq_frozen_row023
  · exact terminalA1213_874BasisRow8_eq_frozen_row024
  · exact terminalA1213_874BasisRow8_eq_frozen_row025
  · exact terminalA1213_874BasisRow8_eq_frozen_row026
  · exact terminalA1213_874BasisRow8_eq_frozen_row027
  · exact terminalA1213_874BasisRow8_eq_frozen_row028
  · exact terminalA1213_874BasisRow8_eq_frozen_row029
  · exact terminalA1213_874BasisRow8_eq_frozen_row030

/-- Every provenance-tagged raw row is a member of class 2. -/
theorem terminalA1213_874RawFactorId8_mem (r : Fin 26) :
    terminalA1213_874RawFactorId8 r ∈ tropicalComponentAClassMembers8 2 := by
  fin_cases r
  · exact terminalA1213_874RawFactorId8_mem_row000
  · exact terminalA1213_874RawFactorId8_mem_row001
  · exact terminalA1213_874RawFactorId8_mem_row002
  · exact terminalA1213_874RawFactorId8_mem_row003
  · exact terminalA1213_874RawFactorId8_mem_row004
  · exact terminalA1213_874RawFactorId8_mem_row005
  · exact terminalA1213_874RawFactorId8_mem_row006
  · exact terminalA1213_874RawFactorId8_mem_row007
  · exact terminalA1213_874RawFactorId8_mem_row008
  · exact terminalA1213_874RawFactorId8_mem_row009
  · exact terminalA1213_874RawFactorId8_mem_row010
  · exact terminalA1213_874RawFactorId8_mem_row011
  · exact terminalA1213_874RawFactorId8_mem_row012
  · exact terminalA1213_874RawFactorId8_mem_row013
  · exact terminalA1213_874RawFactorId8_mem_row014
  · exact terminalA1213_874RawFactorId8_mem_row015
  · exact terminalA1213_874RawFactorId8_mem_row016
  · exact terminalA1213_874RawFactorId8_mem_row017
  · exact terminalA1213_874RawFactorId8_mem_row018
  · exact terminalA1213_874RawFactorId8_mem_row019
  · exact terminalA1213_874RawFactorId8_mem_row020
  · exact terminalA1213_874RawFactorId8_mem_row021
  · exact terminalA1213_874RawFactorId8_mem_row022
  · exact terminalA1213_874RawFactorId8_mem_row023
  · exact terminalA1213_874RawFactorId8_mem_row024
  · exact terminalA1213_874RawFactorId8_mem_row025

/-- An all-zero class supplies exactly the declared terminal basis. -/
theorem terminalA1213_874BasisRow8_holds
    {W : WeightsN 8 3 ℂ}
    (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 2) :
    ∀ i, (terminalA1213_874BasisRow8 i).Holds (tropicalSupportWeight8 W) := by
  have hraw : ∀ r : Fin 26,
      (tropicalComponentARawFactor8 (terminalA1213_874RawFactorId8 r)).Holds
        (tropicalSupportWeight8 W) := by
    intro r
    exact rawCharacter_holds_of_allZeroInClass
      (tropicalSupportWeight8 W) tropicalComponentAClassMembers8
      tropicalComponentARawFactor8 hzero (terminalA1213_874RawFactorId8_mem r)
  intro i
  exact FactorBasisSource.row_holds
    (tropicalSupportWeight8 W) tropicalComponentACharacter8
    (fun r ↦ tropicalComponentARawFactor8 (terminalA1213_874RawFactorId8 r))
    hChars hraw (terminalA1213_874BasisSource8 i)

end

end MonochromaticQuantumGraphs.N8D3
