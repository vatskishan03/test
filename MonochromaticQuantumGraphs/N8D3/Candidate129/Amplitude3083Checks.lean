import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3083 : Fin 8 → Fin 3 := ![2, 1, 0, 0, 2, 0, 1, 1]

def table3083 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [7, 57, 104, 138] else
    if m.val = 6 then some [7, 69, 84, 138] else
    if m.val = 21 then some [15, 41, 84, 138] else
    if m.val = 24 then some [15, 51, 84, 126] else
    if m.val = 25 then some [15, 51, 91, 122] else
    if m.val = 40 then some [24, 51, 69, 122] else none

theorem table3083_entry000 :
    matchingVariables coloring3083 0 = table3083 0 := by rfl

theorem table3083_entry001 :
    matchingVariables coloring3083 1 = table3083 1 := by rfl

theorem table3083_entry002 :
    matchingVariables coloring3083 2 = table3083 2 := by rfl

theorem table3083_entry003 :
    matchingVariables coloring3083 3 = table3083 3 := by rfl

theorem table3083_entry004 :
    matchingVariables coloring3083 4 = table3083 4 := by rfl

theorem table3083_entry005 :
    matchingVariables coloring3083 5 = table3083 5 := by rfl

theorem table3083_entry006 :
    matchingVariables coloring3083 6 = table3083 6 := by rfl

theorem table3083_entry007 :
    matchingVariables coloring3083 7 = table3083 7 := by rfl

theorem table3083_entry008 :
    matchingVariables coloring3083 8 = table3083 8 := by rfl

theorem table3083_entry009 :
    matchingVariables coloring3083 9 = table3083 9 := by rfl

theorem table3083_entry010 :
    matchingVariables coloring3083 10 = table3083 10 := by rfl

theorem table3083_entry011 :
    matchingVariables coloring3083 11 = table3083 11 := by rfl

theorem table3083_entry012 :
    matchingVariables coloring3083 12 = table3083 12 := by rfl

theorem table3083_entry013 :
    matchingVariables coloring3083 13 = table3083 13 := by rfl

theorem table3083_entry014 :
    matchingVariables coloring3083 14 = table3083 14 := by rfl

theorem table3083_entry015 :
    matchingVariables coloring3083 15 = table3083 15 := by rfl

theorem table3083_entry016 :
    matchingVariables coloring3083 16 = table3083 16 := by rfl

theorem table3083_entry017 :
    matchingVariables coloring3083 17 = table3083 17 := by rfl

theorem table3083_entry018 :
    matchingVariables coloring3083 18 = table3083 18 := by rfl

theorem table3083_entry019 :
    matchingVariables coloring3083 19 = table3083 19 := by rfl

theorem table3083_entry020 :
    matchingVariables coloring3083 20 = table3083 20 := by rfl

theorem table3083_entry021 :
    matchingVariables coloring3083 21 = table3083 21 := by rfl

theorem table3083_entry022 :
    matchingVariables coloring3083 22 = table3083 22 := by rfl

theorem table3083_entry023 :
    matchingVariables coloring3083 23 = table3083 23 := by rfl

theorem table3083_entry024 :
    matchingVariables coloring3083 24 = table3083 24 := by rfl

theorem table3083_entry025 :
    matchingVariables coloring3083 25 = table3083 25 := by rfl

theorem table3083_entry026 :
    matchingVariables coloring3083 26 = table3083 26 := by rfl

theorem table3083_entry027 :
    matchingVariables coloring3083 27 = table3083 27 := by rfl

theorem table3083_entry028 :
    matchingVariables coloring3083 28 = table3083 28 := by rfl

theorem table3083_entry029 :
    matchingVariables coloring3083 29 = table3083 29 := by rfl

theorem table3083_entry030 :
    matchingVariables coloring3083 30 = table3083 30 := by rfl

theorem table3083_entry031 :
    matchingVariables coloring3083 31 = table3083 31 := by rfl

theorem table3083_entry032 :
    matchingVariables coloring3083 32 = table3083 32 := by rfl

theorem table3083_entry033 :
    matchingVariables coloring3083 33 = table3083 33 := by rfl

theorem table3083_entry034 :
    matchingVariables coloring3083 34 = table3083 34 := by rfl

theorem table3083_entry035 :
    matchingVariables coloring3083 35 = table3083 35 := by rfl

theorem table3083_entry036 :
    matchingVariables coloring3083 36 = table3083 36 := by rfl

theorem table3083_entry037 :
    matchingVariables coloring3083 37 = table3083 37 := by rfl

theorem table3083_entry038 :
    matchingVariables coloring3083 38 = table3083 38 := by rfl

theorem table3083_entry039 :
    matchingVariables coloring3083 39 = table3083 39 := by rfl

theorem table3083_entry040 :
    matchingVariables coloring3083 40 = table3083 40 := by rfl

theorem table3083_entry041 :
    matchingVariables coloring3083 41 = table3083 41 := by rfl

theorem table3083_entry042 :
    matchingVariables coloring3083 42 = table3083 42 := by rfl

theorem table3083_entry043 :
    matchingVariables coloring3083 43 = table3083 43 := by rfl

theorem table3083_entry044 :
    matchingVariables coloring3083 44 = table3083 44 := by rfl

theorem table3083_entry045 :
    matchingVariables coloring3083 45 = table3083 45 := by rfl

theorem table3083_entry046 :
    matchingVariables coloring3083 46 = table3083 46 := by rfl

theorem table3083_entry047 :
    matchingVariables coloring3083 47 = table3083 47 := by rfl

theorem table3083_entry048 :
    matchingVariables coloring3083 48 = table3083 48 := by rfl

theorem table3083_entry049 :
    matchingVariables coloring3083 49 = table3083 49 := by rfl

theorem table3083_entry050 :
    matchingVariables coloring3083 50 = table3083 50 := by rfl

theorem table3083_entry051 :
    matchingVariables coloring3083 51 = table3083 51 := by rfl

theorem table3083_entry052 :
    matchingVariables coloring3083 52 = table3083 52 := by rfl

theorem table3083_entry053 :
    matchingVariables coloring3083 53 = table3083 53 := by rfl

theorem table3083_entry054 :
    matchingVariables coloring3083 54 = table3083 54 := by rfl

theorem table3083_entry055 :
    matchingVariables coloring3083 55 = table3083 55 := by rfl

theorem table3083_entry056 :
    matchingVariables coloring3083 56 = table3083 56 := by rfl

theorem table3083_entry057 :
    matchingVariables coloring3083 57 = table3083 57 := by rfl

theorem table3083_entry058 :
    matchingVariables coloring3083 58 = table3083 58 := by rfl

theorem table3083_entry059 :
    matchingVariables coloring3083 59 = table3083 59 := by rfl

theorem table3083_entry060 :
    matchingVariables coloring3083 60 = table3083 60 := by rfl

theorem table3083_entry061 :
    matchingVariables coloring3083 61 = table3083 61 := by rfl

theorem table3083_entry062 :
    matchingVariables coloring3083 62 = table3083 62 := by rfl

theorem table3083_entry063 :
    matchingVariables coloring3083 63 = table3083 63 := by rfl

theorem table3083_entry064 :
    matchingVariables coloring3083 64 = table3083 64 := by rfl

theorem table3083_entry065 :
    matchingVariables coloring3083 65 = table3083 65 := by rfl

theorem table3083_entry066 :
    matchingVariables coloring3083 66 = table3083 66 := by rfl

theorem table3083_entry067 :
    matchingVariables coloring3083 67 = table3083 67 := by rfl

theorem table3083_entry068 :
    matchingVariables coloring3083 68 = table3083 68 := by rfl

theorem table3083_entry069 :
    matchingVariables coloring3083 69 = table3083 69 := by rfl

theorem table3083_entry070 :
    matchingVariables coloring3083 70 = table3083 70 := by rfl

theorem table3083_entry071 :
    matchingVariables coloring3083 71 = table3083 71 := by rfl

theorem table3083_entry072 :
    matchingVariables coloring3083 72 = table3083 72 := by rfl

theorem table3083_entry073 :
    matchingVariables coloring3083 73 = table3083 73 := by rfl

theorem table3083_entry074 :
    matchingVariables coloring3083 74 = table3083 74 := by rfl

theorem table3083_entry075 :
    matchingVariables coloring3083 75 = table3083 75 := by rfl

theorem table3083_entry076 :
    matchingVariables coloring3083 76 = table3083 76 := by rfl

theorem table3083_entry077 :
    matchingVariables coloring3083 77 = table3083 77 := by rfl

theorem table3083_entry078 :
    matchingVariables coloring3083 78 = table3083 78 := by rfl

theorem table3083_entry079 :
    matchingVariables coloring3083 79 = table3083 79 := by rfl

theorem table3083_entry080 :
    matchingVariables coloring3083 80 = table3083 80 := by rfl

theorem table3083_entry081 :
    matchingVariables coloring3083 81 = table3083 81 := by rfl

theorem table3083_entry082 :
    matchingVariables coloring3083 82 = table3083 82 := by rfl

theorem table3083_entry083 :
    matchingVariables coloring3083 83 = table3083 83 := by rfl

theorem table3083_entry084 :
    matchingVariables coloring3083 84 = table3083 84 := by rfl

theorem table3083_entry085 :
    matchingVariables coloring3083 85 = table3083 85 := by rfl

theorem table3083_entry086 :
    matchingVariables coloring3083 86 = table3083 86 := by rfl

theorem table3083_entry087 :
    matchingVariables coloring3083 87 = table3083 87 := by rfl

theorem table3083_entry088 :
    matchingVariables coloring3083 88 = table3083 88 := by rfl

theorem table3083_entry089 :
    matchingVariables coloring3083 89 = table3083 89 := by rfl

theorem table3083_entry090 :
    matchingVariables coloring3083 90 = table3083 90 := by rfl

theorem table3083_entry091 :
    matchingVariables coloring3083 91 = table3083 91 := by rfl

theorem table3083_entry092 :
    matchingVariables coloring3083 92 = table3083 92 := by rfl

theorem table3083_entry093 :
    matchingVariables coloring3083 93 = table3083 93 := by rfl

theorem table3083_entry094 :
    matchingVariables coloring3083 94 = table3083 94 := by rfl

theorem table3083_entry095 :
    matchingVariables coloring3083 95 = table3083 95 := by rfl

theorem table3083_entry096 :
    matchingVariables coloring3083 96 = table3083 96 := by rfl

theorem table3083_entry097 :
    matchingVariables coloring3083 97 = table3083 97 := by rfl

theorem table3083_entry098 :
    matchingVariables coloring3083 98 = table3083 98 := by rfl

theorem table3083_entry099 :
    matchingVariables coloring3083 99 = table3083 99 := by rfl

theorem table3083_entry100 :
    matchingVariables coloring3083 100 = table3083 100 := by rfl

theorem table3083_entry101 :
    matchingVariables coloring3083 101 = table3083 101 := by rfl

theorem table3083_entry102 :
    matchingVariables coloring3083 102 = table3083 102 := by rfl

theorem table3083_entry103 :
    matchingVariables coloring3083 103 = table3083 103 := by rfl

theorem table3083_entry104 :
    matchingVariables coloring3083 104 = table3083 104 := by rfl

theorem table3083_complete : ∀ m, matchingVariables coloring3083 m = table3083 m := by
  intro m
  fin_cases m
  · exact table3083_entry000
  · exact table3083_entry001
  · exact table3083_entry002
  · exact table3083_entry003
  · exact table3083_entry004
  · exact table3083_entry005
  · exact table3083_entry006
  · exact table3083_entry007
  · exact table3083_entry008
  · exact table3083_entry009
  · exact table3083_entry010
  · exact table3083_entry011
  · exact table3083_entry012
  · exact table3083_entry013
  · exact table3083_entry014
  · exact table3083_entry015
  · exact table3083_entry016
  · exact table3083_entry017
  · exact table3083_entry018
  · exact table3083_entry019
  · exact table3083_entry020
  · exact table3083_entry021
  · exact table3083_entry022
  · exact table3083_entry023
  · exact table3083_entry024
  · exact table3083_entry025
  · exact table3083_entry026
  · exact table3083_entry027
  · exact table3083_entry028
  · exact table3083_entry029
  · exact table3083_entry030
  · exact table3083_entry031
  · exact table3083_entry032
  · exact table3083_entry033
  · exact table3083_entry034
  · exact table3083_entry035
  · exact table3083_entry036
  · exact table3083_entry037
  · exact table3083_entry038
  · exact table3083_entry039
  · exact table3083_entry040
  · exact table3083_entry041
  · exact table3083_entry042
  · exact table3083_entry043
  · exact table3083_entry044
  · exact table3083_entry045
  · exact table3083_entry046
  · exact table3083_entry047
  · exact table3083_entry048
  · exact table3083_entry049
  · exact table3083_entry050
  · exact table3083_entry051
  · exact table3083_entry052
  · exact table3083_entry053
  · exact table3083_entry054
  · exact table3083_entry055
  · exact table3083_entry056
  · exact table3083_entry057
  · exact table3083_entry058
  · exact table3083_entry059
  · exact table3083_entry060
  · exact table3083_entry061
  · exact table3083_entry062
  · exact table3083_entry063
  · exact table3083_entry064
  · exact table3083_entry065
  · exact table3083_entry066
  · exact table3083_entry067
  · exact table3083_entry068
  · exact table3083_entry069
  · exact table3083_entry070
  · exact table3083_entry071
  · exact table3083_entry072
  · exact table3083_entry073
  · exact table3083_entry074
  · exact table3083_entry075
  · exact table3083_entry076
  · exact table3083_entry077
  · exact table3083_entry078
  · exact table3083_entry079
  · exact table3083_entry080
  · exact table3083_entry081
  · exact table3083_entry082
  · exact table3083_entry083
  · exact table3083_entry084
  · exact table3083_entry085
  · exact table3083_entry086
  · exact table3083_entry087
  · exact table3083_entry088
  · exact table3083_entry089
  · exact table3083_entry090
  · exact table3083_entry091
  · exact table3083_entry092
  · exact table3083_entry093
  · exact table3083_entry094
  · exact table3083_entry095
  · exact table3083_entry096
  · exact table3083_entry097
  · exact table3083_entry098
  · exact table3083_entry099
  · exact table3083_entry100
  · exact table3083_entry101
  · exact table3083_entry102
  · exact table3083_entry103
  · exact table3083_entry104

#print axioms table3083_complete

def expanded3083 : Polynomial 143 := [(1, exponentOfVariables [7, 57, 104, 138]),
  (1, exponentOfVariables [7, 69, 84, 138]),
  (1, exponentOfVariables [15, 41, 84, 138]),
  (1, exponentOfVariables [15, 51, 84, 126]),
  (1, exponentOfVariables [15, 51, 91, 122]),
  (1, exponentOfVariables [24, 51, 69, 122])]

theorem table3083_expanded : tablePolynomial table3083 = expanded3083 := by
  rfl

theorem table3083_exponent00 :
    exponentOfVariables (n := 143) [7, 57, 104, 138] =
      (fun i => if i.val = 7 then (1) else if i.val = 57 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3083_exponent01 :
    exponentOfVariables (n := 143) [7, 69, 84, 138] =
      (fun i => if i.val = 7 then (1) else if i.val = 69 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3083_exponent02 :
    exponentOfVariables (n := 143) [15, 41, 84, 138] =
      (fun i => if i.val = 15 then (1) else if i.val = 41 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3083_exponent03 :
    exponentOfVariables (n := 143) [15, 51, 84, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 84 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3083_exponent04 :
    exponentOfVariables (n := 143) [15, 51, 91, 122] =
      (fun i => if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 91 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3083_exponent05 :
    exponentOfVariables (n := 143) [24, 51, 69, 122] =
      (fun i => if i.val = 24 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3083_polynomial : expanded3083 = amplitude3083 := by
  simp only [expanded3083, amplitude3083, table3083_exponent00, table3083_exponent01, table3083_exponent02, table3083_exponent03, table3083_exponent04, table3083_exponent05]

theorem premiseCheck106 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3083)) p106 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
