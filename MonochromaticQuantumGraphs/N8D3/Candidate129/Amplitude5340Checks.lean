import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring5340 : Fin 8 → Fin 3 := ![0, 1, 2, 2, 2, 0, 1, 2]

def table5340 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 65, 104, 139] else
    if m.val = 6 then some [1, 75, 90, 139] else
    if m.val = 21 then some [11, 41, 90, 139] else
    if m.val = 24 then some [11, 51, 90, 127] else
    if m.val = 40 then some [20, 51, 75, 123] else
    if m.val = 41 then some [20, 51, 81, 104] else none

theorem table5340_entry000 :
    matchingVariables coloring5340 0 = table5340 0 := by rfl

theorem table5340_entry001 :
    matchingVariables coloring5340 1 = table5340 1 := by rfl

theorem table5340_entry002 :
    matchingVariables coloring5340 2 = table5340 2 := by rfl

theorem table5340_entry003 :
    matchingVariables coloring5340 3 = table5340 3 := by rfl

theorem table5340_entry004 :
    matchingVariables coloring5340 4 = table5340 4 := by rfl

theorem table5340_entry005 :
    matchingVariables coloring5340 5 = table5340 5 := by rfl

theorem table5340_entry006 :
    matchingVariables coloring5340 6 = table5340 6 := by rfl

theorem table5340_entry007 :
    matchingVariables coloring5340 7 = table5340 7 := by rfl

theorem table5340_entry008 :
    matchingVariables coloring5340 8 = table5340 8 := by rfl

theorem table5340_entry009 :
    matchingVariables coloring5340 9 = table5340 9 := by rfl

theorem table5340_entry010 :
    matchingVariables coloring5340 10 = table5340 10 := by rfl

theorem table5340_entry011 :
    matchingVariables coloring5340 11 = table5340 11 := by rfl

theorem table5340_entry012 :
    matchingVariables coloring5340 12 = table5340 12 := by rfl

theorem table5340_entry013 :
    matchingVariables coloring5340 13 = table5340 13 := by rfl

theorem table5340_entry014 :
    matchingVariables coloring5340 14 = table5340 14 := by rfl

theorem table5340_entry015 :
    matchingVariables coloring5340 15 = table5340 15 := by rfl

theorem table5340_entry016 :
    matchingVariables coloring5340 16 = table5340 16 := by rfl

theorem table5340_entry017 :
    matchingVariables coloring5340 17 = table5340 17 := by rfl

theorem table5340_entry018 :
    matchingVariables coloring5340 18 = table5340 18 := by rfl

theorem table5340_entry019 :
    matchingVariables coloring5340 19 = table5340 19 := by rfl

theorem table5340_entry020 :
    matchingVariables coloring5340 20 = table5340 20 := by rfl

theorem table5340_entry021 :
    matchingVariables coloring5340 21 = table5340 21 := by rfl

theorem table5340_entry022 :
    matchingVariables coloring5340 22 = table5340 22 := by rfl

theorem table5340_entry023 :
    matchingVariables coloring5340 23 = table5340 23 := by rfl

theorem table5340_entry024 :
    matchingVariables coloring5340 24 = table5340 24 := by rfl

theorem table5340_entry025 :
    matchingVariables coloring5340 25 = table5340 25 := by rfl

theorem table5340_entry026 :
    matchingVariables coloring5340 26 = table5340 26 := by rfl

theorem table5340_entry027 :
    matchingVariables coloring5340 27 = table5340 27 := by rfl

theorem table5340_entry028 :
    matchingVariables coloring5340 28 = table5340 28 := by rfl

theorem table5340_entry029 :
    matchingVariables coloring5340 29 = table5340 29 := by rfl

theorem table5340_entry030 :
    matchingVariables coloring5340 30 = table5340 30 := by rfl

theorem table5340_entry031 :
    matchingVariables coloring5340 31 = table5340 31 := by rfl

theorem table5340_entry032 :
    matchingVariables coloring5340 32 = table5340 32 := by rfl

theorem table5340_entry033 :
    matchingVariables coloring5340 33 = table5340 33 := by rfl

theorem table5340_entry034 :
    matchingVariables coloring5340 34 = table5340 34 := by rfl

theorem table5340_entry035 :
    matchingVariables coloring5340 35 = table5340 35 := by rfl

theorem table5340_entry036 :
    matchingVariables coloring5340 36 = table5340 36 := by rfl

theorem table5340_entry037 :
    matchingVariables coloring5340 37 = table5340 37 := by rfl

theorem table5340_entry038 :
    matchingVariables coloring5340 38 = table5340 38 := by rfl

theorem table5340_entry039 :
    matchingVariables coloring5340 39 = table5340 39 := by rfl

theorem table5340_entry040 :
    matchingVariables coloring5340 40 = table5340 40 := by rfl

theorem table5340_entry041 :
    matchingVariables coloring5340 41 = table5340 41 := by rfl

theorem table5340_entry042 :
    matchingVariables coloring5340 42 = table5340 42 := by rfl

theorem table5340_entry043 :
    matchingVariables coloring5340 43 = table5340 43 := by rfl

theorem table5340_entry044 :
    matchingVariables coloring5340 44 = table5340 44 := by rfl

theorem table5340_entry045 :
    matchingVariables coloring5340 45 = table5340 45 := by rfl

theorem table5340_entry046 :
    matchingVariables coloring5340 46 = table5340 46 := by rfl

theorem table5340_entry047 :
    matchingVariables coloring5340 47 = table5340 47 := by rfl

theorem table5340_entry048 :
    matchingVariables coloring5340 48 = table5340 48 := by rfl

theorem table5340_entry049 :
    matchingVariables coloring5340 49 = table5340 49 := by rfl

theorem table5340_entry050 :
    matchingVariables coloring5340 50 = table5340 50 := by rfl

theorem table5340_entry051 :
    matchingVariables coloring5340 51 = table5340 51 := by rfl

theorem table5340_entry052 :
    matchingVariables coloring5340 52 = table5340 52 := by rfl

theorem table5340_entry053 :
    matchingVariables coloring5340 53 = table5340 53 := by rfl

theorem table5340_entry054 :
    matchingVariables coloring5340 54 = table5340 54 := by rfl

theorem table5340_entry055 :
    matchingVariables coloring5340 55 = table5340 55 := by rfl

theorem table5340_entry056 :
    matchingVariables coloring5340 56 = table5340 56 := by rfl

theorem table5340_entry057 :
    matchingVariables coloring5340 57 = table5340 57 := by rfl

theorem table5340_entry058 :
    matchingVariables coloring5340 58 = table5340 58 := by rfl

theorem table5340_entry059 :
    matchingVariables coloring5340 59 = table5340 59 := by rfl

theorem table5340_entry060 :
    matchingVariables coloring5340 60 = table5340 60 := by rfl

theorem table5340_entry061 :
    matchingVariables coloring5340 61 = table5340 61 := by rfl

theorem table5340_entry062 :
    matchingVariables coloring5340 62 = table5340 62 := by rfl

theorem table5340_entry063 :
    matchingVariables coloring5340 63 = table5340 63 := by rfl

theorem table5340_entry064 :
    matchingVariables coloring5340 64 = table5340 64 := by rfl

theorem table5340_entry065 :
    matchingVariables coloring5340 65 = table5340 65 := by rfl

theorem table5340_entry066 :
    matchingVariables coloring5340 66 = table5340 66 := by rfl

theorem table5340_entry067 :
    matchingVariables coloring5340 67 = table5340 67 := by rfl

theorem table5340_entry068 :
    matchingVariables coloring5340 68 = table5340 68 := by rfl

theorem table5340_entry069 :
    matchingVariables coloring5340 69 = table5340 69 := by rfl

theorem table5340_entry070 :
    matchingVariables coloring5340 70 = table5340 70 := by rfl

theorem table5340_entry071 :
    matchingVariables coloring5340 71 = table5340 71 := by rfl

theorem table5340_entry072 :
    matchingVariables coloring5340 72 = table5340 72 := by rfl

theorem table5340_entry073 :
    matchingVariables coloring5340 73 = table5340 73 := by rfl

theorem table5340_entry074 :
    matchingVariables coloring5340 74 = table5340 74 := by rfl

theorem table5340_entry075 :
    matchingVariables coloring5340 75 = table5340 75 := by rfl

theorem table5340_entry076 :
    matchingVariables coloring5340 76 = table5340 76 := by rfl

theorem table5340_entry077 :
    matchingVariables coloring5340 77 = table5340 77 := by rfl

theorem table5340_entry078 :
    matchingVariables coloring5340 78 = table5340 78 := by rfl

theorem table5340_entry079 :
    matchingVariables coloring5340 79 = table5340 79 := by rfl

theorem table5340_entry080 :
    matchingVariables coloring5340 80 = table5340 80 := by rfl

theorem table5340_entry081 :
    matchingVariables coloring5340 81 = table5340 81 := by rfl

theorem table5340_entry082 :
    matchingVariables coloring5340 82 = table5340 82 := by rfl

theorem table5340_entry083 :
    matchingVariables coloring5340 83 = table5340 83 := by rfl

theorem table5340_entry084 :
    matchingVariables coloring5340 84 = table5340 84 := by rfl

theorem table5340_entry085 :
    matchingVariables coloring5340 85 = table5340 85 := by rfl

theorem table5340_entry086 :
    matchingVariables coloring5340 86 = table5340 86 := by rfl

theorem table5340_entry087 :
    matchingVariables coloring5340 87 = table5340 87 := by rfl

theorem table5340_entry088 :
    matchingVariables coloring5340 88 = table5340 88 := by rfl

theorem table5340_entry089 :
    matchingVariables coloring5340 89 = table5340 89 := by rfl

theorem table5340_entry090 :
    matchingVariables coloring5340 90 = table5340 90 := by rfl

theorem table5340_entry091 :
    matchingVariables coloring5340 91 = table5340 91 := by rfl

theorem table5340_entry092 :
    matchingVariables coloring5340 92 = table5340 92 := by rfl

theorem table5340_entry093 :
    matchingVariables coloring5340 93 = table5340 93 := by rfl

theorem table5340_entry094 :
    matchingVariables coloring5340 94 = table5340 94 := by rfl

theorem table5340_entry095 :
    matchingVariables coloring5340 95 = table5340 95 := by rfl

theorem table5340_entry096 :
    matchingVariables coloring5340 96 = table5340 96 := by rfl

theorem table5340_entry097 :
    matchingVariables coloring5340 97 = table5340 97 := by rfl

theorem table5340_entry098 :
    matchingVariables coloring5340 98 = table5340 98 := by rfl

theorem table5340_entry099 :
    matchingVariables coloring5340 99 = table5340 99 := by rfl

theorem table5340_entry100 :
    matchingVariables coloring5340 100 = table5340 100 := by rfl

theorem table5340_entry101 :
    matchingVariables coloring5340 101 = table5340 101 := by rfl

theorem table5340_entry102 :
    matchingVariables coloring5340 102 = table5340 102 := by rfl

theorem table5340_entry103 :
    matchingVariables coloring5340 103 = table5340 103 := by rfl

theorem table5340_entry104 :
    matchingVariables coloring5340 104 = table5340 104 := by rfl

theorem table5340_complete : ∀ m, matchingVariables coloring5340 m = table5340 m := by
  intro m
  fin_cases m
  · exact table5340_entry000
  · exact table5340_entry001
  · exact table5340_entry002
  · exact table5340_entry003
  · exact table5340_entry004
  · exact table5340_entry005
  · exact table5340_entry006
  · exact table5340_entry007
  · exact table5340_entry008
  · exact table5340_entry009
  · exact table5340_entry010
  · exact table5340_entry011
  · exact table5340_entry012
  · exact table5340_entry013
  · exact table5340_entry014
  · exact table5340_entry015
  · exact table5340_entry016
  · exact table5340_entry017
  · exact table5340_entry018
  · exact table5340_entry019
  · exact table5340_entry020
  · exact table5340_entry021
  · exact table5340_entry022
  · exact table5340_entry023
  · exact table5340_entry024
  · exact table5340_entry025
  · exact table5340_entry026
  · exact table5340_entry027
  · exact table5340_entry028
  · exact table5340_entry029
  · exact table5340_entry030
  · exact table5340_entry031
  · exact table5340_entry032
  · exact table5340_entry033
  · exact table5340_entry034
  · exact table5340_entry035
  · exact table5340_entry036
  · exact table5340_entry037
  · exact table5340_entry038
  · exact table5340_entry039
  · exact table5340_entry040
  · exact table5340_entry041
  · exact table5340_entry042
  · exact table5340_entry043
  · exact table5340_entry044
  · exact table5340_entry045
  · exact table5340_entry046
  · exact table5340_entry047
  · exact table5340_entry048
  · exact table5340_entry049
  · exact table5340_entry050
  · exact table5340_entry051
  · exact table5340_entry052
  · exact table5340_entry053
  · exact table5340_entry054
  · exact table5340_entry055
  · exact table5340_entry056
  · exact table5340_entry057
  · exact table5340_entry058
  · exact table5340_entry059
  · exact table5340_entry060
  · exact table5340_entry061
  · exact table5340_entry062
  · exact table5340_entry063
  · exact table5340_entry064
  · exact table5340_entry065
  · exact table5340_entry066
  · exact table5340_entry067
  · exact table5340_entry068
  · exact table5340_entry069
  · exact table5340_entry070
  · exact table5340_entry071
  · exact table5340_entry072
  · exact table5340_entry073
  · exact table5340_entry074
  · exact table5340_entry075
  · exact table5340_entry076
  · exact table5340_entry077
  · exact table5340_entry078
  · exact table5340_entry079
  · exact table5340_entry080
  · exact table5340_entry081
  · exact table5340_entry082
  · exact table5340_entry083
  · exact table5340_entry084
  · exact table5340_entry085
  · exact table5340_entry086
  · exact table5340_entry087
  · exact table5340_entry088
  · exact table5340_entry089
  · exact table5340_entry090
  · exact table5340_entry091
  · exact table5340_entry092
  · exact table5340_entry093
  · exact table5340_entry094
  · exact table5340_entry095
  · exact table5340_entry096
  · exact table5340_entry097
  · exact table5340_entry098
  · exact table5340_entry099
  · exact table5340_entry100
  · exact table5340_entry101
  · exact table5340_entry102
  · exact table5340_entry103
  · exact table5340_entry104

#print axioms table5340_complete

def expanded5340 : Polynomial 143 := [(1, exponentOfVariables [1, 65, 104, 139]),
  (1, exponentOfVariables [1, 75, 90, 139]),
  (1, exponentOfVariables [11, 41, 90, 139]),
  (1, exponentOfVariables [11, 51, 90, 127]),
  (1, exponentOfVariables [20, 51, 75, 123]),
  (1, exponentOfVariables [20, 51, 81, 104])]

theorem table5340_expanded : tablePolynomial table5340 = expanded5340 := by
  rfl

theorem table5340_exponent00 :
    exponentOfVariables (n := 143) [1, 65, 104, 139] =
      (fun i => if i.val = 1 then (1) else if i.val = 65 then (1) else if i.val = 104 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5340_exponent01 :
    exponentOfVariables (n := 143) [1, 75, 90, 139] =
      (fun i => if i.val = 1 then (1) else if i.val = 75 then (1) else if i.val = 90 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5340_exponent02 :
    exponentOfVariables (n := 143) [11, 41, 90, 139] =
      (fun i => if i.val = 11 then (1) else if i.val = 41 then (1) else if i.val = 90 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5340_exponent03 :
    exponentOfVariables (n := 143) [11, 51, 90, 127] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 90 then (1) else if i.val = 127 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5340_exponent04 :
    exponentOfVariables (n := 143) [20, 51, 75, 123] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 75 then (1) else if i.val = 123 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5340_exponent05 :
    exponentOfVariables (n := 143) [20, 51, 81, 104] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 81 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5340_polynomial : expanded5340 = amplitude5340 := by
  simp only [expanded5340, amplitude5340, table5340_exponent00, table5340_exponent01, table5340_exponent02, table5340_exponent03, table5340_exponent04, table5340_exponent05]

theorem premiseCheck004 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude5340)) p004 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
