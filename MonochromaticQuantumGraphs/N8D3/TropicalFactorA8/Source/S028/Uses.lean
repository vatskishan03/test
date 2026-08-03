import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S028.Monomial.M00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S028.Monomial.M01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S028.Monomial.M02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S028.Monomial.M03
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S028.Monomial.M04
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S028.Monomial.M05

/-!
# Component-A source reduction 28: use vector
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source028

def use :
    Fin 6 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      reduction := monomial00 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (109 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      reduction := monomial01 },
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      reduction := monomial02 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      reduction := monomial03 },
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      reduction := monomial04 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (76 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      reduction := monomial05 }
]

end TropicalFactorA8.Internal.Source028

end

end MonochromaticQuantumGraphs.N8D3
