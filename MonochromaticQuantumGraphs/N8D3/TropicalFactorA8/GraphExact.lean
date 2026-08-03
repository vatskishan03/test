import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Data

/-!
# Exact raw/class graph quotient

Each row is checked separately so the 59-by-59 finite equality is not one
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

private theorem tropicalComponentARawFactorEdge8_row00
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 0 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 0)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row01
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 1 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 1)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row02
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 2 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 2)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row03
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 3 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 3)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row04
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 4 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 4)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row05
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 5 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 5)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row06
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 6 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 6)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row07
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 7 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 7)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row08
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 8 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 8)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row09
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 9 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 9)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row10
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 10 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 10)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row11
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 11 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 11)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row12
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 12 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 12)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row13
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 13 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 13)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row14
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 14 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 14)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row15
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 15 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 15)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row16
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 16 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 16)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row17
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 17 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 17)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row18
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 18 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 18)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row19
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 19 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 19)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row20
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 20 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 20)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row21
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 21 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 21)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row22
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 22 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 22)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row23
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 23 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 23)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row24
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 24 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 24)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row25
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 25 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 25)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row26
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 26 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 26)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row27
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 27 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 27)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row28
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 28 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 28)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row29
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 29 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 29)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row30
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 30 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 30)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row31
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 31 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 31)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row32
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 32 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 32)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row33
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 33 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 33)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row34
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 34 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 34)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row35
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 35 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 35)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row36
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 36 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 36)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row37
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 37 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 37)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row38
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 38 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 38)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row39
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 39 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 39)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row40
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 40 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 40)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row41
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 41 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 41)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row42
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 42 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 42)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row43
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 43 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 43)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row44
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 44 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 44)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row45
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 45 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 45)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row46
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 46 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 46)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row47
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 47 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 47)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row48
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 48 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 48)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row49
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 49 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 49)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row50
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 50 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 50)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row51
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 51 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 51)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row52
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 52 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 52)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row53
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 53 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 53)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row54
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 54 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 54)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row55
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 55 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 55)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row56
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 56 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 56)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row57
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 57 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 57)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

private theorem tropicalComponentARawFactorEdge8_row58
    (s : Fin 59) :
    tropicalComponentARawFactorEdge8 58 s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 58)
        (tropicalComponentARawFactorClass8 s) := by
  revert s
  decide

/-- The class graph is the exact adjacency quotient of the 68 raw edges. -/
theorem tropicalComponentARawFactorEdge8_iff_classEdge
    (r s : Fin 59) :
    tropicalComponentARawFactorEdge8 r s ↔
      componentAFactorEdge8
        (tropicalComponentARawFactorClass8 r)
        (tropicalComponentARawFactorClass8 s) := by
  fin_cases r
  · exact tropicalComponentARawFactorEdge8_row00 s
  · exact tropicalComponentARawFactorEdge8_row01 s
  · exact tropicalComponentARawFactorEdge8_row02 s
  · exact tropicalComponentARawFactorEdge8_row03 s
  · exact tropicalComponentARawFactorEdge8_row04 s
  · exact tropicalComponentARawFactorEdge8_row05 s
  · exact tropicalComponentARawFactorEdge8_row06 s
  · exact tropicalComponentARawFactorEdge8_row07 s
  · exact tropicalComponentARawFactorEdge8_row08 s
  · exact tropicalComponentARawFactorEdge8_row09 s
  · exact tropicalComponentARawFactorEdge8_row10 s
  · exact tropicalComponentARawFactorEdge8_row11 s
  · exact tropicalComponentARawFactorEdge8_row12 s
  · exact tropicalComponentARawFactorEdge8_row13 s
  · exact tropicalComponentARawFactorEdge8_row14 s
  · exact tropicalComponentARawFactorEdge8_row15 s
  · exact tropicalComponentARawFactorEdge8_row16 s
  · exact tropicalComponentARawFactorEdge8_row17 s
  · exact tropicalComponentARawFactorEdge8_row18 s
  · exact tropicalComponentARawFactorEdge8_row19 s
  · exact tropicalComponentARawFactorEdge8_row20 s
  · exact tropicalComponentARawFactorEdge8_row21 s
  · exact tropicalComponentARawFactorEdge8_row22 s
  · exact tropicalComponentARawFactorEdge8_row23 s
  · exact tropicalComponentARawFactorEdge8_row24 s
  · exact tropicalComponentARawFactorEdge8_row25 s
  · exact tropicalComponentARawFactorEdge8_row26 s
  · exact tropicalComponentARawFactorEdge8_row27 s
  · exact tropicalComponentARawFactorEdge8_row28 s
  · exact tropicalComponentARawFactorEdge8_row29 s
  · exact tropicalComponentARawFactorEdge8_row30 s
  · exact tropicalComponentARawFactorEdge8_row31 s
  · exact tropicalComponentARawFactorEdge8_row32 s
  · exact tropicalComponentARawFactorEdge8_row33 s
  · exact tropicalComponentARawFactorEdge8_row34 s
  · exact tropicalComponentARawFactorEdge8_row35 s
  · exact tropicalComponentARawFactorEdge8_row36 s
  · exact tropicalComponentARawFactorEdge8_row37 s
  · exact tropicalComponentARawFactorEdge8_row38 s
  · exact tropicalComponentARawFactorEdge8_row39 s
  · exact tropicalComponentARawFactorEdge8_row40 s
  · exact tropicalComponentARawFactorEdge8_row41 s
  · exact tropicalComponentARawFactorEdge8_row42 s
  · exact tropicalComponentARawFactorEdge8_row43 s
  · exact tropicalComponentARawFactorEdge8_row44 s
  · exact tropicalComponentARawFactorEdge8_row45 s
  · exact tropicalComponentARawFactorEdge8_row46 s
  · exact tropicalComponentARawFactorEdge8_row47 s
  · exact tropicalComponentARawFactorEdge8_row48 s
  · exact tropicalComponentARawFactorEdge8_row49 s
  · exact tropicalComponentARawFactorEdge8_row50 s
  · exact tropicalComponentARawFactorEdge8_row51 s
  · exact tropicalComponentARawFactorEdge8_row52 s
  · exact tropicalComponentARawFactorEdge8_row53 s
  · exact tropicalComponentARawFactorEdge8_row54 s
  · exact tropicalComponentARawFactorEdge8_row55 s
  · exact tropicalComponentARawFactorEdge8_row56 s
  · exact tropicalComponentARawFactorEdge8_row57 s
  · exact tropicalComponentARawFactorEdge8_row58 s

end

end MonochromaticQuantumGraphs.N8D3
