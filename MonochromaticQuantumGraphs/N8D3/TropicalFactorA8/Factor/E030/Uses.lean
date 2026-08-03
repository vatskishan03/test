import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E030.Monomial.M00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E030.Monomial.M01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E030.Monomial.M02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E030.Monomial.M03

/-!
# Component-A factor edge 30: reduction-use vector
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor030

def use :
    Fin 4 → CharacterReductionUse tropicalComponentACharacter8 :=
![
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      reduction := monomial00 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)),
      reduction := monomial01 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      reduction := monomial02 },
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (102 : Fin 144) (1 : ℤ) +
        Pi.single (141 : Fin 144) (1 : ℤ)),
      reduction := monomial03 }
]

end TropicalFactorA8.Internal.Factor030

end

end MonochromaticQuantumGraphs.N8D3
