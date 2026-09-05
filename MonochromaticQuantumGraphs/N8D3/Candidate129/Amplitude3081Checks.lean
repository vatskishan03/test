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

def coloring3081 : Fin 8 → Fin 3 := ![0, 1, 0, 0, 2, 0, 1, 1]

def table3081 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 57, 104, 138] else
    if m.val = 6 then some [1, 69, 84, 138] else
    if m.val = 21 then some [9, 41, 84, 138] else
    if m.val = 24 then some [9, 51, 84, 126] else
    if m.val = 25 then some [9, 51, 91, 122] else
    if m.val = 40 then some [18, 51, 69, 122] else none

theorem table3081_entry000 :
    matchingVariables coloring3081 0 = table3081 0 := by rfl

theorem table3081_entry001 :
    matchingVariables coloring3081 1 = table3081 1 := by rfl

theorem table3081_entry002 :
    matchingVariables coloring3081 2 = table3081 2 := by rfl

theorem table3081_entry003 :
    matchingVariables coloring3081 3 = table3081 3 := by rfl

theorem table3081_entry004 :
    matchingVariables coloring3081 4 = table3081 4 := by rfl

theorem table3081_entry005 :
    matchingVariables coloring3081 5 = table3081 5 := by rfl

theorem table3081_entry006 :
    matchingVariables coloring3081 6 = table3081 6 := by rfl

theorem table3081_entry007 :
    matchingVariables coloring3081 7 = table3081 7 := by rfl

theorem table3081_entry008 :
    matchingVariables coloring3081 8 = table3081 8 := by rfl

theorem table3081_entry009 :
    matchingVariables coloring3081 9 = table3081 9 := by rfl

theorem table3081_entry010 :
    matchingVariables coloring3081 10 = table3081 10 := by rfl

theorem table3081_entry011 :
    matchingVariables coloring3081 11 = table3081 11 := by rfl

theorem table3081_entry012 :
    matchingVariables coloring3081 12 = table3081 12 := by rfl

theorem table3081_entry013 :
    matchingVariables coloring3081 13 = table3081 13 := by rfl

theorem table3081_entry014 :
    matchingVariables coloring3081 14 = table3081 14 := by rfl

theorem table3081_entry015 :
    matchingVariables coloring3081 15 = table3081 15 := by rfl

theorem table3081_entry016 :
    matchingVariables coloring3081 16 = table3081 16 := by rfl

theorem table3081_entry017 :
    matchingVariables coloring3081 17 = table3081 17 := by rfl

theorem table3081_entry018 :
    matchingVariables coloring3081 18 = table3081 18 := by rfl

theorem table3081_entry019 :
    matchingVariables coloring3081 19 = table3081 19 := by rfl

theorem table3081_entry020 :
    matchingVariables coloring3081 20 = table3081 20 := by rfl

theorem table3081_entry021 :
    matchingVariables coloring3081 21 = table3081 21 := by rfl

theorem table3081_entry022 :
    matchingVariables coloring3081 22 = table3081 22 := by rfl

theorem table3081_entry023 :
    matchingVariables coloring3081 23 = table3081 23 := by rfl

theorem table3081_entry024 :
    matchingVariables coloring3081 24 = table3081 24 := by rfl

theorem table3081_entry025 :
    matchingVariables coloring3081 25 = table3081 25 := by rfl

theorem table3081_entry026 :
    matchingVariables coloring3081 26 = table3081 26 := by rfl

theorem table3081_entry027 :
    matchingVariables coloring3081 27 = table3081 27 := by rfl

theorem table3081_entry028 :
    matchingVariables coloring3081 28 = table3081 28 := by rfl

theorem table3081_entry029 :
    matchingVariables coloring3081 29 = table3081 29 := by rfl

theorem table3081_entry030 :
    matchingVariables coloring3081 30 = table3081 30 := by rfl

theorem table3081_entry031 :
    matchingVariables coloring3081 31 = table3081 31 := by rfl

theorem table3081_entry032 :
    matchingVariables coloring3081 32 = table3081 32 := by rfl

theorem table3081_entry033 :
    matchingVariables coloring3081 33 = table3081 33 := by rfl

theorem table3081_entry034 :
    matchingVariables coloring3081 34 = table3081 34 := by rfl

theorem table3081_entry035 :
    matchingVariables coloring3081 35 = table3081 35 := by rfl

theorem table3081_entry036 :
    matchingVariables coloring3081 36 = table3081 36 := by rfl

theorem table3081_entry037 :
    matchingVariables coloring3081 37 = table3081 37 := by rfl

theorem table3081_entry038 :
    matchingVariables coloring3081 38 = table3081 38 := by rfl

theorem table3081_entry039 :
    matchingVariables coloring3081 39 = table3081 39 := by rfl

theorem table3081_entry040 :
    matchingVariables coloring3081 40 = table3081 40 := by rfl

theorem table3081_entry041 :
    matchingVariables coloring3081 41 = table3081 41 := by rfl

theorem table3081_entry042 :
    matchingVariables coloring3081 42 = table3081 42 := by rfl

theorem table3081_entry043 :
    matchingVariables coloring3081 43 = table3081 43 := by rfl

theorem table3081_entry044 :
    matchingVariables coloring3081 44 = table3081 44 := by rfl

theorem table3081_entry045 :
    matchingVariables coloring3081 45 = table3081 45 := by rfl

theorem table3081_entry046 :
    matchingVariables coloring3081 46 = table3081 46 := by rfl

theorem table3081_entry047 :
    matchingVariables coloring3081 47 = table3081 47 := by rfl

theorem table3081_entry048 :
    matchingVariables coloring3081 48 = table3081 48 := by rfl

theorem table3081_entry049 :
    matchingVariables coloring3081 49 = table3081 49 := by rfl

theorem table3081_entry050 :
    matchingVariables coloring3081 50 = table3081 50 := by rfl

theorem table3081_entry051 :
    matchingVariables coloring3081 51 = table3081 51 := by rfl

theorem table3081_entry052 :
    matchingVariables coloring3081 52 = table3081 52 := by rfl

theorem table3081_entry053 :
    matchingVariables coloring3081 53 = table3081 53 := by rfl

theorem table3081_entry054 :
    matchingVariables coloring3081 54 = table3081 54 := by rfl

theorem table3081_entry055 :
    matchingVariables coloring3081 55 = table3081 55 := by rfl

theorem table3081_entry056 :
    matchingVariables coloring3081 56 = table3081 56 := by rfl

theorem table3081_entry057 :
    matchingVariables coloring3081 57 = table3081 57 := by rfl

theorem table3081_entry058 :
    matchingVariables coloring3081 58 = table3081 58 := by rfl

theorem table3081_entry059 :
    matchingVariables coloring3081 59 = table3081 59 := by rfl

theorem table3081_entry060 :
    matchingVariables coloring3081 60 = table3081 60 := by rfl

theorem table3081_entry061 :
    matchingVariables coloring3081 61 = table3081 61 := by rfl

theorem table3081_entry062 :
    matchingVariables coloring3081 62 = table3081 62 := by rfl

theorem table3081_entry063 :
    matchingVariables coloring3081 63 = table3081 63 := by rfl

theorem table3081_entry064 :
    matchingVariables coloring3081 64 = table3081 64 := by rfl

theorem table3081_entry065 :
    matchingVariables coloring3081 65 = table3081 65 := by rfl

theorem table3081_entry066 :
    matchingVariables coloring3081 66 = table3081 66 := by rfl

theorem table3081_entry067 :
    matchingVariables coloring3081 67 = table3081 67 := by rfl

theorem table3081_entry068 :
    matchingVariables coloring3081 68 = table3081 68 := by rfl

theorem table3081_entry069 :
    matchingVariables coloring3081 69 = table3081 69 := by rfl

theorem table3081_entry070 :
    matchingVariables coloring3081 70 = table3081 70 := by rfl

theorem table3081_entry071 :
    matchingVariables coloring3081 71 = table3081 71 := by rfl

theorem table3081_entry072 :
    matchingVariables coloring3081 72 = table3081 72 := by rfl

theorem table3081_entry073 :
    matchingVariables coloring3081 73 = table3081 73 := by rfl

theorem table3081_entry074 :
    matchingVariables coloring3081 74 = table3081 74 := by rfl

theorem table3081_entry075 :
    matchingVariables coloring3081 75 = table3081 75 := by rfl

theorem table3081_entry076 :
    matchingVariables coloring3081 76 = table3081 76 := by rfl

theorem table3081_entry077 :
    matchingVariables coloring3081 77 = table3081 77 := by rfl

theorem table3081_entry078 :
    matchingVariables coloring3081 78 = table3081 78 := by rfl

theorem table3081_entry079 :
    matchingVariables coloring3081 79 = table3081 79 := by rfl

theorem table3081_entry080 :
    matchingVariables coloring3081 80 = table3081 80 := by rfl

theorem table3081_entry081 :
    matchingVariables coloring3081 81 = table3081 81 := by rfl

theorem table3081_entry082 :
    matchingVariables coloring3081 82 = table3081 82 := by rfl

theorem table3081_entry083 :
    matchingVariables coloring3081 83 = table3081 83 := by rfl

theorem table3081_entry084 :
    matchingVariables coloring3081 84 = table3081 84 := by rfl

theorem table3081_entry085 :
    matchingVariables coloring3081 85 = table3081 85 := by rfl

theorem table3081_entry086 :
    matchingVariables coloring3081 86 = table3081 86 := by rfl

theorem table3081_entry087 :
    matchingVariables coloring3081 87 = table3081 87 := by rfl

theorem table3081_entry088 :
    matchingVariables coloring3081 88 = table3081 88 := by rfl

theorem table3081_entry089 :
    matchingVariables coloring3081 89 = table3081 89 := by rfl

theorem table3081_entry090 :
    matchingVariables coloring3081 90 = table3081 90 := by rfl

theorem table3081_entry091 :
    matchingVariables coloring3081 91 = table3081 91 := by rfl

theorem table3081_entry092 :
    matchingVariables coloring3081 92 = table3081 92 := by rfl

theorem table3081_entry093 :
    matchingVariables coloring3081 93 = table3081 93 := by rfl

theorem table3081_entry094 :
    matchingVariables coloring3081 94 = table3081 94 := by rfl

theorem table3081_entry095 :
    matchingVariables coloring3081 95 = table3081 95 := by rfl

theorem table3081_entry096 :
    matchingVariables coloring3081 96 = table3081 96 := by rfl

theorem table3081_entry097 :
    matchingVariables coloring3081 97 = table3081 97 := by rfl

theorem table3081_entry098 :
    matchingVariables coloring3081 98 = table3081 98 := by rfl

theorem table3081_entry099 :
    matchingVariables coloring3081 99 = table3081 99 := by rfl

theorem table3081_entry100 :
    matchingVariables coloring3081 100 = table3081 100 := by rfl

theorem table3081_entry101 :
    matchingVariables coloring3081 101 = table3081 101 := by rfl

theorem table3081_entry102 :
    matchingVariables coloring3081 102 = table3081 102 := by rfl

theorem table3081_entry103 :
    matchingVariables coloring3081 103 = table3081 103 := by rfl

theorem table3081_entry104 :
    matchingVariables coloring3081 104 = table3081 104 := by rfl

theorem table3081_complete : ∀ m, matchingVariables coloring3081 m = table3081 m := by
  intro m
  fin_cases m
  · exact table3081_entry000
  · exact table3081_entry001
  · exact table3081_entry002
  · exact table3081_entry003
  · exact table3081_entry004
  · exact table3081_entry005
  · exact table3081_entry006
  · exact table3081_entry007
  · exact table3081_entry008
  · exact table3081_entry009
  · exact table3081_entry010
  · exact table3081_entry011
  · exact table3081_entry012
  · exact table3081_entry013
  · exact table3081_entry014
  · exact table3081_entry015
  · exact table3081_entry016
  · exact table3081_entry017
  · exact table3081_entry018
  · exact table3081_entry019
  · exact table3081_entry020
  · exact table3081_entry021
  · exact table3081_entry022
  · exact table3081_entry023
  · exact table3081_entry024
  · exact table3081_entry025
  · exact table3081_entry026
  · exact table3081_entry027
  · exact table3081_entry028
  · exact table3081_entry029
  · exact table3081_entry030
  · exact table3081_entry031
  · exact table3081_entry032
  · exact table3081_entry033
  · exact table3081_entry034
  · exact table3081_entry035
  · exact table3081_entry036
  · exact table3081_entry037
  · exact table3081_entry038
  · exact table3081_entry039
  · exact table3081_entry040
  · exact table3081_entry041
  · exact table3081_entry042
  · exact table3081_entry043
  · exact table3081_entry044
  · exact table3081_entry045
  · exact table3081_entry046
  · exact table3081_entry047
  · exact table3081_entry048
  · exact table3081_entry049
  · exact table3081_entry050
  · exact table3081_entry051
  · exact table3081_entry052
  · exact table3081_entry053
  · exact table3081_entry054
  · exact table3081_entry055
  · exact table3081_entry056
  · exact table3081_entry057
  · exact table3081_entry058
  · exact table3081_entry059
  · exact table3081_entry060
  · exact table3081_entry061
  · exact table3081_entry062
  · exact table3081_entry063
  · exact table3081_entry064
  · exact table3081_entry065
  · exact table3081_entry066
  · exact table3081_entry067
  · exact table3081_entry068
  · exact table3081_entry069
  · exact table3081_entry070
  · exact table3081_entry071
  · exact table3081_entry072
  · exact table3081_entry073
  · exact table3081_entry074
  · exact table3081_entry075
  · exact table3081_entry076
  · exact table3081_entry077
  · exact table3081_entry078
  · exact table3081_entry079
  · exact table3081_entry080
  · exact table3081_entry081
  · exact table3081_entry082
  · exact table3081_entry083
  · exact table3081_entry084
  · exact table3081_entry085
  · exact table3081_entry086
  · exact table3081_entry087
  · exact table3081_entry088
  · exact table3081_entry089
  · exact table3081_entry090
  · exact table3081_entry091
  · exact table3081_entry092
  · exact table3081_entry093
  · exact table3081_entry094
  · exact table3081_entry095
  · exact table3081_entry096
  · exact table3081_entry097
  · exact table3081_entry098
  · exact table3081_entry099
  · exact table3081_entry100
  · exact table3081_entry101
  · exact table3081_entry102
  · exact table3081_entry103
  · exact table3081_entry104

#print axioms table3081_complete

def expanded3081 : Polynomial 143 := [(1, exponentOfVariables [1, 57, 104, 138]),
  (1, exponentOfVariables [1, 69, 84, 138]),
  (1, exponentOfVariables [9, 41, 84, 138]),
  (1, exponentOfVariables [9, 51, 84, 126]),
  (1, exponentOfVariables [9, 51, 91, 122]),
  (1, exponentOfVariables [18, 51, 69, 122])]

theorem table3081_expanded : tablePolynomial table3081 = expanded3081 := by
  rfl

theorem table3081_exponent00 :
    exponentOfVariables (n := 143) [1, 57, 104, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 57 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3081_exponent01 :
    exponentOfVariables (n := 143) [1, 69, 84, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3081_exponent02 :
    exponentOfVariables (n := 143) [9, 41, 84, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3081_exponent03 :
    exponentOfVariables (n := 143) [9, 51, 84, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 84 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3081_exponent04 :
    exponentOfVariables (n := 143) [9, 51, 91, 122] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 91 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3081_exponent05 :
    exponentOfVariables (n := 143) [18, 51, 69, 122] =
      (fun i => if i.val = 18 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3081_polynomial : expanded3081 = amplitude3081 := by
  simp only [expanded3081, amplitude3081, table3081_exponent00, table3081_exponent01, table3081_exponent02, table3081_exponent03, table3081_exponent04, table3081_exponent05]

theorem premiseCheck061 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3081)) p061 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
