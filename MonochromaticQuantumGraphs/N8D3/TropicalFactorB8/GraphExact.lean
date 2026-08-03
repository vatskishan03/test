import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor

/-!
# Exact raw/class graph quotient

Each row is checked separately so the 49-by-49 finite equality is not one
monolithic kernel reduction.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

private theorem tropicalComponentBRawFactorEdge8_row00
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 0 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 0)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row01
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 1 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 1)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row02
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 2 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 2)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row03
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 3 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 3)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row04
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 4 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 4)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row05
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 5 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 5)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row06
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 6 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 6)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row07
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 7 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 7)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row08
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 8 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 8)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row09
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 9 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 9)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row10
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 10 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 10)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row11
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 11 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 11)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row12
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 12 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 12)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row13
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 13 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 13)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row14
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 14 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 14)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row15
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 15 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 15)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row16
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 16 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 16)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row17
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 17 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 17)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row18
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 18 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 18)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row19
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 19 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 19)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row20
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 20 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 20)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row21
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 21 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 21)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row22
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 22 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 22)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row23
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 23 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 23)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row24
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 24 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 24)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row25
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 25 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 25)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row26
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 26 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 26)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row27
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 27 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 27)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row28
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 28 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 28)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row29
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 29 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 29)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row30
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 30 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 30)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row31
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 31 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 31)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row32
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 32 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 32)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row33
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 33 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 33)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row34
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 34 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 34)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row35
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 35 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 35)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row36
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 36 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 36)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row37
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 37 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 37)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row38
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 38 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 38)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row39
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 39 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 39)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row40
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 40 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 40)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row41
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 41 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 41)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row42
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 42 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 42)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row43
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 43 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 43)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row44
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 44 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 44)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row45
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 45 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 45)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row46
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 46 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 46)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row47
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 47 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 47)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentBRawFactorEdge8_row48
    (s : Fin 49) :
    tropicalComponentBRawFactorEdge8 48 s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 48)
        (tropicalComponentBRawFactorClass8 s) := by
  revert s
  decide

/-- The class graph is the exact adjacency quotient of the 59 raw edges. -/
theorem tropicalComponentBRawFactorEdge8_iff_classEdge
    (r s : Fin 49) :
    tropicalComponentBRawFactorEdge8 r s ↔
      componentBFactorEdge8
        (tropicalComponentBRawFactorClass8 r)
        (tropicalComponentBRawFactorClass8 s) := by
  fin_cases r
  · exact tropicalComponentBRawFactorEdge8_row00 s
  · exact tropicalComponentBRawFactorEdge8_row01 s
  · exact tropicalComponentBRawFactorEdge8_row02 s
  · exact tropicalComponentBRawFactorEdge8_row03 s
  · exact tropicalComponentBRawFactorEdge8_row04 s
  · exact tropicalComponentBRawFactorEdge8_row05 s
  · exact tropicalComponentBRawFactorEdge8_row06 s
  · exact tropicalComponentBRawFactorEdge8_row07 s
  · exact tropicalComponentBRawFactorEdge8_row08 s
  · exact tropicalComponentBRawFactorEdge8_row09 s
  · exact tropicalComponentBRawFactorEdge8_row10 s
  · exact tropicalComponentBRawFactorEdge8_row11 s
  · exact tropicalComponentBRawFactorEdge8_row12 s
  · exact tropicalComponentBRawFactorEdge8_row13 s
  · exact tropicalComponentBRawFactorEdge8_row14 s
  · exact tropicalComponentBRawFactorEdge8_row15 s
  · exact tropicalComponentBRawFactorEdge8_row16 s
  · exact tropicalComponentBRawFactorEdge8_row17 s
  · exact tropicalComponentBRawFactorEdge8_row18 s
  · exact tropicalComponentBRawFactorEdge8_row19 s
  · exact tropicalComponentBRawFactorEdge8_row20 s
  · exact tropicalComponentBRawFactorEdge8_row21 s
  · exact tropicalComponentBRawFactorEdge8_row22 s
  · exact tropicalComponentBRawFactorEdge8_row23 s
  · exact tropicalComponentBRawFactorEdge8_row24 s
  · exact tropicalComponentBRawFactorEdge8_row25 s
  · exact tropicalComponentBRawFactorEdge8_row26 s
  · exact tropicalComponentBRawFactorEdge8_row27 s
  · exact tropicalComponentBRawFactorEdge8_row28 s
  · exact tropicalComponentBRawFactorEdge8_row29 s
  · exact tropicalComponentBRawFactorEdge8_row30 s
  · exact tropicalComponentBRawFactorEdge8_row31 s
  · exact tropicalComponentBRawFactorEdge8_row32 s
  · exact tropicalComponentBRawFactorEdge8_row33 s
  · exact tropicalComponentBRawFactorEdge8_row34 s
  · exact tropicalComponentBRawFactorEdge8_row35 s
  · exact tropicalComponentBRawFactorEdge8_row36 s
  · exact tropicalComponentBRawFactorEdge8_row37 s
  · exact tropicalComponentBRawFactorEdge8_row38 s
  · exact tropicalComponentBRawFactorEdge8_row39 s
  · exact tropicalComponentBRawFactorEdge8_row40 s
  · exact tropicalComponentBRawFactorEdge8_row41 s
  · exact tropicalComponentBRawFactorEdge8_row42 s
  · exact tropicalComponentBRawFactorEdge8_row43 s
  · exact tropicalComponentBRawFactorEdge8_row44 s
  · exact tropicalComponentBRawFactorEdge8_row45 s
  · exact tropicalComponentBRawFactorEdge8_row46 s
  · exact tropicalComponentBRawFactorEdge8_row47 s
  · exact tropicalComponentBRawFactorEdge8_row48 s

end

end MonochromaticQuantumGraphs.N8D3
