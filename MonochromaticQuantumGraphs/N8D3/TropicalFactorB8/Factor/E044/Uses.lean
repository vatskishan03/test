import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E044.Monomial.M00
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E044.Monomial.M01
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E044.Monomial.M02
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E044.Monomial.M03

/-!
# Factor 44 reduction-use collector
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor044

/-- Decision-free collector of row-local monomial certificates. -/
def uses : Fin 4 →
    CharacterReductionUse tropicalComponentBCharacter8 :=
![
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)),
      reduction := monomial00 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (142 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (142 : Fin 144) (1 : ℤ)),
      reduction := monomial01 },
  { coefficient := (-1 : ℤ),
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)),
      reduction := monomial02 },
  { coefficient := (1 : ℤ),
      sourceExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (142 : Fin 144) (1 : ℤ)),
      targetExponent := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (142 : Fin 144) (1 : ℤ)),
      reduction := monomial03 }
]

end TropicalFactorB8.Internal.Factor044

end

end MonochromaticQuantumGraphs.N8D3
