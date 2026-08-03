import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentB8

/-!
# Lightweight Component-B graph tables
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact unordered raw-factor edges in certificate order. -/
def tropicalComponentBRawFactorEdgePair8 :
    Fin 59 → Fin 49 × Fin 49 :=
![
  (0, 7),
  (0, 8),
  (0, 39),
  (0, 40),
  (0, 41),
  (0, 42),
  (0, 43),
  (0, 46),
  (0, 47),
  (0, 48),
  (1, 7),
  (1, 8),
  (1, 27),
  (1, 28),
  (1, 29),
  (1, 30),
  (1, 31),
  (2, 7),
  (2, 8),
  (2, 27),
  (2, 28),
  (2, 29),
  (2, 30),
  (2, 31),
  (3, 9),
  (3, 10),
  (3, 34),
  (4, 9),
  (4, 10),
  (5, 9),
  (5, 10),
  (6, 11),
  (6, 21),
  (6, 22),
  (6, 23),
  (6, 24),
  (6, 25),
  (6, 26),
  (6, 35),
  (6, 36),
  (6, 37),
  (6, 38),
  (11, 32),
  (11, 33),
  (12, 44),
  (12, 45),
  (13, 44),
  (13, 45),
  (14, 44),
  (14, 45),
  (15, 27),
  (15, 30),
  (16, 27),
  (17, 39),
  (17, 42),
  (18, 39),
  (18, 42),
  (19, 39),
  (20, 39)
]

/-- Quotient row supplying each raw edge. -/
def tropicalComponentBRawFactorEdgeQuotient8 :
    Fin 59 → Fin 88 :=
![
  63,
  76,
  58,
  64,
  77,
  84,
  87,
  55,
  61,
  86,
  46,
  70,
  45,
  47,
  71,
  79,
  80,
  50,
  72,
  49,
  51,
  73,
  81,
  82,
  29,
  41,
  27,
  21,
  39,
  22,
  40,
  20,
  23,
  32,
  36,
  24,
  34,
  38,
  31,
  35,
  33,
  37,
  25,
  30,
  53,
  66,
  54,
  67,
  52,
  65,
  43,
  78,
  69,
  57,
  83,
  59,
  85,
  74,
  75
]

/-- Exact symmetric raw adjacency. -/
def tropicalComponentBRawFactorEdge8
    (r s : Fin 49) : Prop :=
  ∃ e : Fin 59,
    tropicalComponentBRawFactorEdgePair8 e = (r, s) ∨
      tropicalComponentBRawFactorEdgePair8 e = (s, r)

/-- False-twin class of every raw factor. -/
def tropicalComponentBRawFactorClass8 :
    Fin 49 → Fin 23 :=
![
  0,
  1,
  1,
  2,
  3,
  3,
  4,
  5,
  5,
  6,
  6,
  7,
  8,
  8,
  8,
  9,
  10,
  11,
  11,
  12,
  12,
  13,
  13,
  13,
  13,
  13,
  13,
  14,
  15,
  15,
  16,
  15,
  17,
  17,
  18,
  13,
  13,
  13,
  13,
  19,
  20,
  20,
  21,
  20,
  22,
  22,
  20,
  20,
  20
]

/-- Exact members of every false-twin class. -/
def tropicalComponentBClassMembers8 :
    Fin 23 → Finset (Fin 49) :=
![
  {0},
  {1, 2},
  {3},
  {4, 5},
  {6},
  {7, 8},
  {9, 10},
  {11},
  {12, 13, 14},
  {15},
  {16},
  {17, 18},
  {19, 20},
  {21, 22, 23, 24, 25, 26, 35, 36, 37, 38},
  {27},
  {28, 29, 31},
  {30},
  {32, 33},
  {34},
  {39},
  {40, 41, 43, 46, 47, 48},
  {42},
  {44, 45}
]

end

end MonochromaticQuantumGraphs.N8D3
