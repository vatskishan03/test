import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentA8

/-!
# Lightweight Component-A graph tables
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact unordered raw-factor edges in certificate order. -/
def tropicalComponentARawFactorEdgePair8 :
    Fin 68 → Fin 59 × Fin 59 :=
![
  (0, 22),
  (0, 23),
  (0, 24),
  (0, 53),
  (0, 54),
  (0, 55),
  (0, 56),
  (0, 57),
  (0, 58),
  (1, 22),
  (1, 23),
  (1, 24),
  (1, 46),
  (1, 47),
  (1, 48),
  (1, 49),
  (2, 22),
  (2, 23),
  (2, 24),
  (2, 46),
  (2, 47),
  (2, 48),
  (2, 49),
  (3, 36),
  (4, 36),
  (5, 33),
  (5, 34),
  (5, 35),
  (5, 52),
  (6, 36),
  (7, 36),
  (8, 33),
  (8, 34),
  (8, 35),
  (9, 36),
  (10, 36),
  (11, 33),
  (11, 34),
  (11, 35),
  (12, 36),
  (13, 36),
  (14, 36),
  (15, 36),
  (16, 36),
  (17, 36),
  (18, 36),
  (19, 36),
  (20, 36),
  (21, 36),
  (25, 36),
  (26, 36),
  (27, 36),
  (28, 36),
  (29, 36),
  (30, 36),
  (31, 36),
  (32, 36),
  (36, 50),
  (36, 51),
  (37, 46),
  (38, 46),
  (39, 46),
  (40, 53),
  (41, 53),
  (42, 53),
  (43, 53),
  (44, 53),
  (45, 53)
]

/-- Quotient row supplying each raw edge. -/
def tropicalComponentARawFactorEdgeQuotient8 :
    Fin 68 → Fin 70 :=
![
  50,
  59,
  68,
  47,
  51,
  60,
  69,
  45,
  49,
  40,
  53,
  62,
  39,
  41,
  54,
  63,
  43,
  55,
  64,
  42,
  44,
  56,
  65,
  17,
  31,
  18,
  32,
  37,
  14,
  2,
  23,
  3,
  24,
  35,
  5,
  26,
  6,
  27,
  36,
  8,
  0,
  30,
  11,
  29,
  10,
  9,
  34,
  22,
  21,
  28,
  7,
  25,
  4,
  1,
  33,
  19,
  16,
  12,
  20,
  38,
  52,
  61,
  46,
  48,
  57,
  58,
  66,
  67
]

/-- Exact symmetric raw adjacency. -/
def tropicalComponentARawFactorEdge8
    (r s : Fin 59) : Prop :=
  ∃ e : Fin 68,
    tropicalComponentARawFactorEdgePair8 e = (r, s) ∨
      tropicalComponentARawFactorEdgePair8 e = (s, r)

/-- False-twin class of every raw factor. -/
def tropicalComponentARawFactorClass8 :
    Fin 59 → Fin 15 :=
![
  0,
  1,
  1,
  2,
  2,
  3,
  2,
  2,
  4,
  2,
  2,
  4,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  5,
  5,
  5,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  6,
  6,
  6,
  7,
  8,
  8,
  8,
  9,
  9,
  9,
  9,
  9,
  9,
  10,
  11,
  11,
  11,
  2,
  2,
  12,
  13,
  14,
  14,
  14,
  14,
  14
]

/-- Exact members of every false-twin class. -/
def tropicalComponentAClassMembers8 :
    Fin 15 → Finset (Fin 59) :=
![
  {0},
  {1, 2},
  {3, 4, 6, 7, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 29, 30, 31, 32, 50, 51},
  {5},
  {8, 11},
  {22, 23, 24},
  {33, 34, 35},
  {36},
  {37, 38, 39},
  {40, 41, 42, 43, 44, 45},
  {46},
  {47, 48, 49},
  {52},
  {53},
  {54, 55, 56, 57, 58}
]

end

end MonochromaticQuantumGraphs.N8D3
