import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S095.Monomial.M00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S095.Monomial.M01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S095.Monomial.M02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S095.Monomial.M03
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S095.Monomial.M04
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S095.Monomial.M05

/-!
# Source 95 reduction-use collector
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source095

/-- Decision-free collector of row-local monomial certificates. -/
def uses : Fin 6 →
    CharacterReductionUse tropicalComponentBCharacter8 :=
![
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)),
      reduction := monomial00 },
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)),
      reduction := monomial01 },
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)),
      reduction := monomial02 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)),
      reduction := monomial03 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)),
      reduction := monomial04 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)),
      reduction := monomial05 }
]

end TropicalFactorB8.Internal.Source095

end

end MonochromaticQuantumGraphs.N8D3
