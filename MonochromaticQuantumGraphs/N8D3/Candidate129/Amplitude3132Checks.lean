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

def coloring3132 : Fin 8 → Fin 3 := ![0, 0, 0, 2, 2, 0, 1, 1]

def table3132 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 59, 104, 138] else
    if m.val = 6 then some [0, 69, 90, 138] else
    if m.val = 21 then some [9, 38, 90, 138] else
    if m.val = 24 then some [9, 48, 90, 126] else
    if m.val = 40 then some [20, 48, 69, 122] else none

theorem table3132_entry000 :
    matchingVariables coloring3132 0 = table3132 0 := by rfl

theorem table3132_entry001 :
    matchingVariables coloring3132 1 = table3132 1 := by rfl

theorem table3132_entry002 :
    matchingVariables coloring3132 2 = table3132 2 := by rfl

theorem table3132_entry003 :
    matchingVariables coloring3132 3 = table3132 3 := by rfl

theorem table3132_entry004 :
    matchingVariables coloring3132 4 = table3132 4 := by rfl

theorem table3132_entry005 :
    matchingVariables coloring3132 5 = table3132 5 := by rfl

theorem table3132_entry006 :
    matchingVariables coloring3132 6 = table3132 6 := by rfl

theorem table3132_entry007 :
    matchingVariables coloring3132 7 = table3132 7 := by rfl

theorem table3132_entry008 :
    matchingVariables coloring3132 8 = table3132 8 := by rfl

theorem table3132_entry009 :
    matchingVariables coloring3132 9 = table3132 9 := by rfl

theorem table3132_entry010 :
    matchingVariables coloring3132 10 = table3132 10 := by rfl

theorem table3132_entry011 :
    matchingVariables coloring3132 11 = table3132 11 := by rfl

theorem table3132_entry012 :
    matchingVariables coloring3132 12 = table3132 12 := by rfl

theorem table3132_entry013 :
    matchingVariables coloring3132 13 = table3132 13 := by rfl

theorem table3132_entry014 :
    matchingVariables coloring3132 14 = table3132 14 := by rfl

theorem table3132_entry015 :
    matchingVariables coloring3132 15 = table3132 15 := by rfl

theorem table3132_entry016 :
    matchingVariables coloring3132 16 = table3132 16 := by rfl

theorem table3132_entry017 :
    matchingVariables coloring3132 17 = table3132 17 := by rfl

theorem table3132_entry018 :
    matchingVariables coloring3132 18 = table3132 18 := by rfl

theorem table3132_entry019 :
    matchingVariables coloring3132 19 = table3132 19 := by rfl

theorem table3132_entry020 :
    matchingVariables coloring3132 20 = table3132 20 := by rfl

theorem table3132_entry021 :
    matchingVariables coloring3132 21 = table3132 21 := by rfl

theorem table3132_entry022 :
    matchingVariables coloring3132 22 = table3132 22 := by rfl

theorem table3132_entry023 :
    matchingVariables coloring3132 23 = table3132 23 := by rfl

theorem table3132_entry024 :
    matchingVariables coloring3132 24 = table3132 24 := by rfl

theorem table3132_entry025 :
    matchingVariables coloring3132 25 = table3132 25 := by rfl

theorem table3132_entry026 :
    matchingVariables coloring3132 26 = table3132 26 := by rfl

theorem table3132_entry027 :
    matchingVariables coloring3132 27 = table3132 27 := by rfl

theorem table3132_entry028 :
    matchingVariables coloring3132 28 = table3132 28 := by rfl

theorem table3132_entry029 :
    matchingVariables coloring3132 29 = table3132 29 := by rfl

theorem table3132_entry030 :
    matchingVariables coloring3132 30 = table3132 30 := by rfl

theorem table3132_entry031 :
    matchingVariables coloring3132 31 = table3132 31 := by rfl

theorem table3132_entry032 :
    matchingVariables coloring3132 32 = table3132 32 := by rfl

theorem table3132_entry033 :
    matchingVariables coloring3132 33 = table3132 33 := by rfl

theorem table3132_entry034 :
    matchingVariables coloring3132 34 = table3132 34 := by rfl

theorem table3132_entry035 :
    matchingVariables coloring3132 35 = table3132 35 := by rfl

theorem table3132_entry036 :
    matchingVariables coloring3132 36 = table3132 36 := by rfl

theorem table3132_entry037 :
    matchingVariables coloring3132 37 = table3132 37 := by rfl

theorem table3132_entry038 :
    matchingVariables coloring3132 38 = table3132 38 := by rfl

theorem table3132_entry039 :
    matchingVariables coloring3132 39 = table3132 39 := by rfl

theorem table3132_entry040 :
    matchingVariables coloring3132 40 = table3132 40 := by rfl

theorem table3132_entry041 :
    matchingVariables coloring3132 41 = table3132 41 := by rfl

theorem table3132_entry042 :
    matchingVariables coloring3132 42 = table3132 42 := by rfl

theorem table3132_entry043 :
    matchingVariables coloring3132 43 = table3132 43 := by rfl

theorem table3132_entry044 :
    matchingVariables coloring3132 44 = table3132 44 := by rfl

theorem table3132_entry045 :
    matchingVariables coloring3132 45 = table3132 45 := by rfl

theorem table3132_entry046 :
    matchingVariables coloring3132 46 = table3132 46 := by rfl

theorem table3132_entry047 :
    matchingVariables coloring3132 47 = table3132 47 := by rfl

theorem table3132_entry048 :
    matchingVariables coloring3132 48 = table3132 48 := by rfl

theorem table3132_entry049 :
    matchingVariables coloring3132 49 = table3132 49 := by rfl

theorem table3132_entry050 :
    matchingVariables coloring3132 50 = table3132 50 := by rfl

theorem table3132_entry051 :
    matchingVariables coloring3132 51 = table3132 51 := by rfl

theorem table3132_entry052 :
    matchingVariables coloring3132 52 = table3132 52 := by rfl

theorem table3132_entry053 :
    matchingVariables coloring3132 53 = table3132 53 := by rfl

theorem table3132_entry054 :
    matchingVariables coloring3132 54 = table3132 54 := by rfl

theorem table3132_entry055 :
    matchingVariables coloring3132 55 = table3132 55 := by rfl

theorem table3132_entry056 :
    matchingVariables coloring3132 56 = table3132 56 := by rfl

theorem table3132_entry057 :
    matchingVariables coloring3132 57 = table3132 57 := by rfl

theorem table3132_entry058 :
    matchingVariables coloring3132 58 = table3132 58 := by rfl

theorem table3132_entry059 :
    matchingVariables coloring3132 59 = table3132 59 := by rfl

theorem table3132_entry060 :
    matchingVariables coloring3132 60 = table3132 60 := by rfl

theorem table3132_entry061 :
    matchingVariables coloring3132 61 = table3132 61 := by rfl

theorem table3132_entry062 :
    matchingVariables coloring3132 62 = table3132 62 := by rfl

theorem table3132_entry063 :
    matchingVariables coloring3132 63 = table3132 63 := by rfl

theorem table3132_entry064 :
    matchingVariables coloring3132 64 = table3132 64 := by rfl

theorem table3132_entry065 :
    matchingVariables coloring3132 65 = table3132 65 := by rfl

theorem table3132_entry066 :
    matchingVariables coloring3132 66 = table3132 66 := by rfl

theorem table3132_entry067 :
    matchingVariables coloring3132 67 = table3132 67 := by rfl

theorem table3132_entry068 :
    matchingVariables coloring3132 68 = table3132 68 := by rfl

theorem table3132_entry069 :
    matchingVariables coloring3132 69 = table3132 69 := by rfl

theorem table3132_entry070 :
    matchingVariables coloring3132 70 = table3132 70 := by rfl

theorem table3132_entry071 :
    matchingVariables coloring3132 71 = table3132 71 := by rfl

theorem table3132_entry072 :
    matchingVariables coloring3132 72 = table3132 72 := by rfl

theorem table3132_entry073 :
    matchingVariables coloring3132 73 = table3132 73 := by rfl

theorem table3132_entry074 :
    matchingVariables coloring3132 74 = table3132 74 := by rfl

theorem table3132_entry075 :
    matchingVariables coloring3132 75 = table3132 75 := by rfl

theorem table3132_entry076 :
    matchingVariables coloring3132 76 = table3132 76 := by rfl

theorem table3132_entry077 :
    matchingVariables coloring3132 77 = table3132 77 := by rfl

theorem table3132_entry078 :
    matchingVariables coloring3132 78 = table3132 78 := by rfl

theorem table3132_entry079 :
    matchingVariables coloring3132 79 = table3132 79 := by rfl

theorem table3132_entry080 :
    matchingVariables coloring3132 80 = table3132 80 := by rfl

theorem table3132_entry081 :
    matchingVariables coloring3132 81 = table3132 81 := by rfl

theorem table3132_entry082 :
    matchingVariables coloring3132 82 = table3132 82 := by rfl

theorem table3132_entry083 :
    matchingVariables coloring3132 83 = table3132 83 := by rfl

theorem table3132_entry084 :
    matchingVariables coloring3132 84 = table3132 84 := by rfl

theorem table3132_entry085 :
    matchingVariables coloring3132 85 = table3132 85 := by rfl

theorem table3132_entry086 :
    matchingVariables coloring3132 86 = table3132 86 := by rfl

theorem table3132_entry087 :
    matchingVariables coloring3132 87 = table3132 87 := by rfl

theorem table3132_entry088 :
    matchingVariables coloring3132 88 = table3132 88 := by rfl

theorem table3132_entry089 :
    matchingVariables coloring3132 89 = table3132 89 := by rfl

theorem table3132_entry090 :
    matchingVariables coloring3132 90 = table3132 90 := by rfl

theorem table3132_entry091 :
    matchingVariables coloring3132 91 = table3132 91 := by rfl

theorem table3132_entry092 :
    matchingVariables coloring3132 92 = table3132 92 := by rfl

theorem table3132_entry093 :
    matchingVariables coloring3132 93 = table3132 93 := by rfl

theorem table3132_entry094 :
    matchingVariables coloring3132 94 = table3132 94 := by rfl

theorem table3132_entry095 :
    matchingVariables coloring3132 95 = table3132 95 := by rfl

theorem table3132_entry096 :
    matchingVariables coloring3132 96 = table3132 96 := by rfl

theorem table3132_entry097 :
    matchingVariables coloring3132 97 = table3132 97 := by rfl

theorem table3132_entry098 :
    matchingVariables coloring3132 98 = table3132 98 := by rfl

theorem table3132_entry099 :
    matchingVariables coloring3132 99 = table3132 99 := by rfl

theorem table3132_entry100 :
    matchingVariables coloring3132 100 = table3132 100 := by rfl

theorem table3132_entry101 :
    matchingVariables coloring3132 101 = table3132 101 := by rfl

theorem table3132_entry102 :
    matchingVariables coloring3132 102 = table3132 102 := by rfl

theorem table3132_entry103 :
    matchingVariables coloring3132 103 = table3132 103 := by rfl

theorem table3132_entry104 :
    matchingVariables coloring3132 104 = table3132 104 := by rfl

theorem table3132_complete : ∀ m, matchingVariables coloring3132 m = table3132 m := by
  intro m
  fin_cases m
  · exact table3132_entry000
  · exact table3132_entry001
  · exact table3132_entry002
  · exact table3132_entry003
  · exact table3132_entry004
  · exact table3132_entry005
  · exact table3132_entry006
  · exact table3132_entry007
  · exact table3132_entry008
  · exact table3132_entry009
  · exact table3132_entry010
  · exact table3132_entry011
  · exact table3132_entry012
  · exact table3132_entry013
  · exact table3132_entry014
  · exact table3132_entry015
  · exact table3132_entry016
  · exact table3132_entry017
  · exact table3132_entry018
  · exact table3132_entry019
  · exact table3132_entry020
  · exact table3132_entry021
  · exact table3132_entry022
  · exact table3132_entry023
  · exact table3132_entry024
  · exact table3132_entry025
  · exact table3132_entry026
  · exact table3132_entry027
  · exact table3132_entry028
  · exact table3132_entry029
  · exact table3132_entry030
  · exact table3132_entry031
  · exact table3132_entry032
  · exact table3132_entry033
  · exact table3132_entry034
  · exact table3132_entry035
  · exact table3132_entry036
  · exact table3132_entry037
  · exact table3132_entry038
  · exact table3132_entry039
  · exact table3132_entry040
  · exact table3132_entry041
  · exact table3132_entry042
  · exact table3132_entry043
  · exact table3132_entry044
  · exact table3132_entry045
  · exact table3132_entry046
  · exact table3132_entry047
  · exact table3132_entry048
  · exact table3132_entry049
  · exact table3132_entry050
  · exact table3132_entry051
  · exact table3132_entry052
  · exact table3132_entry053
  · exact table3132_entry054
  · exact table3132_entry055
  · exact table3132_entry056
  · exact table3132_entry057
  · exact table3132_entry058
  · exact table3132_entry059
  · exact table3132_entry060
  · exact table3132_entry061
  · exact table3132_entry062
  · exact table3132_entry063
  · exact table3132_entry064
  · exact table3132_entry065
  · exact table3132_entry066
  · exact table3132_entry067
  · exact table3132_entry068
  · exact table3132_entry069
  · exact table3132_entry070
  · exact table3132_entry071
  · exact table3132_entry072
  · exact table3132_entry073
  · exact table3132_entry074
  · exact table3132_entry075
  · exact table3132_entry076
  · exact table3132_entry077
  · exact table3132_entry078
  · exact table3132_entry079
  · exact table3132_entry080
  · exact table3132_entry081
  · exact table3132_entry082
  · exact table3132_entry083
  · exact table3132_entry084
  · exact table3132_entry085
  · exact table3132_entry086
  · exact table3132_entry087
  · exact table3132_entry088
  · exact table3132_entry089
  · exact table3132_entry090
  · exact table3132_entry091
  · exact table3132_entry092
  · exact table3132_entry093
  · exact table3132_entry094
  · exact table3132_entry095
  · exact table3132_entry096
  · exact table3132_entry097
  · exact table3132_entry098
  · exact table3132_entry099
  · exact table3132_entry100
  · exact table3132_entry101
  · exact table3132_entry102
  · exact table3132_entry103
  · exact table3132_entry104

#print axioms table3132_complete

def expanded3132 : Polynomial 143 := [(1, exponentOfVariables [0, 59, 104, 138]),
  (1, exponentOfVariables [0, 69, 90, 138]),
  (1, exponentOfVariables [9, 38, 90, 138]),
  (1, exponentOfVariables [9, 48, 90, 126]),
  (1, exponentOfVariables [20, 48, 69, 122])]

theorem table3132_expanded : tablePolynomial table3132 = expanded3132 := by
  rfl

theorem table3132_exponent00 :
    exponentOfVariables (n := 143) [0, 59, 104, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3132_exponent01 :
    exponentOfVariables (n := 143) [0, 69, 90, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3132_exponent02 :
    exponentOfVariables (n := 143) [9, 38, 90, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 90 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3132_exponent03 :
    exponentOfVariables (n := 143) [9, 48, 90, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 90 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3132_exponent04 :
    exponentOfVariables (n := 143) [20, 48, 69, 122] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3132_polynomial : expanded3132 = amplitude3132 := by
  simp only [expanded3132, amplitude3132, table3132_exponent00, table3132_exponent01, table3132_exponent02, table3132_exponent03, table3132_exponent04]

end MonochromaticQuantumGraphs.N8D3.Candidate129
