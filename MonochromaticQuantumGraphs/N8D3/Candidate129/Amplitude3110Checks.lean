import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3110 : Fin 8 → Fin 3 := ![2, 1, 0, 1, 2, 0, 1, 1]

def table3110 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [7, 58, 104, 138] else
    if m.val = 6 then some [7, 69, 87, 138] else
    if m.val = 21 then some [15, 41, 87, 138] else
    if m.val = 24 then some [15, 51, 87, 126] else
    if m.val = 26 then some [15, 51, 97, 104] else
    if m.val = 40 then some [25, 51, 69, 122] else none

theorem table3110_entry000 :
    matchingVariables coloring3110 0 = table3110 0 := by rfl

theorem table3110_entry001 :
    matchingVariables coloring3110 1 = table3110 1 := by rfl

theorem table3110_entry002 :
    matchingVariables coloring3110 2 = table3110 2 := by rfl

theorem table3110_entry003 :
    matchingVariables coloring3110 3 = table3110 3 := by rfl

theorem table3110_entry004 :
    matchingVariables coloring3110 4 = table3110 4 := by rfl

theorem table3110_entry005 :
    matchingVariables coloring3110 5 = table3110 5 := by rfl

theorem table3110_entry006 :
    matchingVariables coloring3110 6 = table3110 6 := by rfl

theorem table3110_entry007 :
    matchingVariables coloring3110 7 = table3110 7 := by rfl

theorem table3110_entry008 :
    matchingVariables coloring3110 8 = table3110 8 := by rfl

theorem table3110_entry009 :
    matchingVariables coloring3110 9 = table3110 9 := by rfl

theorem table3110_entry010 :
    matchingVariables coloring3110 10 = table3110 10 := by rfl

theorem table3110_entry011 :
    matchingVariables coloring3110 11 = table3110 11 := by rfl

theorem table3110_entry012 :
    matchingVariables coloring3110 12 = table3110 12 := by rfl

theorem table3110_entry013 :
    matchingVariables coloring3110 13 = table3110 13 := by rfl

theorem table3110_entry014 :
    matchingVariables coloring3110 14 = table3110 14 := by rfl

theorem table3110_entry015 :
    matchingVariables coloring3110 15 = table3110 15 := by rfl

theorem table3110_entry016 :
    matchingVariables coloring3110 16 = table3110 16 := by rfl

theorem table3110_entry017 :
    matchingVariables coloring3110 17 = table3110 17 := by rfl

theorem table3110_entry018 :
    matchingVariables coloring3110 18 = table3110 18 := by rfl

theorem table3110_entry019 :
    matchingVariables coloring3110 19 = table3110 19 := by rfl

theorem table3110_entry020 :
    matchingVariables coloring3110 20 = table3110 20 := by rfl

theorem table3110_entry021 :
    matchingVariables coloring3110 21 = table3110 21 := by rfl

theorem table3110_entry022 :
    matchingVariables coloring3110 22 = table3110 22 := by rfl

theorem table3110_entry023 :
    matchingVariables coloring3110 23 = table3110 23 := by rfl

theorem table3110_entry024 :
    matchingVariables coloring3110 24 = table3110 24 := by rfl

theorem table3110_entry025 :
    matchingVariables coloring3110 25 = table3110 25 := by rfl

theorem table3110_entry026 :
    matchingVariables coloring3110 26 = table3110 26 := by rfl

theorem table3110_entry027 :
    matchingVariables coloring3110 27 = table3110 27 := by rfl

theorem table3110_entry028 :
    matchingVariables coloring3110 28 = table3110 28 := by rfl

theorem table3110_entry029 :
    matchingVariables coloring3110 29 = table3110 29 := by rfl

theorem table3110_entry030 :
    matchingVariables coloring3110 30 = table3110 30 := by rfl

theorem table3110_entry031 :
    matchingVariables coloring3110 31 = table3110 31 := by rfl

theorem table3110_entry032 :
    matchingVariables coloring3110 32 = table3110 32 := by rfl

theorem table3110_entry033 :
    matchingVariables coloring3110 33 = table3110 33 := by rfl

theorem table3110_entry034 :
    matchingVariables coloring3110 34 = table3110 34 := by rfl

theorem table3110_entry035 :
    matchingVariables coloring3110 35 = table3110 35 := by rfl

theorem table3110_entry036 :
    matchingVariables coloring3110 36 = table3110 36 := by rfl

theorem table3110_entry037 :
    matchingVariables coloring3110 37 = table3110 37 := by rfl

theorem table3110_entry038 :
    matchingVariables coloring3110 38 = table3110 38 := by rfl

theorem table3110_entry039 :
    matchingVariables coloring3110 39 = table3110 39 := by rfl

theorem table3110_entry040 :
    matchingVariables coloring3110 40 = table3110 40 := by rfl

theorem table3110_entry041 :
    matchingVariables coloring3110 41 = table3110 41 := by rfl

theorem table3110_entry042 :
    matchingVariables coloring3110 42 = table3110 42 := by rfl

theorem table3110_entry043 :
    matchingVariables coloring3110 43 = table3110 43 := by rfl

theorem table3110_entry044 :
    matchingVariables coloring3110 44 = table3110 44 := by rfl

theorem table3110_entry045 :
    matchingVariables coloring3110 45 = table3110 45 := by rfl

theorem table3110_entry046 :
    matchingVariables coloring3110 46 = table3110 46 := by rfl

theorem table3110_entry047 :
    matchingVariables coloring3110 47 = table3110 47 := by rfl

theorem table3110_entry048 :
    matchingVariables coloring3110 48 = table3110 48 := by rfl

theorem table3110_entry049 :
    matchingVariables coloring3110 49 = table3110 49 := by rfl

theorem table3110_entry050 :
    matchingVariables coloring3110 50 = table3110 50 := by rfl

theorem table3110_entry051 :
    matchingVariables coloring3110 51 = table3110 51 := by rfl

theorem table3110_entry052 :
    matchingVariables coloring3110 52 = table3110 52 := by rfl

theorem table3110_entry053 :
    matchingVariables coloring3110 53 = table3110 53 := by rfl

theorem table3110_entry054 :
    matchingVariables coloring3110 54 = table3110 54 := by rfl

theorem table3110_entry055 :
    matchingVariables coloring3110 55 = table3110 55 := by rfl

theorem table3110_entry056 :
    matchingVariables coloring3110 56 = table3110 56 := by rfl

theorem table3110_entry057 :
    matchingVariables coloring3110 57 = table3110 57 := by rfl

theorem table3110_entry058 :
    matchingVariables coloring3110 58 = table3110 58 := by rfl

theorem table3110_entry059 :
    matchingVariables coloring3110 59 = table3110 59 := by rfl

theorem table3110_entry060 :
    matchingVariables coloring3110 60 = table3110 60 := by rfl

theorem table3110_entry061 :
    matchingVariables coloring3110 61 = table3110 61 := by rfl

theorem table3110_entry062 :
    matchingVariables coloring3110 62 = table3110 62 := by rfl

theorem table3110_entry063 :
    matchingVariables coloring3110 63 = table3110 63 := by rfl

theorem table3110_entry064 :
    matchingVariables coloring3110 64 = table3110 64 := by rfl

theorem table3110_entry065 :
    matchingVariables coloring3110 65 = table3110 65 := by rfl

theorem table3110_entry066 :
    matchingVariables coloring3110 66 = table3110 66 := by rfl

theorem table3110_entry067 :
    matchingVariables coloring3110 67 = table3110 67 := by rfl

theorem table3110_entry068 :
    matchingVariables coloring3110 68 = table3110 68 := by rfl

theorem table3110_entry069 :
    matchingVariables coloring3110 69 = table3110 69 := by rfl

theorem table3110_entry070 :
    matchingVariables coloring3110 70 = table3110 70 := by rfl

theorem table3110_entry071 :
    matchingVariables coloring3110 71 = table3110 71 := by rfl

theorem table3110_entry072 :
    matchingVariables coloring3110 72 = table3110 72 := by rfl

theorem table3110_entry073 :
    matchingVariables coloring3110 73 = table3110 73 := by rfl

theorem table3110_entry074 :
    matchingVariables coloring3110 74 = table3110 74 := by rfl

theorem table3110_entry075 :
    matchingVariables coloring3110 75 = table3110 75 := by rfl

theorem table3110_entry076 :
    matchingVariables coloring3110 76 = table3110 76 := by rfl

theorem table3110_entry077 :
    matchingVariables coloring3110 77 = table3110 77 := by rfl

theorem table3110_entry078 :
    matchingVariables coloring3110 78 = table3110 78 := by rfl

theorem table3110_entry079 :
    matchingVariables coloring3110 79 = table3110 79 := by rfl

theorem table3110_entry080 :
    matchingVariables coloring3110 80 = table3110 80 := by rfl

theorem table3110_entry081 :
    matchingVariables coloring3110 81 = table3110 81 := by rfl

theorem table3110_entry082 :
    matchingVariables coloring3110 82 = table3110 82 := by rfl

theorem table3110_entry083 :
    matchingVariables coloring3110 83 = table3110 83 := by rfl

theorem table3110_entry084 :
    matchingVariables coloring3110 84 = table3110 84 := by rfl

theorem table3110_entry085 :
    matchingVariables coloring3110 85 = table3110 85 := by rfl

theorem table3110_entry086 :
    matchingVariables coloring3110 86 = table3110 86 := by rfl

theorem table3110_entry087 :
    matchingVariables coloring3110 87 = table3110 87 := by rfl

theorem table3110_entry088 :
    matchingVariables coloring3110 88 = table3110 88 := by rfl

theorem table3110_entry089 :
    matchingVariables coloring3110 89 = table3110 89 := by rfl

theorem table3110_entry090 :
    matchingVariables coloring3110 90 = table3110 90 := by rfl

theorem table3110_entry091 :
    matchingVariables coloring3110 91 = table3110 91 := by rfl

theorem table3110_entry092 :
    matchingVariables coloring3110 92 = table3110 92 := by rfl

theorem table3110_entry093 :
    matchingVariables coloring3110 93 = table3110 93 := by rfl

theorem table3110_entry094 :
    matchingVariables coloring3110 94 = table3110 94 := by rfl

theorem table3110_entry095 :
    matchingVariables coloring3110 95 = table3110 95 := by rfl

theorem table3110_entry096 :
    matchingVariables coloring3110 96 = table3110 96 := by rfl

theorem table3110_entry097 :
    matchingVariables coloring3110 97 = table3110 97 := by rfl

theorem table3110_entry098 :
    matchingVariables coloring3110 98 = table3110 98 := by rfl

theorem table3110_entry099 :
    matchingVariables coloring3110 99 = table3110 99 := by rfl

theorem table3110_entry100 :
    matchingVariables coloring3110 100 = table3110 100 := by rfl

theorem table3110_entry101 :
    matchingVariables coloring3110 101 = table3110 101 := by rfl

theorem table3110_entry102 :
    matchingVariables coloring3110 102 = table3110 102 := by rfl

theorem table3110_entry103 :
    matchingVariables coloring3110 103 = table3110 103 := by rfl

theorem table3110_entry104 :
    matchingVariables coloring3110 104 = table3110 104 := by rfl

theorem table3110_complete : ∀ m, matchingVariables coloring3110 m = table3110 m := by
  intro m
  fin_cases m
  · exact table3110_entry000
  · exact table3110_entry001
  · exact table3110_entry002
  · exact table3110_entry003
  · exact table3110_entry004
  · exact table3110_entry005
  · exact table3110_entry006
  · exact table3110_entry007
  · exact table3110_entry008
  · exact table3110_entry009
  · exact table3110_entry010
  · exact table3110_entry011
  · exact table3110_entry012
  · exact table3110_entry013
  · exact table3110_entry014
  · exact table3110_entry015
  · exact table3110_entry016
  · exact table3110_entry017
  · exact table3110_entry018
  · exact table3110_entry019
  · exact table3110_entry020
  · exact table3110_entry021
  · exact table3110_entry022
  · exact table3110_entry023
  · exact table3110_entry024
  · exact table3110_entry025
  · exact table3110_entry026
  · exact table3110_entry027
  · exact table3110_entry028
  · exact table3110_entry029
  · exact table3110_entry030
  · exact table3110_entry031
  · exact table3110_entry032
  · exact table3110_entry033
  · exact table3110_entry034
  · exact table3110_entry035
  · exact table3110_entry036
  · exact table3110_entry037
  · exact table3110_entry038
  · exact table3110_entry039
  · exact table3110_entry040
  · exact table3110_entry041
  · exact table3110_entry042
  · exact table3110_entry043
  · exact table3110_entry044
  · exact table3110_entry045
  · exact table3110_entry046
  · exact table3110_entry047
  · exact table3110_entry048
  · exact table3110_entry049
  · exact table3110_entry050
  · exact table3110_entry051
  · exact table3110_entry052
  · exact table3110_entry053
  · exact table3110_entry054
  · exact table3110_entry055
  · exact table3110_entry056
  · exact table3110_entry057
  · exact table3110_entry058
  · exact table3110_entry059
  · exact table3110_entry060
  · exact table3110_entry061
  · exact table3110_entry062
  · exact table3110_entry063
  · exact table3110_entry064
  · exact table3110_entry065
  · exact table3110_entry066
  · exact table3110_entry067
  · exact table3110_entry068
  · exact table3110_entry069
  · exact table3110_entry070
  · exact table3110_entry071
  · exact table3110_entry072
  · exact table3110_entry073
  · exact table3110_entry074
  · exact table3110_entry075
  · exact table3110_entry076
  · exact table3110_entry077
  · exact table3110_entry078
  · exact table3110_entry079
  · exact table3110_entry080
  · exact table3110_entry081
  · exact table3110_entry082
  · exact table3110_entry083
  · exact table3110_entry084
  · exact table3110_entry085
  · exact table3110_entry086
  · exact table3110_entry087
  · exact table3110_entry088
  · exact table3110_entry089
  · exact table3110_entry090
  · exact table3110_entry091
  · exact table3110_entry092
  · exact table3110_entry093
  · exact table3110_entry094
  · exact table3110_entry095
  · exact table3110_entry096
  · exact table3110_entry097
  · exact table3110_entry098
  · exact table3110_entry099
  · exact table3110_entry100
  · exact table3110_entry101
  · exact table3110_entry102
  · exact table3110_entry103
  · exact table3110_entry104

#print axioms table3110_complete

def expanded3110 : Polynomial 143 := [(1, exponentOfVariables [7, 58, 104, 138]),
  (1, exponentOfVariables [7, 69, 87, 138]),
  (1, exponentOfVariables [15, 41, 87, 138]),
  (1, exponentOfVariables [15, 51, 87, 126]),
  (1, exponentOfVariables [15, 51, 97, 104]),
  (1, exponentOfVariables [25, 51, 69, 122])]

theorem table3110_expanded : tablePolynomial table3110 = expanded3110 := by
  rfl

theorem table3110_exponent00 :
    exponentOfVariables (n := 143) [7, 58, 104, 138] =
      (fun i => if i.val = 7 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3110_exponent01 :
    exponentOfVariables (n := 143) [7, 69, 87, 138] =
      (fun i => if i.val = 7 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3110_exponent02 :
    exponentOfVariables (n := 143) [15, 41, 87, 138] =
      (fun i => if i.val = 15 then (1) else if i.val = 41 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3110_exponent03 :
    exponentOfVariables (n := 143) [15, 51, 87, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3110_exponent04 :
    exponentOfVariables (n := 143) [15, 51, 97, 104] =
      (fun i => if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3110_exponent05 :
    exponentOfVariables (n := 143) [25, 51, 69, 122] =
      (fun i => if i.val = 25 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3110_polynomial : expanded3110 = amplitude3110 := by
  simp only [expanded3110, amplitude3110, table3110_exponent00, table3110_exponent01, table3110_exponent02, table3110_exponent03, table3110_exponent04, table3110_exponent05]

theorem premiseCheck128 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3110)) p128 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
