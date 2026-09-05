import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring5322 : Fin 8 → Fin 3 := ![0, 1, 0, 2, 2, 0, 1, 2]

def table5322 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 59, 104, 139] else
    if m.val = 6 then some [1, 69, 90, 139] else
    if m.val = 21 then some [9, 41, 90, 139] else
    if m.val = 24 then some [9, 51, 90, 127] else
    if m.val = 40 then some [20, 51, 69, 123] else
    if m.val = 41 then some [20, 51, 79, 104] else none

theorem table5322_entry000 :
    matchingVariables coloring5322 0 = table5322 0 := by rfl

theorem table5322_entry001 :
    matchingVariables coloring5322 1 = table5322 1 := by rfl

theorem table5322_entry002 :
    matchingVariables coloring5322 2 = table5322 2 := by rfl

theorem table5322_entry003 :
    matchingVariables coloring5322 3 = table5322 3 := by rfl

theorem table5322_entry004 :
    matchingVariables coloring5322 4 = table5322 4 := by rfl

theorem table5322_entry005 :
    matchingVariables coloring5322 5 = table5322 5 := by rfl

theorem table5322_entry006 :
    matchingVariables coloring5322 6 = table5322 6 := by rfl

theorem table5322_entry007 :
    matchingVariables coloring5322 7 = table5322 7 := by rfl

theorem table5322_entry008 :
    matchingVariables coloring5322 8 = table5322 8 := by rfl

theorem table5322_entry009 :
    matchingVariables coloring5322 9 = table5322 9 := by rfl

theorem table5322_entry010 :
    matchingVariables coloring5322 10 = table5322 10 := by rfl

theorem table5322_entry011 :
    matchingVariables coloring5322 11 = table5322 11 := by rfl

theorem table5322_entry012 :
    matchingVariables coloring5322 12 = table5322 12 := by rfl

theorem table5322_entry013 :
    matchingVariables coloring5322 13 = table5322 13 := by rfl

theorem table5322_entry014 :
    matchingVariables coloring5322 14 = table5322 14 := by rfl

theorem table5322_entry015 :
    matchingVariables coloring5322 15 = table5322 15 := by rfl

theorem table5322_entry016 :
    matchingVariables coloring5322 16 = table5322 16 := by rfl

theorem table5322_entry017 :
    matchingVariables coloring5322 17 = table5322 17 := by rfl

theorem table5322_entry018 :
    matchingVariables coloring5322 18 = table5322 18 := by rfl

theorem table5322_entry019 :
    matchingVariables coloring5322 19 = table5322 19 := by rfl

theorem table5322_entry020 :
    matchingVariables coloring5322 20 = table5322 20 := by rfl

theorem table5322_entry021 :
    matchingVariables coloring5322 21 = table5322 21 := by rfl

theorem table5322_entry022 :
    matchingVariables coloring5322 22 = table5322 22 := by rfl

theorem table5322_entry023 :
    matchingVariables coloring5322 23 = table5322 23 := by rfl

theorem table5322_entry024 :
    matchingVariables coloring5322 24 = table5322 24 := by rfl

theorem table5322_entry025 :
    matchingVariables coloring5322 25 = table5322 25 := by rfl

theorem table5322_entry026 :
    matchingVariables coloring5322 26 = table5322 26 := by rfl

theorem table5322_entry027 :
    matchingVariables coloring5322 27 = table5322 27 := by rfl

theorem table5322_entry028 :
    matchingVariables coloring5322 28 = table5322 28 := by rfl

theorem table5322_entry029 :
    matchingVariables coloring5322 29 = table5322 29 := by rfl

theorem table5322_entry030 :
    matchingVariables coloring5322 30 = table5322 30 := by rfl

theorem table5322_entry031 :
    matchingVariables coloring5322 31 = table5322 31 := by rfl

theorem table5322_entry032 :
    matchingVariables coloring5322 32 = table5322 32 := by rfl

theorem table5322_entry033 :
    matchingVariables coloring5322 33 = table5322 33 := by rfl

theorem table5322_entry034 :
    matchingVariables coloring5322 34 = table5322 34 := by rfl

theorem table5322_entry035 :
    matchingVariables coloring5322 35 = table5322 35 := by rfl

theorem table5322_entry036 :
    matchingVariables coloring5322 36 = table5322 36 := by rfl

theorem table5322_entry037 :
    matchingVariables coloring5322 37 = table5322 37 := by rfl

theorem table5322_entry038 :
    matchingVariables coloring5322 38 = table5322 38 := by rfl

theorem table5322_entry039 :
    matchingVariables coloring5322 39 = table5322 39 := by rfl

theorem table5322_entry040 :
    matchingVariables coloring5322 40 = table5322 40 := by rfl

theorem table5322_entry041 :
    matchingVariables coloring5322 41 = table5322 41 := by rfl

theorem table5322_entry042 :
    matchingVariables coloring5322 42 = table5322 42 := by rfl

theorem table5322_entry043 :
    matchingVariables coloring5322 43 = table5322 43 := by rfl

theorem table5322_entry044 :
    matchingVariables coloring5322 44 = table5322 44 := by rfl

theorem table5322_entry045 :
    matchingVariables coloring5322 45 = table5322 45 := by rfl

theorem table5322_entry046 :
    matchingVariables coloring5322 46 = table5322 46 := by rfl

theorem table5322_entry047 :
    matchingVariables coloring5322 47 = table5322 47 := by rfl

theorem table5322_entry048 :
    matchingVariables coloring5322 48 = table5322 48 := by rfl

theorem table5322_entry049 :
    matchingVariables coloring5322 49 = table5322 49 := by rfl

theorem table5322_entry050 :
    matchingVariables coloring5322 50 = table5322 50 := by rfl

theorem table5322_entry051 :
    matchingVariables coloring5322 51 = table5322 51 := by rfl

theorem table5322_entry052 :
    matchingVariables coloring5322 52 = table5322 52 := by rfl

theorem table5322_entry053 :
    matchingVariables coloring5322 53 = table5322 53 := by rfl

theorem table5322_entry054 :
    matchingVariables coloring5322 54 = table5322 54 := by rfl

theorem table5322_entry055 :
    matchingVariables coloring5322 55 = table5322 55 := by rfl

theorem table5322_entry056 :
    matchingVariables coloring5322 56 = table5322 56 := by rfl

theorem table5322_entry057 :
    matchingVariables coloring5322 57 = table5322 57 := by rfl

theorem table5322_entry058 :
    matchingVariables coloring5322 58 = table5322 58 := by rfl

theorem table5322_entry059 :
    matchingVariables coloring5322 59 = table5322 59 := by rfl

theorem table5322_entry060 :
    matchingVariables coloring5322 60 = table5322 60 := by rfl

theorem table5322_entry061 :
    matchingVariables coloring5322 61 = table5322 61 := by rfl

theorem table5322_entry062 :
    matchingVariables coloring5322 62 = table5322 62 := by rfl

theorem table5322_entry063 :
    matchingVariables coloring5322 63 = table5322 63 := by rfl

theorem table5322_entry064 :
    matchingVariables coloring5322 64 = table5322 64 := by rfl

theorem table5322_entry065 :
    matchingVariables coloring5322 65 = table5322 65 := by rfl

theorem table5322_entry066 :
    matchingVariables coloring5322 66 = table5322 66 := by rfl

theorem table5322_entry067 :
    matchingVariables coloring5322 67 = table5322 67 := by rfl

theorem table5322_entry068 :
    matchingVariables coloring5322 68 = table5322 68 := by rfl

theorem table5322_entry069 :
    matchingVariables coloring5322 69 = table5322 69 := by rfl

theorem table5322_entry070 :
    matchingVariables coloring5322 70 = table5322 70 := by rfl

theorem table5322_entry071 :
    matchingVariables coloring5322 71 = table5322 71 := by rfl

theorem table5322_entry072 :
    matchingVariables coloring5322 72 = table5322 72 := by rfl

theorem table5322_entry073 :
    matchingVariables coloring5322 73 = table5322 73 := by rfl

theorem table5322_entry074 :
    matchingVariables coloring5322 74 = table5322 74 := by rfl

theorem table5322_entry075 :
    matchingVariables coloring5322 75 = table5322 75 := by rfl

theorem table5322_entry076 :
    matchingVariables coloring5322 76 = table5322 76 := by rfl

theorem table5322_entry077 :
    matchingVariables coloring5322 77 = table5322 77 := by rfl

theorem table5322_entry078 :
    matchingVariables coloring5322 78 = table5322 78 := by rfl

theorem table5322_entry079 :
    matchingVariables coloring5322 79 = table5322 79 := by rfl

theorem table5322_entry080 :
    matchingVariables coloring5322 80 = table5322 80 := by rfl

theorem table5322_entry081 :
    matchingVariables coloring5322 81 = table5322 81 := by rfl

theorem table5322_entry082 :
    matchingVariables coloring5322 82 = table5322 82 := by rfl

theorem table5322_entry083 :
    matchingVariables coloring5322 83 = table5322 83 := by rfl

theorem table5322_entry084 :
    matchingVariables coloring5322 84 = table5322 84 := by rfl

theorem table5322_entry085 :
    matchingVariables coloring5322 85 = table5322 85 := by rfl

theorem table5322_entry086 :
    matchingVariables coloring5322 86 = table5322 86 := by rfl

theorem table5322_entry087 :
    matchingVariables coloring5322 87 = table5322 87 := by rfl

theorem table5322_entry088 :
    matchingVariables coloring5322 88 = table5322 88 := by rfl

theorem table5322_entry089 :
    matchingVariables coloring5322 89 = table5322 89 := by rfl

theorem table5322_entry090 :
    matchingVariables coloring5322 90 = table5322 90 := by rfl

theorem table5322_entry091 :
    matchingVariables coloring5322 91 = table5322 91 := by rfl

theorem table5322_entry092 :
    matchingVariables coloring5322 92 = table5322 92 := by rfl

theorem table5322_entry093 :
    matchingVariables coloring5322 93 = table5322 93 := by rfl

theorem table5322_entry094 :
    matchingVariables coloring5322 94 = table5322 94 := by rfl

theorem table5322_entry095 :
    matchingVariables coloring5322 95 = table5322 95 := by rfl

theorem table5322_entry096 :
    matchingVariables coloring5322 96 = table5322 96 := by rfl

theorem table5322_entry097 :
    matchingVariables coloring5322 97 = table5322 97 := by rfl

theorem table5322_entry098 :
    matchingVariables coloring5322 98 = table5322 98 := by rfl

theorem table5322_entry099 :
    matchingVariables coloring5322 99 = table5322 99 := by rfl

theorem table5322_entry100 :
    matchingVariables coloring5322 100 = table5322 100 := by rfl

theorem table5322_entry101 :
    matchingVariables coloring5322 101 = table5322 101 := by rfl

theorem table5322_entry102 :
    matchingVariables coloring5322 102 = table5322 102 := by rfl

theorem table5322_entry103 :
    matchingVariables coloring5322 103 = table5322 103 := by rfl

theorem table5322_entry104 :
    matchingVariables coloring5322 104 = table5322 104 := by rfl

theorem table5322_complete : ∀ m, matchingVariables coloring5322 m = table5322 m := by
  intro m
  fin_cases m
  · exact table5322_entry000
  · exact table5322_entry001
  · exact table5322_entry002
  · exact table5322_entry003
  · exact table5322_entry004
  · exact table5322_entry005
  · exact table5322_entry006
  · exact table5322_entry007
  · exact table5322_entry008
  · exact table5322_entry009
  · exact table5322_entry010
  · exact table5322_entry011
  · exact table5322_entry012
  · exact table5322_entry013
  · exact table5322_entry014
  · exact table5322_entry015
  · exact table5322_entry016
  · exact table5322_entry017
  · exact table5322_entry018
  · exact table5322_entry019
  · exact table5322_entry020
  · exact table5322_entry021
  · exact table5322_entry022
  · exact table5322_entry023
  · exact table5322_entry024
  · exact table5322_entry025
  · exact table5322_entry026
  · exact table5322_entry027
  · exact table5322_entry028
  · exact table5322_entry029
  · exact table5322_entry030
  · exact table5322_entry031
  · exact table5322_entry032
  · exact table5322_entry033
  · exact table5322_entry034
  · exact table5322_entry035
  · exact table5322_entry036
  · exact table5322_entry037
  · exact table5322_entry038
  · exact table5322_entry039
  · exact table5322_entry040
  · exact table5322_entry041
  · exact table5322_entry042
  · exact table5322_entry043
  · exact table5322_entry044
  · exact table5322_entry045
  · exact table5322_entry046
  · exact table5322_entry047
  · exact table5322_entry048
  · exact table5322_entry049
  · exact table5322_entry050
  · exact table5322_entry051
  · exact table5322_entry052
  · exact table5322_entry053
  · exact table5322_entry054
  · exact table5322_entry055
  · exact table5322_entry056
  · exact table5322_entry057
  · exact table5322_entry058
  · exact table5322_entry059
  · exact table5322_entry060
  · exact table5322_entry061
  · exact table5322_entry062
  · exact table5322_entry063
  · exact table5322_entry064
  · exact table5322_entry065
  · exact table5322_entry066
  · exact table5322_entry067
  · exact table5322_entry068
  · exact table5322_entry069
  · exact table5322_entry070
  · exact table5322_entry071
  · exact table5322_entry072
  · exact table5322_entry073
  · exact table5322_entry074
  · exact table5322_entry075
  · exact table5322_entry076
  · exact table5322_entry077
  · exact table5322_entry078
  · exact table5322_entry079
  · exact table5322_entry080
  · exact table5322_entry081
  · exact table5322_entry082
  · exact table5322_entry083
  · exact table5322_entry084
  · exact table5322_entry085
  · exact table5322_entry086
  · exact table5322_entry087
  · exact table5322_entry088
  · exact table5322_entry089
  · exact table5322_entry090
  · exact table5322_entry091
  · exact table5322_entry092
  · exact table5322_entry093
  · exact table5322_entry094
  · exact table5322_entry095
  · exact table5322_entry096
  · exact table5322_entry097
  · exact table5322_entry098
  · exact table5322_entry099
  · exact table5322_entry100
  · exact table5322_entry101
  · exact table5322_entry102
  · exact table5322_entry103
  · exact table5322_entry104

#print axioms table5322_complete

def expanded5322 : Polynomial 143 := [(1, exponentOfVariables [1, 59, 104, 139]),
  (1, exponentOfVariables [1, 69, 90, 139]),
  (1, exponentOfVariables [9, 41, 90, 139]),
  (1, exponentOfVariables [9, 51, 90, 127]),
  (1, exponentOfVariables [20, 51, 69, 123]),
  (1, exponentOfVariables [20, 51, 79, 104])]

theorem table5322_expanded : tablePolynomial table5322 = expanded5322 := by
  rfl

theorem table5322_exponent00 :
    exponentOfVariables (n := 143) [1, 59, 104, 139] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5322_exponent01 :
    exponentOfVariables (n := 143) [1, 69, 90, 139] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5322_exponent02 :
    exponentOfVariables (n := 143) [9, 41, 90, 139] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 90 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5322_exponent03 :
    exponentOfVariables (n := 143) [9, 51, 90, 127] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 90 then (1) else if i.val = 127 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5322_exponent04 :
    exponentOfVariables (n := 143) [20, 51, 69, 123] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 123 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5322_exponent05 :
    exponentOfVariables (n := 143) [20, 51, 79, 104] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 79 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5322_polynomial : expanded5322 = amplitude5322 := by
  simp only [expanded5322, amplitude5322, table5322_exponent00, table5322_exponent01, table5322_exponent02, table5322_exponent03, table5322_exponent04, table5322_exponent05]

theorem premiseCheck016 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude5322)) p016 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
