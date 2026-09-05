import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3369 : Fin 8 → Fin 3 := ![0, 1, 2, 1, 2, 1, 1, 1]

def table3369 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 64, 105, 138] else
    if m.val = 6 then some [1, 76, 87, 138] else
    if m.val = 21 then some [11, 42, 87, 138] else
    if m.val = 24 then some [11, 51, 87, 129] else
    if m.val = 26 then some [11, 51, 97, 105] else
    if m.val = 40 then some [19, 51, 76, 122] else none

theorem table3369_entry000 :
    matchingVariables coloring3369 0 = table3369 0 := by rfl

theorem table3369_entry001 :
    matchingVariables coloring3369 1 = table3369 1 := by rfl

theorem table3369_entry002 :
    matchingVariables coloring3369 2 = table3369 2 := by rfl

theorem table3369_entry003 :
    matchingVariables coloring3369 3 = table3369 3 := by rfl

theorem table3369_entry004 :
    matchingVariables coloring3369 4 = table3369 4 := by rfl

theorem table3369_entry005 :
    matchingVariables coloring3369 5 = table3369 5 := by rfl

theorem table3369_entry006 :
    matchingVariables coloring3369 6 = table3369 6 := by rfl

theorem table3369_entry007 :
    matchingVariables coloring3369 7 = table3369 7 := by rfl

theorem table3369_entry008 :
    matchingVariables coloring3369 8 = table3369 8 := by rfl

theorem table3369_entry009 :
    matchingVariables coloring3369 9 = table3369 9 := by rfl

theorem table3369_entry010 :
    matchingVariables coloring3369 10 = table3369 10 := by rfl

theorem table3369_entry011 :
    matchingVariables coloring3369 11 = table3369 11 := by rfl

theorem table3369_entry012 :
    matchingVariables coloring3369 12 = table3369 12 := by rfl

theorem table3369_entry013 :
    matchingVariables coloring3369 13 = table3369 13 := by rfl

theorem table3369_entry014 :
    matchingVariables coloring3369 14 = table3369 14 := by rfl

theorem table3369_entry015 :
    matchingVariables coloring3369 15 = table3369 15 := by rfl

theorem table3369_entry016 :
    matchingVariables coloring3369 16 = table3369 16 := by rfl

theorem table3369_entry017 :
    matchingVariables coloring3369 17 = table3369 17 := by rfl

theorem table3369_entry018 :
    matchingVariables coloring3369 18 = table3369 18 := by rfl

theorem table3369_entry019 :
    matchingVariables coloring3369 19 = table3369 19 := by rfl

theorem table3369_entry020 :
    matchingVariables coloring3369 20 = table3369 20 := by rfl

theorem table3369_entry021 :
    matchingVariables coloring3369 21 = table3369 21 := by rfl

theorem table3369_entry022 :
    matchingVariables coloring3369 22 = table3369 22 := by rfl

theorem table3369_entry023 :
    matchingVariables coloring3369 23 = table3369 23 := by rfl

theorem table3369_entry024 :
    matchingVariables coloring3369 24 = table3369 24 := by rfl

theorem table3369_entry025 :
    matchingVariables coloring3369 25 = table3369 25 := by rfl

theorem table3369_entry026 :
    matchingVariables coloring3369 26 = table3369 26 := by rfl

theorem table3369_entry027 :
    matchingVariables coloring3369 27 = table3369 27 := by rfl

theorem table3369_entry028 :
    matchingVariables coloring3369 28 = table3369 28 := by rfl

theorem table3369_entry029 :
    matchingVariables coloring3369 29 = table3369 29 := by rfl

theorem table3369_entry030 :
    matchingVariables coloring3369 30 = table3369 30 := by rfl

theorem table3369_entry031 :
    matchingVariables coloring3369 31 = table3369 31 := by rfl

theorem table3369_entry032 :
    matchingVariables coloring3369 32 = table3369 32 := by rfl

theorem table3369_entry033 :
    matchingVariables coloring3369 33 = table3369 33 := by rfl

theorem table3369_entry034 :
    matchingVariables coloring3369 34 = table3369 34 := by rfl

theorem table3369_entry035 :
    matchingVariables coloring3369 35 = table3369 35 := by rfl

theorem table3369_entry036 :
    matchingVariables coloring3369 36 = table3369 36 := by rfl

theorem table3369_entry037 :
    matchingVariables coloring3369 37 = table3369 37 := by rfl

theorem table3369_entry038 :
    matchingVariables coloring3369 38 = table3369 38 := by rfl

theorem table3369_entry039 :
    matchingVariables coloring3369 39 = table3369 39 := by rfl

theorem table3369_entry040 :
    matchingVariables coloring3369 40 = table3369 40 := by rfl

theorem table3369_entry041 :
    matchingVariables coloring3369 41 = table3369 41 := by rfl

theorem table3369_entry042 :
    matchingVariables coloring3369 42 = table3369 42 := by rfl

theorem table3369_entry043 :
    matchingVariables coloring3369 43 = table3369 43 := by rfl

theorem table3369_entry044 :
    matchingVariables coloring3369 44 = table3369 44 := by rfl

theorem table3369_entry045 :
    matchingVariables coloring3369 45 = table3369 45 := by rfl

theorem table3369_entry046 :
    matchingVariables coloring3369 46 = table3369 46 := by rfl

theorem table3369_entry047 :
    matchingVariables coloring3369 47 = table3369 47 := by rfl

theorem table3369_entry048 :
    matchingVariables coloring3369 48 = table3369 48 := by rfl

theorem table3369_entry049 :
    matchingVariables coloring3369 49 = table3369 49 := by rfl

theorem table3369_entry050 :
    matchingVariables coloring3369 50 = table3369 50 := by rfl

theorem table3369_entry051 :
    matchingVariables coloring3369 51 = table3369 51 := by rfl

theorem table3369_entry052 :
    matchingVariables coloring3369 52 = table3369 52 := by rfl

theorem table3369_entry053 :
    matchingVariables coloring3369 53 = table3369 53 := by rfl

theorem table3369_entry054 :
    matchingVariables coloring3369 54 = table3369 54 := by rfl

theorem table3369_entry055 :
    matchingVariables coloring3369 55 = table3369 55 := by rfl

theorem table3369_entry056 :
    matchingVariables coloring3369 56 = table3369 56 := by rfl

theorem table3369_entry057 :
    matchingVariables coloring3369 57 = table3369 57 := by rfl

theorem table3369_entry058 :
    matchingVariables coloring3369 58 = table3369 58 := by rfl

theorem table3369_entry059 :
    matchingVariables coloring3369 59 = table3369 59 := by rfl

theorem table3369_entry060 :
    matchingVariables coloring3369 60 = table3369 60 := by rfl

theorem table3369_entry061 :
    matchingVariables coloring3369 61 = table3369 61 := by rfl

theorem table3369_entry062 :
    matchingVariables coloring3369 62 = table3369 62 := by rfl

theorem table3369_entry063 :
    matchingVariables coloring3369 63 = table3369 63 := by rfl

theorem table3369_entry064 :
    matchingVariables coloring3369 64 = table3369 64 := by rfl

theorem table3369_entry065 :
    matchingVariables coloring3369 65 = table3369 65 := by rfl

theorem table3369_entry066 :
    matchingVariables coloring3369 66 = table3369 66 := by rfl

theorem table3369_entry067 :
    matchingVariables coloring3369 67 = table3369 67 := by rfl

theorem table3369_entry068 :
    matchingVariables coloring3369 68 = table3369 68 := by rfl

theorem table3369_entry069 :
    matchingVariables coloring3369 69 = table3369 69 := by rfl

theorem table3369_entry070 :
    matchingVariables coloring3369 70 = table3369 70 := by rfl

theorem table3369_entry071 :
    matchingVariables coloring3369 71 = table3369 71 := by rfl

theorem table3369_entry072 :
    matchingVariables coloring3369 72 = table3369 72 := by rfl

theorem table3369_entry073 :
    matchingVariables coloring3369 73 = table3369 73 := by rfl

theorem table3369_entry074 :
    matchingVariables coloring3369 74 = table3369 74 := by rfl

theorem table3369_entry075 :
    matchingVariables coloring3369 75 = table3369 75 := by rfl

theorem table3369_entry076 :
    matchingVariables coloring3369 76 = table3369 76 := by rfl

theorem table3369_entry077 :
    matchingVariables coloring3369 77 = table3369 77 := by rfl

theorem table3369_entry078 :
    matchingVariables coloring3369 78 = table3369 78 := by rfl

theorem table3369_entry079 :
    matchingVariables coloring3369 79 = table3369 79 := by rfl

theorem table3369_entry080 :
    matchingVariables coloring3369 80 = table3369 80 := by rfl

theorem table3369_entry081 :
    matchingVariables coloring3369 81 = table3369 81 := by rfl

theorem table3369_entry082 :
    matchingVariables coloring3369 82 = table3369 82 := by rfl

theorem table3369_entry083 :
    matchingVariables coloring3369 83 = table3369 83 := by rfl

theorem table3369_entry084 :
    matchingVariables coloring3369 84 = table3369 84 := by rfl

theorem table3369_entry085 :
    matchingVariables coloring3369 85 = table3369 85 := by rfl

theorem table3369_entry086 :
    matchingVariables coloring3369 86 = table3369 86 := by rfl

theorem table3369_entry087 :
    matchingVariables coloring3369 87 = table3369 87 := by rfl

theorem table3369_entry088 :
    matchingVariables coloring3369 88 = table3369 88 := by rfl

theorem table3369_entry089 :
    matchingVariables coloring3369 89 = table3369 89 := by rfl

theorem table3369_entry090 :
    matchingVariables coloring3369 90 = table3369 90 := by rfl

theorem table3369_entry091 :
    matchingVariables coloring3369 91 = table3369 91 := by rfl

theorem table3369_entry092 :
    matchingVariables coloring3369 92 = table3369 92 := by rfl

theorem table3369_entry093 :
    matchingVariables coloring3369 93 = table3369 93 := by rfl

theorem table3369_entry094 :
    matchingVariables coloring3369 94 = table3369 94 := by rfl

theorem table3369_entry095 :
    matchingVariables coloring3369 95 = table3369 95 := by rfl

theorem table3369_entry096 :
    matchingVariables coloring3369 96 = table3369 96 := by rfl

theorem table3369_entry097 :
    matchingVariables coloring3369 97 = table3369 97 := by rfl

theorem table3369_entry098 :
    matchingVariables coloring3369 98 = table3369 98 := by rfl

theorem table3369_entry099 :
    matchingVariables coloring3369 99 = table3369 99 := by rfl

theorem table3369_entry100 :
    matchingVariables coloring3369 100 = table3369 100 := by rfl

theorem table3369_entry101 :
    matchingVariables coloring3369 101 = table3369 101 := by rfl

theorem table3369_entry102 :
    matchingVariables coloring3369 102 = table3369 102 := by rfl

theorem table3369_entry103 :
    matchingVariables coloring3369 103 = table3369 103 := by rfl

theorem table3369_entry104 :
    matchingVariables coloring3369 104 = table3369 104 := by rfl

theorem table3369_complete : ∀ m, matchingVariables coloring3369 m = table3369 m := by
  intro m
  fin_cases m
  · exact table3369_entry000
  · exact table3369_entry001
  · exact table3369_entry002
  · exact table3369_entry003
  · exact table3369_entry004
  · exact table3369_entry005
  · exact table3369_entry006
  · exact table3369_entry007
  · exact table3369_entry008
  · exact table3369_entry009
  · exact table3369_entry010
  · exact table3369_entry011
  · exact table3369_entry012
  · exact table3369_entry013
  · exact table3369_entry014
  · exact table3369_entry015
  · exact table3369_entry016
  · exact table3369_entry017
  · exact table3369_entry018
  · exact table3369_entry019
  · exact table3369_entry020
  · exact table3369_entry021
  · exact table3369_entry022
  · exact table3369_entry023
  · exact table3369_entry024
  · exact table3369_entry025
  · exact table3369_entry026
  · exact table3369_entry027
  · exact table3369_entry028
  · exact table3369_entry029
  · exact table3369_entry030
  · exact table3369_entry031
  · exact table3369_entry032
  · exact table3369_entry033
  · exact table3369_entry034
  · exact table3369_entry035
  · exact table3369_entry036
  · exact table3369_entry037
  · exact table3369_entry038
  · exact table3369_entry039
  · exact table3369_entry040
  · exact table3369_entry041
  · exact table3369_entry042
  · exact table3369_entry043
  · exact table3369_entry044
  · exact table3369_entry045
  · exact table3369_entry046
  · exact table3369_entry047
  · exact table3369_entry048
  · exact table3369_entry049
  · exact table3369_entry050
  · exact table3369_entry051
  · exact table3369_entry052
  · exact table3369_entry053
  · exact table3369_entry054
  · exact table3369_entry055
  · exact table3369_entry056
  · exact table3369_entry057
  · exact table3369_entry058
  · exact table3369_entry059
  · exact table3369_entry060
  · exact table3369_entry061
  · exact table3369_entry062
  · exact table3369_entry063
  · exact table3369_entry064
  · exact table3369_entry065
  · exact table3369_entry066
  · exact table3369_entry067
  · exact table3369_entry068
  · exact table3369_entry069
  · exact table3369_entry070
  · exact table3369_entry071
  · exact table3369_entry072
  · exact table3369_entry073
  · exact table3369_entry074
  · exact table3369_entry075
  · exact table3369_entry076
  · exact table3369_entry077
  · exact table3369_entry078
  · exact table3369_entry079
  · exact table3369_entry080
  · exact table3369_entry081
  · exact table3369_entry082
  · exact table3369_entry083
  · exact table3369_entry084
  · exact table3369_entry085
  · exact table3369_entry086
  · exact table3369_entry087
  · exact table3369_entry088
  · exact table3369_entry089
  · exact table3369_entry090
  · exact table3369_entry091
  · exact table3369_entry092
  · exact table3369_entry093
  · exact table3369_entry094
  · exact table3369_entry095
  · exact table3369_entry096
  · exact table3369_entry097
  · exact table3369_entry098
  · exact table3369_entry099
  · exact table3369_entry100
  · exact table3369_entry101
  · exact table3369_entry102
  · exact table3369_entry103
  · exact table3369_entry104

#print axioms table3369_complete

def expanded3369 : Polynomial 143 := [(1, exponentOfVariables [1, 64, 105, 138]),
  (1, exponentOfVariables [1, 76, 87, 138]),
  (1, exponentOfVariables [11, 42, 87, 138]),
  (1, exponentOfVariables [11, 51, 87, 129]),
  (1, exponentOfVariables [11, 51, 97, 105]),
  (1, exponentOfVariables [19, 51, 76, 122])]

theorem table3369_expanded : tablePolynomial table3369 = expanded3369 := by
  rfl

theorem table3369_exponent00 :
    exponentOfVariables (n := 143) [1, 64, 105, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 64 then (1) else if i.val = 105 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3369_exponent01 :
    exponentOfVariables (n := 143) [1, 76, 87, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 76 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3369_exponent02 :
    exponentOfVariables (n := 143) [11, 42, 87, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 42 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3369_exponent03 :
    exponentOfVariables (n := 143) [11, 51, 87, 129] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 87 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3369_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 97, 105] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 97 then (1) else if i.val = 105 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3369_exponent05 :
    exponentOfVariables (n := 143) [19, 51, 76, 122] =
      (fun i => if i.val = 19 then (1) else if i.val = 51 then (1) else if i.val = 76 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3369_polynomial : expanded3369 = amplitude3369 := by
  simp only [expanded3369, amplitude3369, table3369_exponent00, table3369_exponent01, table3369_exponent02, table3369_exponent03, table3369_exponent04, table3369_exponent05]

theorem premiseCheck072 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3369)) p072 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
