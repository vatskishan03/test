import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportCombinatorics
import Mathlib.Tactic.FinCases
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3297 : Fin 8 → Fin 3 := ![0, 1, 0, 2, 1, 1, 1, 1]

def table3297 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 59, 102, 138] else
    if m.val = 1 then some [1, 59, 111, 129] else
    if m.val = 6 then some [1, 70, 89, 138] else
    if m.val = 21 then some [9, 42, 89, 138] else
    if m.val = 24 then some [9, 51, 89, 129] else
    if m.val = 40 then some [20, 51, 70, 119] else none

theorem table3297_entry000 :
    matchingVariables coloring3297 0 = table3297 0 := by rfl

theorem table3297_entry001 :
    matchingVariables coloring3297 1 = table3297 1 := by rfl

theorem table3297_entry002 :
    matchingVariables coloring3297 2 = table3297 2 := by rfl

theorem table3297_entry003 :
    matchingVariables coloring3297 3 = table3297 3 := by rfl

theorem table3297_entry004 :
    matchingVariables coloring3297 4 = table3297 4 := by rfl

theorem table3297_entry005 :
    matchingVariables coloring3297 5 = table3297 5 := by rfl

theorem table3297_entry006 :
    matchingVariables coloring3297 6 = table3297 6 := by rfl

theorem table3297_entry007 :
    matchingVariables coloring3297 7 = table3297 7 := by rfl

theorem table3297_entry008 :
    matchingVariables coloring3297 8 = table3297 8 := by rfl

theorem table3297_entry009 :
    matchingVariables coloring3297 9 = table3297 9 := by rfl

theorem table3297_entry010 :
    matchingVariables coloring3297 10 = table3297 10 := by rfl

theorem table3297_entry011 :
    matchingVariables coloring3297 11 = table3297 11 := by rfl

theorem table3297_entry012 :
    matchingVariables coloring3297 12 = table3297 12 := by rfl

theorem table3297_entry013 :
    matchingVariables coloring3297 13 = table3297 13 := by rfl

theorem table3297_entry014 :
    matchingVariables coloring3297 14 = table3297 14 := by rfl

theorem table3297_entry015 :
    matchingVariables coloring3297 15 = table3297 15 := by rfl

theorem table3297_entry016 :
    matchingVariables coloring3297 16 = table3297 16 := by rfl

theorem table3297_entry017 :
    matchingVariables coloring3297 17 = table3297 17 := by rfl

theorem table3297_entry018 :
    matchingVariables coloring3297 18 = table3297 18 := by rfl

theorem table3297_entry019 :
    matchingVariables coloring3297 19 = table3297 19 := by rfl

theorem table3297_entry020 :
    matchingVariables coloring3297 20 = table3297 20 := by rfl

theorem table3297_entry021 :
    matchingVariables coloring3297 21 = table3297 21 := by rfl

theorem table3297_entry022 :
    matchingVariables coloring3297 22 = table3297 22 := by rfl

theorem table3297_entry023 :
    matchingVariables coloring3297 23 = table3297 23 := by rfl

theorem table3297_entry024 :
    matchingVariables coloring3297 24 = table3297 24 := by rfl

theorem table3297_entry025 :
    matchingVariables coloring3297 25 = table3297 25 := by rfl

theorem table3297_entry026 :
    matchingVariables coloring3297 26 = table3297 26 := by rfl

theorem table3297_entry027 :
    matchingVariables coloring3297 27 = table3297 27 := by rfl

theorem table3297_entry028 :
    matchingVariables coloring3297 28 = table3297 28 := by rfl

theorem table3297_entry029 :
    matchingVariables coloring3297 29 = table3297 29 := by rfl

theorem table3297_entry030 :
    matchingVariables coloring3297 30 = table3297 30 := by rfl

theorem table3297_entry031 :
    matchingVariables coloring3297 31 = table3297 31 := by rfl

theorem table3297_entry032 :
    matchingVariables coloring3297 32 = table3297 32 := by rfl

theorem table3297_entry033 :
    matchingVariables coloring3297 33 = table3297 33 := by rfl

theorem table3297_entry034 :
    matchingVariables coloring3297 34 = table3297 34 := by rfl

theorem table3297_entry035 :
    matchingVariables coloring3297 35 = table3297 35 := by rfl

theorem table3297_entry036 :
    matchingVariables coloring3297 36 = table3297 36 := by rfl

theorem table3297_entry037 :
    matchingVariables coloring3297 37 = table3297 37 := by rfl

theorem table3297_entry038 :
    matchingVariables coloring3297 38 = table3297 38 := by rfl

theorem table3297_entry039 :
    matchingVariables coloring3297 39 = table3297 39 := by rfl

theorem table3297_entry040 :
    matchingVariables coloring3297 40 = table3297 40 := by rfl

theorem table3297_entry041 :
    matchingVariables coloring3297 41 = table3297 41 := by rfl

theorem table3297_entry042 :
    matchingVariables coloring3297 42 = table3297 42 := by rfl

theorem table3297_entry043 :
    matchingVariables coloring3297 43 = table3297 43 := by rfl

theorem table3297_entry044 :
    matchingVariables coloring3297 44 = table3297 44 := by rfl

theorem table3297_entry045 :
    matchingVariables coloring3297 45 = table3297 45 := by rfl

theorem table3297_entry046 :
    matchingVariables coloring3297 46 = table3297 46 := by rfl

theorem table3297_entry047 :
    matchingVariables coloring3297 47 = table3297 47 := by rfl

theorem table3297_entry048 :
    matchingVariables coloring3297 48 = table3297 48 := by rfl

theorem table3297_entry049 :
    matchingVariables coloring3297 49 = table3297 49 := by rfl

theorem table3297_entry050 :
    matchingVariables coloring3297 50 = table3297 50 := by rfl

theorem table3297_entry051 :
    matchingVariables coloring3297 51 = table3297 51 := by rfl

theorem table3297_entry052 :
    matchingVariables coloring3297 52 = table3297 52 := by rfl

theorem table3297_entry053 :
    matchingVariables coloring3297 53 = table3297 53 := by rfl

theorem table3297_entry054 :
    matchingVariables coloring3297 54 = table3297 54 := by rfl

theorem table3297_entry055 :
    matchingVariables coloring3297 55 = table3297 55 := by rfl

theorem table3297_entry056 :
    matchingVariables coloring3297 56 = table3297 56 := by rfl

theorem table3297_entry057 :
    matchingVariables coloring3297 57 = table3297 57 := by rfl

theorem table3297_entry058 :
    matchingVariables coloring3297 58 = table3297 58 := by rfl

theorem table3297_entry059 :
    matchingVariables coloring3297 59 = table3297 59 := by rfl

theorem table3297_entry060 :
    matchingVariables coloring3297 60 = table3297 60 := by rfl

theorem table3297_entry061 :
    matchingVariables coloring3297 61 = table3297 61 := by rfl

theorem table3297_entry062 :
    matchingVariables coloring3297 62 = table3297 62 := by rfl

theorem table3297_entry063 :
    matchingVariables coloring3297 63 = table3297 63 := by rfl

theorem table3297_entry064 :
    matchingVariables coloring3297 64 = table3297 64 := by rfl

theorem table3297_entry065 :
    matchingVariables coloring3297 65 = table3297 65 := by rfl

theorem table3297_entry066 :
    matchingVariables coloring3297 66 = table3297 66 := by rfl

theorem table3297_entry067 :
    matchingVariables coloring3297 67 = table3297 67 := by rfl

theorem table3297_entry068 :
    matchingVariables coloring3297 68 = table3297 68 := by rfl

theorem table3297_entry069 :
    matchingVariables coloring3297 69 = table3297 69 := by rfl

theorem table3297_entry070 :
    matchingVariables coloring3297 70 = table3297 70 := by rfl

theorem table3297_entry071 :
    matchingVariables coloring3297 71 = table3297 71 := by rfl

theorem table3297_entry072 :
    matchingVariables coloring3297 72 = table3297 72 := by rfl

theorem table3297_entry073 :
    matchingVariables coloring3297 73 = table3297 73 := by rfl

theorem table3297_entry074 :
    matchingVariables coloring3297 74 = table3297 74 := by rfl

theorem table3297_entry075 :
    matchingVariables coloring3297 75 = table3297 75 := by rfl

theorem table3297_entry076 :
    matchingVariables coloring3297 76 = table3297 76 := by rfl

theorem table3297_entry077 :
    matchingVariables coloring3297 77 = table3297 77 := by rfl

theorem table3297_entry078 :
    matchingVariables coloring3297 78 = table3297 78 := by rfl

theorem table3297_entry079 :
    matchingVariables coloring3297 79 = table3297 79 := by rfl

theorem table3297_entry080 :
    matchingVariables coloring3297 80 = table3297 80 := by rfl

theorem table3297_entry081 :
    matchingVariables coloring3297 81 = table3297 81 := by rfl

theorem table3297_entry082 :
    matchingVariables coloring3297 82 = table3297 82 := by rfl

theorem table3297_entry083 :
    matchingVariables coloring3297 83 = table3297 83 := by rfl

theorem table3297_entry084 :
    matchingVariables coloring3297 84 = table3297 84 := by rfl

theorem table3297_entry085 :
    matchingVariables coloring3297 85 = table3297 85 := by rfl

theorem table3297_entry086 :
    matchingVariables coloring3297 86 = table3297 86 := by rfl

theorem table3297_entry087 :
    matchingVariables coloring3297 87 = table3297 87 := by rfl

theorem table3297_entry088 :
    matchingVariables coloring3297 88 = table3297 88 := by rfl

theorem table3297_entry089 :
    matchingVariables coloring3297 89 = table3297 89 := by rfl

theorem table3297_entry090 :
    matchingVariables coloring3297 90 = table3297 90 := by rfl

theorem table3297_entry091 :
    matchingVariables coloring3297 91 = table3297 91 := by rfl

theorem table3297_entry092 :
    matchingVariables coloring3297 92 = table3297 92 := by rfl

theorem table3297_entry093 :
    matchingVariables coloring3297 93 = table3297 93 := by rfl

theorem table3297_entry094 :
    matchingVariables coloring3297 94 = table3297 94 := by rfl

theorem table3297_entry095 :
    matchingVariables coloring3297 95 = table3297 95 := by rfl

theorem table3297_entry096 :
    matchingVariables coloring3297 96 = table3297 96 := by rfl

theorem table3297_entry097 :
    matchingVariables coloring3297 97 = table3297 97 := by rfl

theorem table3297_entry098 :
    matchingVariables coloring3297 98 = table3297 98 := by rfl

theorem table3297_entry099 :
    matchingVariables coloring3297 99 = table3297 99 := by rfl

theorem table3297_entry100 :
    matchingVariables coloring3297 100 = table3297 100 := by rfl

theorem table3297_entry101 :
    matchingVariables coloring3297 101 = table3297 101 := by rfl

theorem table3297_entry102 :
    matchingVariables coloring3297 102 = table3297 102 := by rfl

theorem table3297_entry103 :
    matchingVariables coloring3297 103 = table3297 103 := by rfl

theorem table3297_entry104 :
    matchingVariables coloring3297 104 = table3297 104 := by rfl

theorem table3297_complete : ∀ m, matchingVariables coloring3297 m = table3297 m := by
  intro m
  fin_cases m
  · exact table3297_entry000
  · exact table3297_entry001
  · exact table3297_entry002
  · exact table3297_entry003
  · exact table3297_entry004
  · exact table3297_entry005
  · exact table3297_entry006
  · exact table3297_entry007
  · exact table3297_entry008
  · exact table3297_entry009
  · exact table3297_entry010
  · exact table3297_entry011
  · exact table3297_entry012
  · exact table3297_entry013
  · exact table3297_entry014
  · exact table3297_entry015
  · exact table3297_entry016
  · exact table3297_entry017
  · exact table3297_entry018
  · exact table3297_entry019
  · exact table3297_entry020
  · exact table3297_entry021
  · exact table3297_entry022
  · exact table3297_entry023
  · exact table3297_entry024
  · exact table3297_entry025
  · exact table3297_entry026
  · exact table3297_entry027
  · exact table3297_entry028
  · exact table3297_entry029
  · exact table3297_entry030
  · exact table3297_entry031
  · exact table3297_entry032
  · exact table3297_entry033
  · exact table3297_entry034
  · exact table3297_entry035
  · exact table3297_entry036
  · exact table3297_entry037
  · exact table3297_entry038
  · exact table3297_entry039
  · exact table3297_entry040
  · exact table3297_entry041
  · exact table3297_entry042
  · exact table3297_entry043
  · exact table3297_entry044
  · exact table3297_entry045
  · exact table3297_entry046
  · exact table3297_entry047
  · exact table3297_entry048
  · exact table3297_entry049
  · exact table3297_entry050
  · exact table3297_entry051
  · exact table3297_entry052
  · exact table3297_entry053
  · exact table3297_entry054
  · exact table3297_entry055
  · exact table3297_entry056
  · exact table3297_entry057
  · exact table3297_entry058
  · exact table3297_entry059
  · exact table3297_entry060
  · exact table3297_entry061
  · exact table3297_entry062
  · exact table3297_entry063
  · exact table3297_entry064
  · exact table3297_entry065
  · exact table3297_entry066
  · exact table3297_entry067
  · exact table3297_entry068
  · exact table3297_entry069
  · exact table3297_entry070
  · exact table3297_entry071
  · exact table3297_entry072
  · exact table3297_entry073
  · exact table3297_entry074
  · exact table3297_entry075
  · exact table3297_entry076
  · exact table3297_entry077
  · exact table3297_entry078
  · exact table3297_entry079
  · exact table3297_entry080
  · exact table3297_entry081
  · exact table3297_entry082
  · exact table3297_entry083
  · exact table3297_entry084
  · exact table3297_entry085
  · exact table3297_entry086
  · exact table3297_entry087
  · exact table3297_entry088
  · exact table3297_entry089
  · exact table3297_entry090
  · exact table3297_entry091
  · exact table3297_entry092
  · exact table3297_entry093
  · exact table3297_entry094
  · exact table3297_entry095
  · exact table3297_entry096
  · exact table3297_entry097
  · exact table3297_entry098
  · exact table3297_entry099
  · exact table3297_entry100
  · exact table3297_entry101
  · exact table3297_entry102
  · exact table3297_entry103
  · exact table3297_entry104

#print axioms table3297_complete

def expanded3297 : Polynomial 143 := [(1, exponentOfVariables [1, 59, 102, 138]),
  (1, exponentOfVariables [1, 59, 111, 129]),
  (1, exponentOfVariables [1, 70, 89, 138]),
  (1, exponentOfVariables [9, 42, 89, 138]),
  (1, exponentOfVariables [9, 51, 89, 129]),
  (1, exponentOfVariables [20, 51, 70, 119])]

theorem table3297_expanded : tablePolynomial table3297 = expanded3297 := by
  rfl

theorem table3297_exponent00 :
    exponentOfVariables (n := 143) [1, 59, 102, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 102 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3297_exponent01 :
    exponentOfVariables (n := 143) [1, 59, 111, 129] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 111 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3297_exponent02 :
    exponentOfVariables (n := 143) [1, 70, 89, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 70 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3297_exponent03 :
    exponentOfVariables (n := 143) [9, 42, 89, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 42 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3297_exponent04 :
    exponentOfVariables (n := 143) [9, 51, 89, 129] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 89 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3297_exponent05 :
    exponentOfVariables (n := 143) [20, 51, 70, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 70 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3297_polynomial : expanded3297 = amplitude3297 := by
  simp only [expanded3297, amplitude3297, table3297_exponent00, table3297_exponent01, table3297_exponent02, table3297_exponent03, table3297_exponent04, table3297_exponent05]

theorem premiseCheck035 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3297)) p035 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
