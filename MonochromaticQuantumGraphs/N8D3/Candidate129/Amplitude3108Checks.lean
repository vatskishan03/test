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

def coloring3108 : Fin 8 → Fin 3 := ![0, 1, 0, 1, 2, 0, 1, 1]

def table3108 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 58, 104, 138] else
    if m.val = 6 then some [1, 69, 87, 138] else
    if m.val = 21 then some [9, 41, 87, 138] else
    if m.val = 24 then some [9, 51, 87, 126] else
    if m.val = 26 then some [9, 51, 97, 104] else
    if m.val = 40 then some [19, 51, 69, 122] else none

theorem table3108_entry000 :
    matchingVariables coloring3108 0 = table3108 0 := by rfl

theorem table3108_entry001 :
    matchingVariables coloring3108 1 = table3108 1 := by rfl

theorem table3108_entry002 :
    matchingVariables coloring3108 2 = table3108 2 := by rfl

theorem table3108_entry003 :
    matchingVariables coloring3108 3 = table3108 3 := by rfl

theorem table3108_entry004 :
    matchingVariables coloring3108 4 = table3108 4 := by rfl

theorem table3108_entry005 :
    matchingVariables coloring3108 5 = table3108 5 := by rfl

theorem table3108_entry006 :
    matchingVariables coloring3108 6 = table3108 6 := by rfl

theorem table3108_entry007 :
    matchingVariables coloring3108 7 = table3108 7 := by rfl

theorem table3108_entry008 :
    matchingVariables coloring3108 8 = table3108 8 := by rfl

theorem table3108_entry009 :
    matchingVariables coloring3108 9 = table3108 9 := by rfl

theorem table3108_entry010 :
    matchingVariables coloring3108 10 = table3108 10 := by rfl

theorem table3108_entry011 :
    matchingVariables coloring3108 11 = table3108 11 := by rfl

theorem table3108_entry012 :
    matchingVariables coloring3108 12 = table3108 12 := by rfl

theorem table3108_entry013 :
    matchingVariables coloring3108 13 = table3108 13 := by rfl

theorem table3108_entry014 :
    matchingVariables coloring3108 14 = table3108 14 := by rfl

theorem table3108_entry015 :
    matchingVariables coloring3108 15 = table3108 15 := by rfl

theorem table3108_entry016 :
    matchingVariables coloring3108 16 = table3108 16 := by rfl

theorem table3108_entry017 :
    matchingVariables coloring3108 17 = table3108 17 := by rfl

theorem table3108_entry018 :
    matchingVariables coloring3108 18 = table3108 18 := by rfl

theorem table3108_entry019 :
    matchingVariables coloring3108 19 = table3108 19 := by rfl

theorem table3108_entry020 :
    matchingVariables coloring3108 20 = table3108 20 := by rfl

theorem table3108_entry021 :
    matchingVariables coloring3108 21 = table3108 21 := by rfl

theorem table3108_entry022 :
    matchingVariables coloring3108 22 = table3108 22 := by rfl

theorem table3108_entry023 :
    matchingVariables coloring3108 23 = table3108 23 := by rfl

theorem table3108_entry024 :
    matchingVariables coloring3108 24 = table3108 24 := by rfl

theorem table3108_entry025 :
    matchingVariables coloring3108 25 = table3108 25 := by rfl

theorem table3108_entry026 :
    matchingVariables coloring3108 26 = table3108 26 := by rfl

theorem table3108_entry027 :
    matchingVariables coloring3108 27 = table3108 27 := by rfl

theorem table3108_entry028 :
    matchingVariables coloring3108 28 = table3108 28 := by rfl

theorem table3108_entry029 :
    matchingVariables coloring3108 29 = table3108 29 := by rfl

theorem table3108_entry030 :
    matchingVariables coloring3108 30 = table3108 30 := by rfl

theorem table3108_entry031 :
    matchingVariables coloring3108 31 = table3108 31 := by rfl

theorem table3108_entry032 :
    matchingVariables coloring3108 32 = table3108 32 := by rfl

theorem table3108_entry033 :
    matchingVariables coloring3108 33 = table3108 33 := by rfl

theorem table3108_entry034 :
    matchingVariables coloring3108 34 = table3108 34 := by rfl

theorem table3108_entry035 :
    matchingVariables coloring3108 35 = table3108 35 := by rfl

theorem table3108_entry036 :
    matchingVariables coloring3108 36 = table3108 36 := by rfl

theorem table3108_entry037 :
    matchingVariables coloring3108 37 = table3108 37 := by rfl

theorem table3108_entry038 :
    matchingVariables coloring3108 38 = table3108 38 := by rfl

theorem table3108_entry039 :
    matchingVariables coloring3108 39 = table3108 39 := by rfl

theorem table3108_entry040 :
    matchingVariables coloring3108 40 = table3108 40 := by rfl

theorem table3108_entry041 :
    matchingVariables coloring3108 41 = table3108 41 := by rfl

theorem table3108_entry042 :
    matchingVariables coloring3108 42 = table3108 42 := by rfl

theorem table3108_entry043 :
    matchingVariables coloring3108 43 = table3108 43 := by rfl

theorem table3108_entry044 :
    matchingVariables coloring3108 44 = table3108 44 := by rfl

theorem table3108_entry045 :
    matchingVariables coloring3108 45 = table3108 45 := by rfl

theorem table3108_entry046 :
    matchingVariables coloring3108 46 = table3108 46 := by rfl

theorem table3108_entry047 :
    matchingVariables coloring3108 47 = table3108 47 := by rfl

theorem table3108_entry048 :
    matchingVariables coloring3108 48 = table3108 48 := by rfl

theorem table3108_entry049 :
    matchingVariables coloring3108 49 = table3108 49 := by rfl

theorem table3108_entry050 :
    matchingVariables coloring3108 50 = table3108 50 := by rfl

theorem table3108_entry051 :
    matchingVariables coloring3108 51 = table3108 51 := by rfl

theorem table3108_entry052 :
    matchingVariables coloring3108 52 = table3108 52 := by rfl

theorem table3108_entry053 :
    matchingVariables coloring3108 53 = table3108 53 := by rfl

theorem table3108_entry054 :
    matchingVariables coloring3108 54 = table3108 54 := by rfl

theorem table3108_entry055 :
    matchingVariables coloring3108 55 = table3108 55 := by rfl

theorem table3108_entry056 :
    matchingVariables coloring3108 56 = table3108 56 := by rfl

theorem table3108_entry057 :
    matchingVariables coloring3108 57 = table3108 57 := by rfl

theorem table3108_entry058 :
    matchingVariables coloring3108 58 = table3108 58 := by rfl

theorem table3108_entry059 :
    matchingVariables coloring3108 59 = table3108 59 := by rfl

theorem table3108_entry060 :
    matchingVariables coloring3108 60 = table3108 60 := by rfl

theorem table3108_entry061 :
    matchingVariables coloring3108 61 = table3108 61 := by rfl

theorem table3108_entry062 :
    matchingVariables coloring3108 62 = table3108 62 := by rfl

theorem table3108_entry063 :
    matchingVariables coloring3108 63 = table3108 63 := by rfl

theorem table3108_entry064 :
    matchingVariables coloring3108 64 = table3108 64 := by rfl

theorem table3108_entry065 :
    matchingVariables coloring3108 65 = table3108 65 := by rfl

theorem table3108_entry066 :
    matchingVariables coloring3108 66 = table3108 66 := by rfl

theorem table3108_entry067 :
    matchingVariables coloring3108 67 = table3108 67 := by rfl

theorem table3108_entry068 :
    matchingVariables coloring3108 68 = table3108 68 := by rfl

theorem table3108_entry069 :
    matchingVariables coloring3108 69 = table3108 69 := by rfl

theorem table3108_entry070 :
    matchingVariables coloring3108 70 = table3108 70 := by rfl

theorem table3108_entry071 :
    matchingVariables coloring3108 71 = table3108 71 := by rfl

theorem table3108_entry072 :
    matchingVariables coloring3108 72 = table3108 72 := by rfl

theorem table3108_entry073 :
    matchingVariables coloring3108 73 = table3108 73 := by rfl

theorem table3108_entry074 :
    matchingVariables coloring3108 74 = table3108 74 := by rfl

theorem table3108_entry075 :
    matchingVariables coloring3108 75 = table3108 75 := by rfl

theorem table3108_entry076 :
    matchingVariables coloring3108 76 = table3108 76 := by rfl

theorem table3108_entry077 :
    matchingVariables coloring3108 77 = table3108 77 := by rfl

theorem table3108_entry078 :
    matchingVariables coloring3108 78 = table3108 78 := by rfl

theorem table3108_entry079 :
    matchingVariables coloring3108 79 = table3108 79 := by rfl

theorem table3108_entry080 :
    matchingVariables coloring3108 80 = table3108 80 := by rfl

theorem table3108_entry081 :
    matchingVariables coloring3108 81 = table3108 81 := by rfl

theorem table3108_entry082 :
    matchingVariables coloring3108 82 = table3108 82 := by rfl

theorem table3108_entry083 :
    matchingVariables coloring3108 83 = table3108 83 := by rfl

theorem table3108_entry084 :
    matchingVariables coloring3108 84 = table3108 84 := by rfl

theorem table3108_entry085 :
    matchingVariables coloring3108 85 = table3108 85 := by rfl

theorem table3108_entry086 :
    matchingVariables coloring3108 86 = table3108 86 := by rfl

theorem table3108_entry087 :
    matchingVariables coloring3108 87 = table3108 87 := by rfl

theorem table3108_entry088 :
    matchingVariables coloring3108 88 = table3108 88 := by rfl

theorem table3108_entry089 :
    matchingVariables coloring3108 89 = table3108 89 := by rfl

theorem table3108_entry090 :
    matchingVariables coloring3108 90 = table3108 90 := by rfl

theorem table3108_entry091 :
    matchingVariables coloring3108 91 = table3108 91 := by rfl

theorem table3108_entry092 :
    matchingVariables coloring3108 92 = table3108 92 := by rfl

theorem table3108_entry093 :
    matchingVariables coloring3108 93 = table3108 93 := by rfl

theorem table3108_entry094 :
    matchingVariables coloring3108 94 = table3108 94 := by rfl

theorem table3108_entry095 :
    matchingVariables coloring3108 95 = table3108 95 := by rfl

theorem table3108_entry096 :
    matchingVariables coloring3108 96 = table3108 96 := by rfl

theorem table3108_entry097 :
    matchingVariables coloring3108 97 = table3108 97 := by rfl

theorem table3108_entry098 :
    matchingVariables coloring3108 98 = table3108 98 := by rfl

theorem table3108_entry099 :
    matchingVariables coloring3108 99 = table3108 99 := by rfl

theorem table3108_entry100 :
    matchingVariables coloring3108 100 = table3108 100 := by rfl

theorem table3108_entry101 :
    matchingVariables coloring3108 101 = table3108 101 := by rfl

theorem table3108_entry102 :
    matchingVariables coloring3108 102 = table3108 102 := by rfl

theorem table3108_entry103 :
    matchingVariables coloring3108 103 = table3108 103 := by rfl

theorem table3108_entry104 :
    matchingVariables coloring3108 104 = table3108 104 := by rfl

theorem table3108_complete : ∀ m, matchingVariables coloring3108 m = table3108 m := by
  intro m
  fin_cases m
  · exact table3108_entry000
  · exact table3108_entry001
  · exact table3108_entry002
  · exact table3108_entry003
  · exact table3108_entry004
  · exact table3108_entry005
  · exact table3108_entry006
  · exact table3108_entry007
  · exact table3108_entry008
  · exact table3108_entry009
  · exact table3108_entry010
  · exact table3108_entry011
  · exact table3108_entry012
  · exact table3108_entry013
  · exact table3108_entry014
  · exact table3108_entry015
  · exact table3108_entry016
  · exact table3108_entry017
  · exact table3108_entry018
  · exact table3108_entry019
  · exact table3108_entry020
  · exact table3108_entry021
  · exact table3108_entry022
  · exact table3108_entry023
  · exact table3108_entry024
  · exact table3108_entry025
  · exact table3108_entry026
  · exact table3108_entry027
  · exact table3108_entry028
  · exact table3108_entry029
  · exact table3108_entry030
  · exact table3108_entry031
  · exact table3108_entry032
  · exact table3108_entry033
  · exact table3108_entry034
  · exact table3108_entry035
  · exact table3108_entry036
  · exact table3108_entry037
  · exact table3108_entry038
  · exact table3108_entry039
  · exact table3108_entry040
  · exact table3108_entry041
  · exact table3108_entry042
  · exact table3108_entry043
  · exact table3108_entry044
  · exact table3108_entry045
  · exact table3108_entry046
  · exact table3108_entry047
  · exact table3108_entry048
  · exact table3108_entry049
  · exact table3108_entry050
  · exact table3108_entry051
  · exact table3108_entry052
  · exact table3108_entry053
  · exact table3108_entry054
  · exact table3108_entry055
  · exact table3108_entry056
  · exact table3108_entry057
  · exact table3108_entry058
  · exact table3108_entry059
  · exact table3108_entry060
  · exact table3108_entry061
  · exact table3108_entry062
  · exact table3108_entry063
  · exact table3108_entry064
  · exact table3108_entry065
  · exact table3108_entry066
  · exact table3108_entry067
  · exact table3108_entry068
  · exact table3108_entry069
  · exact table3108_entry070
  · exact table3108_entry071
  · exact table3108_entry072
  · exact table3108_entry073
  · exact table3108_entry074
  · exact table3108_entry075
  · exact table3108_entry076
  · exact table3108_entry077
  · exact table3108_entry078
  · exact table3108_entry079
  · exact table3108_entry080
  · exact table3108_entry081
  · exact table3108_entry082
  · exact table3108_entry083
  · exact table3108_entry084
  · exact table3108_entry085
  · exact table3108_entry086
  · exact table3108_entry087
  · exact table3108_entry088
  · exact table3108_entry089
  · exact table3108_entry090
  · exact table3108_entry091
  · exact table3108_entry092
  · exact table3108_entry093
  · exact table3108_entry094
  · exact table3108_entry095
  · exact table3108_entry096
  · exact table3108_entry097
  · exact table3108_entry098
  · exact table3108_entry099
  · exact table3108_entry100
  · exact table3108_entry101
  · exact table3108_entry102
  · exact table3108_entry103
  · exact table3108_entry104

#print axioms table3108_complete

def expanded3108 : Polynomial 143 := [(1, exponentOfVariables [1, 58, 104, 138]),
  (1, exponentOfVariables [1, 69, 87, 138]),
  (1, exponentOfVariables [9, 41, 87, 138]),
  (1, exponentOfVariables [9, 51, 87, 126]),
  (1, exponentOfVariables [9, 51, 97, 104]),
  (1, exponentOfVariables [19, 51, 69, 122])]

theorem table3108_expanded : tablePolynomial table3108 = expanded3108 := by
  rfl

theorem table3108_exponent00 :
    exponentOfVariables (n := 143) [1, 58, 104, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3108_exponent01 :
    exponentOfVariables (n := 143) [1, 69, 87, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3108_exponent02 :
    exponentOfVariables (n := 143) [9, 41, 87, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3108_exponent03 :
    exponentOfVariables (n := 143) [9, 51, 87, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3108_exponent04 :
    exponentOfVariables (n := 143) [9, 51, 97, 104] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3108_exponent05 :
    exponentOfVariables (n := 143) [19, 51, 69, 122] =
      (fun i => if i.val = 19 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3108_polynomial : expanded3108 = amplitude3108 := by
  simp only [expanded3108, amplitude3108, table3108_exponent00, table3108_exponent01, table3108_exponent02, table3108_exponent03, table3108_exponent04, table3108_exponent05]

theorem premiseCheck013 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3108)) p013 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
