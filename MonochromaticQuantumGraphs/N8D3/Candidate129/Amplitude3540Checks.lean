import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3540 : Fin 8 → Fin 3 := ![0, 1, 0, 2, 1, 2, 1, 1]

def table3540 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 59, 103, 138] else
    if m.val = 1 then some [1, 59, 111, 132] else
    if m.val = 6 then some [1, 71, 89, 138] else
    if m.val = 21 then some [9, 43, 89, 138] else
    if m.val = 24 then some [9, 51, 89, 132] else
    if m.val = 40 then some [20, 51, 71, 119] else none

theorem table3540_entry000 :
    matchingVariables coloring3540 0 = table3540 0 := by rfl

theorem table3540_entry001 :
    matchingVariables coloring3540 1 = table3540 1 := by rfl

theorem table3540_entry002 :
    matchingVariables coloring3540 2 = table3540 2 := by rfl

theorem table3540_entry003 :
    matchingVariables coloring3540 3 = table3540 3 := by rfl

theorem table3540_entry004 :
    matchingVariables coloring3540 4 = table3540 4 := by rfl

theorem table3540_entry005 :
    matchingVariables coloring3540 5 = table3540 5 := by rfl

theorem table3540_entry006 :
    matchingVariables coloring3540 6 = table3540 6 := by rfl

theorem table3540_entry007 :
    matchingVariables coloring3540 7 = table3540 7 := by rfl

theorem table3540_entry008 :
    matchingVariables coloring3540 8 = table3540 8 := by rfl

theorem table3540_entry009 :
    matchingVariables coloring3540 9 = table3540 9 := by rfl

theorem table3540_entry010 :
    matchingVariables coloring3540 10 = table3540 10 := by rfl

theorem table3540_entry011 :
    matchingVariables coloring3540 11 = table3540 11 := by rfl

theorem table3540_entry012 :
    matchingVariables coloring3540 12 = table3540 12 := by rfl

theorem table3540_entry013 :
    matchingVariables coloring3540 13 = table3540 13 := by rfl

theorem table3540_entry014 :
    matchingVariables coloring3540 14 = table3540 14 := by rfl

theorem table3540_entry015 :
    matchingVariables coloring3540 15 = table3540 15 := by rfl

theorem table3540_entry016 :
    matchingVariables coloring3540 16 = table3540 16 := by rfl

theorem table3540_entry017 :
    matchingVariables coloring3540 17 = table3540 17 := by rfl

theorem table3540_entry018 :
    matchingVariables coloring3540 18 = table3540 18 := by rfl

theorem table3540_entry019 :
    matchingVariables coloring3540 19 = table3540 19 := by rfl

theorem table3540_entry020 :
    matchingVariables coloring3540 20 = table3540 20 := by rfl

theorem table3540_entry021 :
    matchingVariables coloring3540 21 = table3540 21 := by rfl

theorem table3540_entry022 :
    matchingVariables coloring3540 22 = table3540 22 := by rfl

theorem table3540_entry023 :
    matchingVariables coloring3540 23 = table3540 23 := by rfl

theorem table3540_entry024 :
    matchingVariables coloring3540 24 = table3540 24 := by rfl

theorem table3540_entry025 :
    matchingVariables coloring3540 25 = table3540 25 := by rfl

theorem table3540_entry026 :
    matchingVariables coloring3540 26 = table3540 26 := by rfl

theorem table3540_entry027 :
    matchingVariables coloring3540 27 = table3540 27 := by rfl

theorem table3540_entry028 :
    matchingVariables coloring3540 28 = table3540 28 := by rfl

theorem table3540_entry029 :
    matchingVariables coloring3540 29 = table3540 29 := by rfl

theorem table3540_entry030 :
    matchingVariables coloring3540 30 = table3540 30 := by rfl

theorem table3540_entry031 :
    matchingVariables coloring3540 31 = table3540 31 := by rfl

theorem table3540_entry032 :
    matchingVariables coloring3540 32 = table3540 32 := by rfl

theorem table3540_entry033 :
    matchingVariables coloring3540 33 = table3540 33 := by rfl

theorem table3540_entry034 :
    matchingVariables coloring3540 34 = table3540 34 := by rfl

theorem table3540_entry035 :
    matchingVariables coloring3540 35 = table3540 35 := by rfl

theorem table3540_entry036 :
    matchingVariables coloring3540 36 = table3540 36 := by rfl

theorem table3540_entry037 :
    matchingVariables coloring3540 37 = table3540 37 := by rfl

theorem table3540_entry038 :
    matchingVariables coloring3540 38 = table3540 38 := by rfl

theorem table3540_entry039 :
    matchingVariables coloring3540 39 = table3540 39 := by rfl

theorem table3540_entry040 :
    matchingVariables coloring3540 40 = table3540 40 := by rfl

theorem table3540_entry041 :
    matchingVariables coloring3540 41 = table3540 41 := by rfl

theorem table3540_entry042 :
    matchingVariables coloring3540 42 = table3540 42 := by rfl

theorem table3540_entry043 :
    matchingVariables coloring3540 43 = table3540 43 := by rfl

theorem table3540_entry044 :
    matchingVariables coloring3540 44 = table3540 44 := by rfl

theorem table3540_entry045 :
    matchingVariables coloring3540 45 = table3540 45 := by rfl

theorem table3540_entry046 :
    matchingVariables coloring3540 46 = table3540 46 := by rfl

theorem table3540_entry047 :
    matchingVariables coloring3540 47 = table3540 47 := by rfl

theorem table3540_entry048 :
    matchingVariables coloring3540 48 = table3540 48 := by rfl

theorem table3540_entry049 :
    matchingVariables coloring3540 49 = table3540 49 := by rfl

theorem table3540_entry050 :
    matchingVariables coloring3540 50 = table3540 50 := by rfl

theorem table3540_entry051 :
    matchingVariables coloring3540 51 = table3540 51 := by rfl

theorem table3540_entry052 :
    matchingVariables coloring3540 52 = table3540 52 := by rfl

theorem table3540_entry053 :
    matchingVariables coloring3540 53 = table3540 53 := by rfl

theorem table3540_entry054 :
    matchingVariables coloring3540 54 = table3540 54 := by rfl

theorem table3540_entry055 :
    matchingVariables coloring3540 55 = table3540 55 := by rfl

theorem table3540_entry056 :
    matchingVariables coloring3540 56 = table3540 56 := by rfl

theorem table3540_entry057 :
    matchingVariables coloring3540 57 = table3540 57 := by rfl

theorem table3540_entry058 :
    matchingVariables coloring3540 58 = table3540 58 := by rfl

theorem table3540_entry059 :
    matchingVariables coloring3540 59 = table3540 59 := by rfl

theorem table3540_entry060 :
    matchingVariables coloring3540 60 = table3540 60 := by rfl

theorem table3540_entry061 :
    matchingVariables coloring3540 61 = table3540 61 := by rfl

theorem table3540_entry062 :
    matchingVariables coloring3540 62 = table3540 62 := by rfl

theorem table3540_entry063 :
    matchingVariables coloring3540 63 = table3540 63 := by rfl

theorem table3540_entry064 :
    matchingVariables coloring3540 64 = table3540 64 := by rfl

theorem table3540_entry065 :
    matchingVariables coloring3540 65 = table3540 65 := by rfl

theorem table3540_entry066 :
    matchingVariables coloring3540 66 = table3540 66 := by rfl

theorem table3540_entry067 :
    matchingVariables coloring3540 67 = table3540 67 := by rfl

theorem table3540_entry068 :
    matchingVariables coloring3540 68 = table3540 68 := by rfl

theorem table3540_entry069 :
    matchingVariables coloring3540 69 = table3540 69 := by rfl

theorem table3540_entry070 :
    matchingVariables coloring3540 70 = table3540 70 := by rfl

theorem table3540_entry071 :
    matchingVariables coloring3540 71 = table3540 71 := by rfl

theorem table3540_entry072 :
    matchingVariables coloring3540 72 = table3540 72 := by rfl

theorem table3540_entry073 :
    matchingVariables coloring3540 73 = table3540 73 := by rfl

theorem table3540_entry074 :
    matchingVariables coloring3540 74 = table3540 74 := by rfl

theorem table3540_entry075 :
    matchingVariables coloring3540 75 = table3540 75 := by rfl

theorem table3540_entry076 :
    matchingVariables coloring3540 76 = table3540 76 := by rfl

theorem table3540_entry077 :
    matchingVariables coloring3540 77 = table3540 77 := by rfl

theorem table3540_entry078 :
    matchingVariables coloring3540 78 = table3540 78 := by rfl

theorem table3540_entry079 :
    matchingVariables coloring3540 79 = table3540 79 := by rfl

theorem table3540_entry080 :
    matchingVariables coloring3540 80 = table3540 80 := by rfl

theorem table3540_entry081 :
    matchingVariables coloring3540 81 = table3540 81 := by rfl

theorem table3540_entry082 :
    matchingVariables coloring3540 82 = table3540 82 := by rfl

theorem table3540_entry083 :
    matchingVariables coloring3540 83 = table3540 83 := by rfl

theorem table3540_entry084 :
    matchingVariables coloring3540 84 = table3540 84 := by rfl

theorem table3540_entry085 :
    matchingVariables coloring3540 85 = table3540 85 := by rfl

theorem table3540_entry086 :
    matchingVariables coloring3540 86 = table3540 86 := by rfl

theorem table3540_entry087 :
    matchingVariables coloring3540 87 = table3540 87 := by rfl

theorem table3540_entry088 :
    matchingVariables coloring3540 88 = table3540 88 := by rfl

theorem table3540_entry089 :
    matchingVariables coloring3540 89 = table3540 89 := by rfl

theorem table3540_entry090 :
    matchingVariables coloring3540 90 = table3540 90 := by rfl

theorem table3540_entry091 :
    matchingVariables coloring3540 91 = table3540 91 := by rfl

theorem table3540_entry092 :
    matchingVariables coloring3540 92 = table3540 92 := by rfl

theorem table3540_entry093 :
    matchingVariables coloring3540 93 = table3540 93 := by rfl

theorem table3540_entry094 :
    matchingVariables coloring3540 94 = table3540 94 := by rfl

theorem table3540_entry095 :
    matchingVariables coloring3540 95 = table3540 95 := by rfl

theorem table3540_entry096 :
    matchingVariables coloring3540 96 = table3540 96 := by rfl

theorem table3540_entry097 :
    matchingVariables coloring3540 97 = table3540 97 := by rfl

theorem table3540_entry098 :
    matchingVariables coloring3540 98 = table3540 98 := by rfl

theorem table3540_entry099 :
    matchingVariables coloring3540 99 = table3540 99 := by rfl

theorem table3540_entry100 :
    matchingVariables coloring3540 100 = table3540 100 := by rfl

theorem table3540_entry101 :
    matchingVariables coloring3540 101 = table3540 101 := by rfl

theorem table3540_entry102 :
    matchingVariables coloring3540 102 = table3540 102 := by rfl

theorem table3540_entry103 :
    matchingVariables coloring3540 103 = table3540 103 := by rfl

theorem table3540_entry104 :
    matchingVariables coloring3540 104 = table3540 104 := by rfl

theorem table3540_complete : ∀ m, matchingVariables coloring3540 m = table3540 m := by
  intro m
  fin_cases m
  · exact table3540_entry000
  · exact table3540_entry001
  · exact table3540_entry002
  · exact table3540_entry003
  · exact table3540_entry004
  · exact table3540_entry005
  · exact table3540_entry006
  · exact table3540_entry007
  · exact table3540_entry008
  · exact table3540_entry009
  · exact table3540_entry010
  · exact table3540_entry011
  · exact table3540_entry012
  · exact table3540_entry013
  · exact table3540_entry014
  · exact table3540_entry015
  · exact table3540_entry016
  · exact table3540_entry017
  · exact table3540_entry018
  · exact table3540_entry019
  · exact table3540_entry020
  · exact table3540_entry021
  · exact table3540_entry022
  · exact table3540_entry023
  · exact table3540_entry024
  · exact table3540_entry025
  · exact table3540_entry026
  · exact table3540_entry027
  · exact table3540_entry028
  · exact table3540_entry029
  · exact table3540_entry030
  · exact table3540_entry031
  · exact table3540_entry032
  · exact table3540_entry033
  · exact table3540_entry034
  · exact table3540_entry035
  · exact table3540_entry036
  · exact table3540_entry037
  · exact table3540_entry038
  · exact table3540_entry039
  · exact table3540_entry040
  · exact table3540_entry041
  · exact table3540_entry042
  · exact table3540_entry043
  · exact table3540_entry044
  · exact table3540_entry045
  · exact table3540_entry046
  · exact table3540_entry047
  · exact table3540_entry048
  · exact table3540_entry049
  · exact table3540_entry050
  · exact table3540_entry051
  · exact table3540_entry052
  · exact table3540_entry053
  · exact table3540_entry054
  · exact table3540_entry055
  · exact table3540_entry056
  · exact table3540_entry057
  · exact table3540_entry058
  · exact table3540_entry059
  · exact table3540_entry060
  · exact table3540_entry061
  · exact table3540_entry062
  · exact table3540_entry063
  · exact table3540_entry064
  · exact table3540_entry065
  · exact table3540_entry066
  · exact table3540_entry067
  · exact table3540_entry068
  · exact table3540_entry069
  · exact table3540_entry070
  · exact table3540_entry071
  · exact table3540_entry072
  · exact table3540_entry073
  · exact table3540_entry074
  · exact table3540_entry075
  · exact table3540_entry076
  · exact table3540_entry077
  · exact table3540_entry078
  · exact table3540_entry079
  · exact table3540_entry080
  · exact table3540_entry081
  · exact table3540_entry082
  · exact table3540_entry083
  · exact table3540_entry084
  · exact table3540_entry085
  · exact table3540_entry086
  · exact table3540_entry087
  · exact table3540_entry088
  · exact table3540_entry089
  · exact table3540_entry090
  · exact table3540_entry091
  · exact table3540_entry092
  · exact table3540_entry093
  · exact table3540_entry094
  · exact table3540_entry095
  · exact table3540_entry096
  · exact table3540_entry097
  · exact table3540_entry098
  · exact table3540_entry099
  · exact table3540_entry100
  · exact table3540_entry101
  · exact table3540_entry102
  · exact table3540_entry103
  · exact table3540_entry104

#print axioms table3540_complete

def expanded3540 : Polynomial 143 := [(1, exponentOfVariables [1, 59, 103, 138]),
  (1, exponentOfVariables [1, 59, 111, 132]),
  (1, exponentOfVariables [1, 71, 89, 138]),
  (1, exponentOfVariables [9, 43, 89, 138]),
  (1, exponentOfVariables [9, 51, 89, 132]),
  (1, exponentOfVariables [20, 51, 71, 119])]

theorem table3540_expanded : tablePolynomial table3540 = expanded3540 := by
  rfl

theorem table3540_exponent00 :
    exponentOfVariables (n := 143) [1, 59, 103, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 103 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3540_exponent01 :
    exponentOfVariables (n := 143) [1, 59, 111, 132] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 111 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3540_exponent02 :
    exponentOfVariables (n := 143) [1, 71, 89, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 71 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3540_exponent03 :
    exponentOfVariables (n := 143) [9, 43, 89, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 43 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3540_exponent04 :
    exponentOfVariables (n := 143) [9, 51, 89, 132] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 89 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3540_exponent05 :
    exponentOfVariables (n := 143) [20, 51, 71, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 71 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3540_polynomial : expanded3540 = amplitude3540 := by
  simp only [expanded3540, amplitude3540, table3540_exponent00, table3540_exponent01, table3540_exponent02, table3540_exponent03, table3540_exponent04, table3540_exponent05]

theorem premiseCheck043 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3540)) p043 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
