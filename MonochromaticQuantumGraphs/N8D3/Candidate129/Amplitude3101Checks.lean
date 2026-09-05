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

def coloring3101 : Fin 8 → Fin 3 := ![2, 1, 2, 0, 2, 0, 1, 1]

def table3101 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [7, 63, 104, 138] else
    if m.val = 6 then some [7, 75, 84, 138] else
    if m.val = 21 then some [17, 41, 84, 138] else
    if m.val = 24 then some [17, 51, 84, 126] else
    if m.val = 25 then some [17, 51, 91, 122] else
    if m.val = 40 then some [24, 51, 75, 122] else none

theorem table3101_entry000 :
    matchingVariables coloring3101 0 = table3101 0 := by rfl

theorem table3101_entry001 :
    matchingVariables coloring3101 1 = table3101 1 := by rfl

theorem table3101_entry002 :
    matchingVariables coloring3101 2 = table3101 2 := by rfl

theorem table3101_entry003 :
    matchingVariables coloring3101 3 = table3101 3 := by rfl

theorem table3101_entry004 :
    matchingVariables coloring3101 4 = table3101 4 := by rfl

theorem table3101_entry005 :
    matchingVariables coloring3101 5 = table3101 5 := by rfl

theorem table3101_entry006 :
    matchingVariables coloring3101 6 = table3101 6 := by rfl

theorem table3101_entry007 :
    matchingVariables coloring3101 7 = table3101 7 := by rfl

theorem table3101_entry008 :
    matchingVariables coloring3101 8 = table3101 8 := by rfl

theorem table3101_entry009 :
    matchingVariables coloring3101 9 = table3101 9 := by rfl

theorem table3101_entry010 :
    matchingVariables coloring3101 10 = table3101 10 := by rfl

theorem table3101_entry011 :
    matchingVariables coloring3101 11 = table3101 11 := by rfl

theorem table3101_entry012 :
    matchingVariables coloring3101 12 = table3101 12 := by rfl

theorem table3101_entry013 :
    matchingVariables coloring3101 13 = table3101 13 := by rfl

theorem table3101_entry014 :
    matchingVariables coloring3101 14 = table3101 14 := by rfl

theorem table3101_entry015 :
    matchingVariables coloring3101 15 = table3101 15 := by rfl

theorem table3101_entry016 :
    matchingVariables coloring3101 16 = table3101 16 := by rfl

theorem table3101_entry017 :
    matchingVariables coloring3101 17 = table3101 17 := by rfl

theorem table3101_entry018 :
    matchingVariables coloring3101 18 = table3101 18 := by rfl

theorem table3101_entry019 :
    matchingVariables coloring3101 19 = table3101 19 := by rfl

theorem table3101_entry020 :
    matchingVariables coloring3101 20 = table3101 20 := by rfl

theorem table3101_entry021 :
    matchingVariables coloring3101 21 = table3101 21 := by rfl

theorem table3101_entry022 :
    matchingVariables coloring3101 22 = table3101 22 := by rfl

theorem table3101_entry023 :
    matchingVariables coloring3101 23 = table3101 23 := by rfl

theorem table3101_entry024 :
    matchingVariables coloring3101 24 = table3101 24 := by rfl

theorem table3101_entry025 :
    matchingVariables coloring3101 25 = table3101 25 := by rfl

theorem table3101_entry026 :
    matchingVariables coloring3101 26 = table3101 26 := by rfl

theorem table3101_entry027 :
    matchingVariables coloring3101 27 = table3101 27 := by rfl

theorem table3101_entry028 :
    matchingVariables coloring3101 28 = table3101 28 := by rfl

theorem table3101_entry029 :
    matchingVariables coloring3101 29 = table3101 29 := by rfl

theorem table3101_entry030 :
    matchingVariables coloring3101 30 = table3101 30 := by rfl

theorem table3101_entry031 :
    matchingVariables coloring3101 31 = table3101 31 := by rfl

theorem table3101_entry032 :
    matchingVariables coloring3101 32 = table3101 32 := by rfl

theorem table3101_entry033 :
    matchingVariables coloring3101 33 = table3101 33 := by rfl

theorem table3101_entry034 :
    matchingVariables coloring3101 34 = table3101 34 := by rfl

theorem table3101_entry035 :
    matchingVariables coloring3101 35 = table3101 35 := by rfl

theorem table3101_entry036 :
    matchingVariables coloring3101 36 = table3101 36 := by rfl

theorem table3101_entry037 :
    matchingVariables coloring3101 37 = table3101 37 := by rfl

theorem table3101_entry038 :
    matchingVariables coloring3101 38 = table3101 38 := by rfl

theorem table3101_entry039 :
    matchingVariables coloring3101 39 = table3101 39 := by rfl

theorem table3101_entry040 :
    matchingVariables coloring3101 40 = table3101 40 := by rfl

theorem table3101_entry041 :
    matchingVariables coloring3101 41 = table3101 41 := by rfl

theorem table3101_entry042 :
    matchingVariables coloring3101 42 = table3101 42 := by rfl

theorem table3101_entry043 :
    matchingVariables coloring3101 43 = table3101 43 := by rfl

theorem table3101_entry044 :
    matchingVariables coloring3101 44 = table3101 44 := by rfl

theorem table3101_entry045 :
    matchingVariables coloring3101 45 = table3101 45 := by rfl

theorem table3101_entry046 :
    matchingVariables coloring3101 46 = table3101 46 := by rfl

theorem table3101_entry047 :
    matchingVariables coloring3101 47 = table3101 47 := by rfl

theorem table3101_entry048 :
    matchingVariables coloring3101 48 = table3101 48 := by rfl

theorem table3101_entry049 :
    matchingVariables coloring3101 49 = table3101 49 := by rfl

theorem table3101_entry050 :
    matchingVariables coloring3101 50 = table3101 50 := by rfl

theorem table3101_entry051 :
    matchingVariables coloring3101 51 = table3101 51 := by rfl

theorem table3101_entry052 :
    matchingVariables coloring3101 52 = table3101 52 := by rfl

theorem table3101_entry053 :
    matchingVariables coloring3101 53 = table3101 53 := by rfl

theorem table3101_entry054 :
    matchingVariables coloring3101 54 = table3101 54 := by rfl

theorem table3101_entry055 :
    matchingVariables coloring3101 55 = table3101 55 := by rfl

theorem table3101_entry056 :
    matchingVariables coloring3101 56 = table3101 56 := by rfl

theorem table3101_entry057 :
    matchingVariables coloring3101 57 = table3101 57 := by rfl

theorem table3101_entry058 :
    matchingVariables coloring3101 58 = table3101 58 := by rfl

theorem table3101_entry059 :
    matchingVariables coloring3101 59 = table3101 59 := by rfl

theorem table3101_entry060 :
    matchingVariables coloring3101 60 = table3101 60 := by rfl

theorem table3101_entry061 :
    matchingVariables coloring3101 61 = table3101 61 := by rfl

theorem table3101_entry062 :
    matchingVariables coloring3101 62 = table3101 62 := by rfl

theorem table3101_entry063 :
    matchingVariables coloring3101 63 = table3101 63 := by rfl

theorem table3101_entry064 :
    matchingVariables coloring3101 64 = table3101 64 := by rfl

theorem table3101_entry065 :
    matchingVariables coloring3101 65 = table3101 65 := by rfl

theorem table3101_entry066 :
    matchingVariables coloring3101 66 = table3101 66 := by rfl

theorem table3101_entry067 :
    matchingVariables coloring3101 67 = table3101 67 := by rfl

theorem table3101_entry068 :
    matchingVariables coloring3101 68 = table3101 68 := by rfl

theorem table3101_entry069 :
    matchingVariables coloring3101 69 = table3101 69 := by rfl

theorem table3101_entry070 :
    matchingVariables coloring3101 70 = table3101 70 := by rfl

theorem table3101_entry071 :
    matchingVariables coloring3101 71 = table3101 71 := by rfl

theorem table3101_entry072 :
    matchingVariables coloring3101 72 = table3101 72 := by rfl

theorem table3101_entry073 :
    matchingVariables coloring3101 73 = table3101 73 := by rfl

theorem table3101_entry074 :
    matchingVariables coloring3101 74 = table3101 74 := by rfl

theorem table3101_entry075 :
    matchingVariables coloring3101 75 = table3101 75 := by rfl

theorem table3101_entry076 :
    matchingVariables coloring3101 76 = table3101 76 := by rfl

theorem table3101_entry077 :
    matchingVariables coloring3101 77 = table3101 77 := by rfl

theorem table3101_entry078 :
    matchingVariables coloring3101 78 = table3101 78 := by rfl

theorem table3101_entry079 :
    matchingVariables coloring3101 79 = table3101 79 := by rfl

theorem table3101_entry080 :
    matchingVariables coloring3101 80 = table3101 80 := by rfl

theorem table3101_entry081 :
    matchingVariables coloring3101 81 = table3101 81 := by rfl

theorem table3101_entry082 :
    matchingVariables coloring3101 82 = table3101 82 := by rfl

theorem table3101_entry083 :
    matchingVariables coloring3101 83 = table3101 83 := by rfl

theorem table3101_entry084 :
    matchingVariables coloring3101 84 = table3101 84 := by rfl

theorem table3101_entry085 :
    matchingVariables coloring3101 85 = table3101 85 := by rfl

theorem table3101_entry086 :
    matchingVariables coloring3101 86 = table3101 86 := by rfl

theorem table3101_entry087 :
    matchingVariables coloring3101 87 = table3101 87 := by rfl

theorem table3101_entry088 :
    matchingVariables coloring3101 88 = table3101 88 := by rfl

theorem table3101_entry089 :
    matchingVariables coloring3101 89 = table3101 89 := by rfl

theorem table3101_entry090 :
    matchingVariables coloring3101 90 = table3101 90 := by rfl

theorem table3101_entry091 :
    matchingVariables coloring3101 91 = table3101 91 := by rfl

theorem table3101_entry092 :
    matchingVariables coloring3101 92 = table3101 92 := by rfl

theorem table3101_entry093 :
    matchingVariables coloring3101 93 = table3101 93 := by rfl

theorem table3101_entry094 :
    matchingVariables coloring3101 94 = table3101 94 := by rfl

theorem table3101_entry095 :
    matchingVariables coloring3101 95 = table3101 95 := by rfl

theorem table3101_entry096 :
    matchingVariables coloring3101 96 = table3101 96 := by rfl

theorem table3101_entry097 :
    matchingVariables coloring3101 97 = table3101 97 := by rfl

theorem table3101_entry098 :
    matchingVariables coloring3101 98 = table3101 98 := by rfl

theorem table3101_entry099 :
    matchingVariables coloring3101 99 = table3101 99 := by rfl

theorem table3101_entry100 :
    matchingVariables coloring3101 100 = table3101 100 := by rfl

theorem table3101_entry101 :
    matchingVariables coloring3101 101 = table3101 101 := by rfl

theorem table3101_entry102 :
    matchingVariables coloring3101 102 = table3101 102 := by rfl

theorem table3101_entry103 :
    matchingVariables coloring3101 103 = table3101 103 := by rfl

theorem table3101_entry104 :
    matchingVariables coloring3101 104 = table3101 104 := by rfl

theorem table3101_complete : ∀ m, matchingVariables coloring3101 m = table3101 m := by
  intro m
  fin_cases m
  · exact table3101_entry000
  · exact table3101_entry001
  · exact table3101_entry002
  · exact table3101_entry003
  · exact table3101_entry004
  · exact table3101_entry005
  · exact table3101_entry006
  · exact table3101_entry007
  · exact table3101_entry008
  · exact table3101_entry009
  · exact table3101_entry010
  · exact table3101_entry011
  · exact table3101_entry012
  · exact table3101_entry013
  · exact table3101_entry014
  · exact table3101_entry015
  · exact table3101_entry016
  · exact table3101_entry017
  · exact table3101_entry018
  · exact table3101_entry019
  · exact table3101_entry020
  · exact table3101_entry021
  · exact table3101_entry022
  · exact table3101_entry023
  · exact table3101_entry024
  · exact table3101_entry025
  · exact table3101_entry026
  · exact table3101_entry027
  · exact table3101_entry028
  · exact table3101_entry029
  · exact table3101_entry030
  · exact table3101_entry031
  · exact table3101_entry032
  · exact table3101_entry033
  · exact table3101_entry034
  · exact table3101_entry035
  · exact table3101_entry036
  · exact table3101_entry037
  · exact table3101_entry038
  · exact table3101_entry039
  · exact table3101_entry040
  · exact table3101_entry041
  · exact table3101_entry042
  · exact table3101_entry043
  · exact table3101_entry044
  · exact table3101_entry045
  · exact table3101_entry046
  · exact table3101_entry047
  · exact table3101_entry048
  · exact table3101_entry049
  · exact table3101_entry050
  · exact table3101_entry051
  · exact table3101_entry052
  · exact table3101_entry053
  · exact table3101_entry054
  · exact table3101_entry055
  · exact table3101_entry056
  · exact table3101_entry057
  · exact table3101_entry058
  · exact table3101_entry059
  · exact table3101_entry060
  · exact table3101_entry061
  · exact table3101_entry062
  · exact table3101_entry063
  · exact table3101_entry064
  · exact table3101_entry065
  · exact table3101_entry066
  · exact table3101_entry067
  · exact table3101_entry068
  · exact table3101_entry069
  · exact table3101_entry070
  · exact table3101_entry071
  · exact table3101_entry072
  · exact table3101_entry073
  · exact table3101_entry074
  · exact table3101_entry075
  · exact table3101_entry076
  · exact table3101_entry077
  · exact table3101_entry078
  · exact table3101_entry079
  · exact table3101_entry080
  · exact table3101_entry081
  · exact table3101_entry082
  · exact table3101_entry083
  · exact table3101_entry084
  · exact table3101_entry085
  · exact table3101_entry086
  · exact table3101_entry087
  · exact table3101_entry088
  · exact table3101_entry089
  · exact table3101_entry090
  · exact table3101_entry091
  · exact table3101_entry092
  · exact table3101_entry093
  · exact table3101_entry094
  · exact table3101_entry095
  · exact table3101_entry096
  · exact table3101_entry097
  · exact table3101_entry098
  · exact table3101_entry099
  · exact table3101_entry100
  · exact table3101_entry101
  · exact table3101_entry102
  · exact table3101_entry103
  · exact table3101_entry104

#print axioms table3101_complete

def expanded3101 : Polynomial 143 := [(1, exponentOfVariables [7, 63, 104, 138]),
  (1, exponentOfVariables [7, 75, 84, 138]),
  (1, exponentOfVariables [17, 41, 84, 138]),
  (1, exponentOfVariables [17, 51, 84, 126]),
  (1, exponentOfVariables [17, 51, 91, 122]),
  (1, exponentOfVariables [24, 51, 75, 122])]

theorem table3101_expanded : tablePolynomial table3101 = expanded3101 := by
  rfl

theorem table3101_exponent00 :
    exponentOfVariables (n := 143) [7, 63, 104, 138] =
      (fun i => if i.val = 7 then (1) else if i.val = 63 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3101_exponent01 :
    exponentOfVariables (n := 143) [7, 75, 84, 138] =
      (fun i => if i.val = 7 then (1) else if i.val = 75 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3101_exponent02 :
    exponentOfVariables (n := 143) [17, 41, 84, 138] =
      (fun i => if i.val = 17 then (1) else if i.val = 41 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3101_exponent03 :
    exponentOfVariables (n := 143) [17, 51, 84, 126] =
      (fun i => if i.val = 17 then (1) else if i.val = 51 then (1) else if i.val = 84 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3101_exponent04 :
    exponentOfVariables (n := 143) [17, 51, 91, 122] =
      (fun i => if i.val = 17 then (1) else if i.val = 51 then (1) else if i.val = 91 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3101_exponent05 :
    exponentOfVariables (n := 143) [24, 51, 75, 122] =
      (fun i => if i.val = 24 then (1) else if i.val = 51 then (1) else if i.val = 75 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3101_polynomial : expanded3101 = amplitude3101 := by
  simp only [expanded3101, amplitude3101, table3101_exponent00, table3101_exponent01, table3101_exponent02, table3101_exponent03, table3101_exponent04, table3101_exponent05]

theorem premiseCheck111 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3101)) p111 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
