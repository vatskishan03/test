import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3861 : Fin 8 → Fin 3 := ![0, 0, 0, 2, 2, 0, 2, 1]

def table3861 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 59, 104, 141] else
    if m.val = 1 then some [0, 59, 114, 126] else
    if m.val = 6 then some [0, 69, 90, 141] else
    if m.val = 21 then some [9, 38, 90, 141] else
    if m.val = 24 then some [9, 49, 90, 126] else
    if m.val = 40 then some [20, 49, 69, 122] else none

theorem table3861_entry000 :
    matchingVariables coloring3861 0 = table3861 0 := by rfl

theorem table3861_entry001 :
    matchingVariables coloring3861 1 = table3861 1 := by rfl

theorem table3861_entry002 :
    matchingVariables coloring3861 2 = table3861 2 := by rfl

theorem table3861_entry003 :
    matchingVariables coloring3861 3 = table3861 3 := by rfl

theorem table3861_entry004 :
    matchingVariables coloring3861 4 = table3861 4 := by rfl

theorem table3861_entry005 :
    matchingVariables coloring3861 5 = table3861 5 := by rfl

theorem table3861_entry006 :
    matchingVariables coloring3861 6 = table3861 6 := by rfl

theorem table3861_entry007 :
    matchingVariables coloring3861 7 = table3861 7 := by rfl

theorem table3861_entry008 :
    matchingVariables coloring3861 8 = table3861 8 := by rfl

theorem table3861_entry009 :
    matchingVariables coloring3861 9 = table3861 9 := by rfl

theorem table3861_entry010 :
    matchingVariables coloring3861 10 = table3861 10 := by rfl

theorem table3861_entry011 :
    matchingVariables coloring3861 11 = table3861 11 := by rfl

theorem table3861_entry012 :
    matchingVariables coloring3861 12 = table3861 12 := by rfl

theorem table3861_entry013 :
    matchingVariables coloring3861 13 = table3861 13 := by rfl

theorem table3861_entry014 :
    matchingVariables coloring3861 14 = table3861 14 := by rfl

theorem table3861_entry015 :
    matchingVariables coloring3861 15 = table3861 15 := by rfl

theorem table3861_entry016 :
    matchingVariables coloring3861 16 = table3861 16 := by rfl

theorem table3861_entry017 :
    matchingVariables coloring3861 17 = table3861 17 := by rfl

theorem table3861_entry018 :
    matchingVariables coloring3861 18 = table3861 18 := by rfl

theorem table3861_entry019 :
    matchingVariables coloring3861 19 = table3861 19 := by rfl

theorem table3861_entry020 :
    matchingVariables coloring3861 20 = table3861 20 := by rfl

theorem table3861_entry021 :
    matchingVariables coloring3861 21 = table3861 21 := by rfl

theorem table3861_entry022 :
    matchingVariables coloring3861 22 = table3861 22 := by rfl

theorem table3861_entry023 :
    matchingVariables coloring3861 23 = table3861 23 := by rfl

theorem table3861_entry024 :
    matchingVariables coloring3861 24 = table3861 24 := by rfl

theorem table3861_entry025 :
    matchingVariables coloring3861 25 = table3861 25 := by rfl

theorem table3861_entry026 :
    matchingVariables coloring3861 26 = table3861 26 := by rfl

theorem table3861_entry027 :
    matchingVariables coloring3861 27 = table3861 27 := by rfl

theorem table3861_entry028 :
    matchingVariables coloring3861 28 = table3861 28 := by rfl

theorem table3861_entry029 :
    matchingVariables coloring3861 29 = table3861 29 := by rfl

theorem table3861_entry030 :
    matchingVariables coloring3861 30 = table3861 30 := by rfl

theorem table3861_entry031 :
    matchingVariables coloring3861 31 = table3861 31 := by rfl

theorem table3861_entry032 :
    matchingVariables coloring3861 32 = table3861 32 := by rfl

theorem table3861_entry033 :
    matchingVariables coloring3861 33 = table3861 33 := by rfl

theorem table3861_entry034 :
    matchingVariables coloring3861 34 = table3861 34 := by rfl

theorem table3861_entry035 :
    matchingVariables coloring3861 35 = table3861 35 := by rfl

theorem table3861_entry036 :
    matchingVariables coloring3861 36 = table3861 36 := by rfl

theorem table3861_entry037 :
    matchingVariables coloring3861 37 = table3861 37 := by rfl

theorem table3861_entry038 :
    matchingVariables coloring3861 38 = table3861 38 := by rfl

theorem table3861_entry039 :
    matchingVariables coloring3861 39 = table3861 39 := by rfl

theorem table3861_entry040 :
    matchingVariables coloring3861 40 = table3861 40 := by rfl

theorem table3861_entry041 :
    matchingVariables coloring3861 41 = table3861 41 := by rfl

theorem table3861_entry042 :
    matchingVariables coloring3861 42 = table3861 42 := by rfl

theorem table3861_entry043 :
    matchingVariables coloring3861 43 = table3861 43 := by rfl

theorem table3861_entry044 :
    matchingVariables coloring3861 44 = table3861 44 := by rfl

theorem table3861_entry045 :
    matchingVariables coloring3861 45 = table3861 45 := by rfl

theorem table3861_entry046 :
    matchingVariables coloring3861 46 = table3861 46 := by rfl

theorem table3861_entry047 :
    matchingVariables coloring3861 47 = table3861 47 := by rfl

theorem table3861_entry048 :
    matchingVariables coloring3861 48 = table3861 48 := by rfl

theorem table3861_entry049 :
    matchingVariables coloring3861 49 = table3861 49 := by rfl

theorem table3861_entry050 :
    matchingVariables coloring3861 50 = table3861 50 := by rfl

theorem table3861_entry051 :
    matchingVariables coloring3861 51 = table3861 51 := by rfl

theorem table3861_entry052 :
    matchingVariables coloring3861 52 = table3861 52 := by rfl

theorem table3861_entry053 :
    matchingVariables coloring3861 53 = table3861 53 := by rfl

theorem table3861_entry054 :
    matchingVariables coloring3861 54 = table3861 54 := by rfl

theorem table3861_entry055 :
    matchingVariables coloring3861 55 = table3861 55 := by rfl

theorem table3861_entry056 :
    matchingVariables coloring3861 56 = table3861 56 := by rfl

theorem table3861_entry057 :
    matchingVariables coloring3861 57 = table3861 57 := by rfl

theorem table3861_entry058 :
    matchingVariables coloring3861 58 = table3861 58 := by rfl

theorem table3861_entry059 :
    matchingVariables coloring3861 59 = table3861 59 := by rfl

theorem table3861_entry060 :
    matchingVariables coloring3861 60 = table3861 60 := by rfl

theorem table3861_entry061 :
    matchingVariables coloring3861 61 = table3861 61 := by rfl

theorem table3861_entry062 :
    matchingVariables coloring3861 62 = table3861 62 := by rfl

theorem table3861_entry063 :
    matchingVariables coloring3861 63 = table3861 63 := by rfl

theorem table3861_entry064 :
    matchingVariables coloring3861 64 = table3861 64 := by rfl

theorem table3861_entry065 :
    matchingVariables coloring3861 65 = table3861 65 := by rfl

theorem table3861_entry066 :
    matchingVariables coloring3861 66 = table3861 66 := by rfl

theorem table3861_entry067 :
    matchingVariables coloring3861 67 = table3861 67 := by rfl

theorem table3861_entry068 :
    matchingVariables coloring3861 68 = table3861 68 := by rfl

theorem table3861_entry069 :
    matchingVariables coloring3861 69 = table3861 69 := by rfl

theorem table3861_entry070 :
    matchingVariables coloring3861 70 = table3861 70 := by rfl

theorem table3861_entry071 :
    matchingVariables coloring3861 71 = table3861 71 := by rfl

theorem table3861_entry072 :
    matchingVariables coloring3861 72 = table3861 72 := by rfl

theorem table3861_entry073 :
    matchingVariables coloring3861 73 = table3861 73 := by rfl

theorem table3861_entry074 :
    matchingVariables coloring3861 74 = table3861 74 := by rfl

theorem table3861_entry075 :
    matchingVariables coloring3861 75 = table3861 75 := by rfl

theorem table3861_entry076 :
    matchingVariables coloring3861 76 = table3861 76 := by rfl

theorem table3861_entry077 :
    matchingVariables coloring3861 77 = table3861 77 := by rfl

theorem table3861_entry078 :
    matchingVariables coloring3861 78 = table3861 78 := by rfl

theorem table3861_entry079 :
    matchingVariables coloring3861 79 = table3861 79 := by rfl

theorem table3861_entry080 :
    matchingVariables coloring3861 80 = table3861 80 := by rfl

theorem table3861_entry081 :
    matchingVariables coloring3861 81 = table3861 81 := by rfl

theorem table3861_entry082 :
    matchingVariables coloring3861 82 = table3861 82 := by rfl

theorem table3861_entry083 :
    matchingVariables coloring3861 83 = table3861 83 := by rfl

theorem table3861_entry084 :
    matchingVariables coloring3861 84 = table3861 84 := by rfl

theorem table3861_entry085 :
    matchingVariables coloring3861 85 = table3861 85 := by rfl

theorem table3861_entry086 :
    matchingVariables coloring3861 86 = table3861 86 := by rfl

theorem table3861_entry087 :
    matchingVariables coloring3861 87 = table3861 87 := by rfl

theorem table3861_entry088 :
    matchingVariables coloring3861 88 = table3861 88 := by rfl

theorem table3861_entry089 :
    matchingVariables coloring3861 89 = table3861 89 := by rfl

theorem table3861_entry090 :
    matchingVariables coloring3861 90 = table3861 90 := by rfl

theorem table3861_entry091 :
    matchingVariables coloring3861 91 = table3861 91 := by rfl

theorem table3861_entry092 :
    matchingVariables coloring3861 92 = table3861 92 := by rfl

theorem table3861_entry093 :
    matchingVariables coloring3861 93 = table3861 93 := by rfl

theorem table3861_entry094 :
    matchingVariables coloring3861 94 = table3861 94 := by rfl

theorem table3861_entry095 :
    matchingVariables coloring3861 95 = table3861 95 := by rfl

theorem table3861_entry096 :
    matchingVariables coloring3861 96 = table3861 96 := by rfl

theorem table3861_entry097 :
    matchingVariables coloring3861 97 = table3861 97 := by rfl

theorem table3861_entry098 :
    matchingVariables coloring3861 98 = table3861 98 := by rfl

theorem table3861_entry099 :
    matchingVariables coloring3861 99 = table3861 99 := by rfl

theorem table3861_entry100 :
    matchingVariables coloring3861 100 = table3861 100 := by rfl

theorem table3861_entry101 :
    matchingVariables coloring3861 101 = table3861 101 := by rfl

theorem table3861_entry102 :
    matchingVariables coloring3861 102 = table3861 102 := by rfl

theorem table3861_entry103 :
    matchingVariables coloring3861 103 = table3861 103 := by rfl

theorem table3861_entry104 :
    matchingVariables coloring3861 104 = table3861 104 := by rfl

theorem table3861_complete : ∀ m, matchingVariables coloring3861 m = table3861 m := by
  intro m
  fin_cases m
  · exact table3861_entry000
  · exact table3861_entry001
  · exact table3861_entry002
  · exact table3861_entry003
  · exact table3861_entry004
  · exact table3861_entry005
  · exact table3861_entry006
  · exact table3861_entry007
  · exact table3861_entry008
  · exact table3861_entry009
  · exact table3861_entry010
  · exact table3861_entry011
  · exact table3861_entry012
  · exact table3861_entry013
  · exact table3861_entry014
  · exact table3861_entry015
  · exact table3861_entry016
  · exact table3861_entry017
  · exact table3861_entry018
  · exact table3861_entry019
  · exact table3861_entry020
  · exact table3861_entry021
  · exact table3861_entry022
  · exact table3861_entry023
  · exact table3861_entry024
  · exact table3861_entry025
  · exact table3861_entry026
  · exact table3861_entry027
  · exact table3861_entry028
  · exact table3861_entry029
  · exact table3861_entry030
  · exact table3861_entry031
  · exact table3861_entry032
  · exact table3861_entry033
  · exact table3861_entry034
  · exact table3861_entry035
  · exact table3861_entry036
  · exact table3861_entry037
  · exact table3861_entry038
  · exact table3861_entry039
  · exact table3861_entry040
  · exact table3861_entry041
  · exact table3861_entry042
  · exact table3861_entry043
  · exact table3861_entry044
  · exact table3861_entry045
  · exact table3861_entry046
  · exact table3861_entry047
  · exact table3861_entry048
  · exact table3861_entry049
  · exact table3861_entry050
  · exact table3861_entry051
  · exact table3861_entry052
  · exact table3861_entry053
  · exact table3861_entry054
  · exact table3861_entry055
  · exact table3861_entry056
  · exact table3861_entry057
  · exact table3861_entry058
  · exact table3861_entry059
  · exact table3861_entry060
  · exact table3861_entry061
  · exact table3861_entry062
  · exact table3861_entry063
  · exact table3861_entry064
  · exact table3861_entry065
  · exact table3861_entry066
  · exact table3861_entry067
  · exact table3861_entry068
  · exact table3861_entry069
  · exact table3861_entry070
  · exact table3861_entry071
  · exact table3861_entry072
  · exact table3861_entry073
  · exact table3861_entry074
  · exact table3861_entry075
  · exact table3861_entry076
  · exact table3861_entry077
  · exact table3861_entry078
  · exact table3861_entry079
  · exact table3861_entry080
  · exact table3861_entry081
  · exact table3861_entry082
  · exact table3861_entry083
  · exact table3861_entry084
  · exact table3861_entry085
  · exact table3861_entry086
  · exact table3861_entry087
  · exact table3861_entry088
  · exact table3861_entry089
  · exact table3861_entry090
  · exact table3861_entry091
  · exact table3861_entry092
  · exact table3861_entry093
  · exact table3861_entry094
  · exact table3861_entry095
  · exact table3861_entry096
  · exact table3861_entry097
  · exact table3861_entry098
  · exact table3861_entry099
  · exact table3861_entry100
  · exact table3861_entry101
  · exact table3861_entry102
  · exact table3861_entry103
  · exact table3861_entry104

#print axioms table3861_complete

def expanded3861 : Polynomial 143 := [(1, exponentOfVariables [0, 59, 104, 141]),
  (1, exponentOfVariables [0, 59, 114, 126]),
  (1, exponentOfVariables [0, 69, 90, 141]),
  (1, exponentOfVariables [9, 38, 90, 141]),
  (1, exponentOfVariables [9, 49, 90, 126]),
  (1, exponentOfVariables [20, 49, 69, 122])]

theorem table3861_expanded : tablePolynomial table3861 = expanded3861 := by
  rfl

theorem table3861_exponent00 :
    exponentOfVariables (n := 143) [0, 59, 104, 141] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3861_exponent01 :
    exponentOfVariables (n := 143) [0, 59, 114, 126] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 114 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3861_exponent02 :
    exponentOfVariables (n := 143) [0, 69, 90, 141] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3861_exponent03 :
    exponentOfVariables (n := 143) [9, 38, 90, 141] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 90 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3861_exponent04 :
    exponentOfVariables (n := 143) [9, 49, 90, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 49 then (1) else if i.val = 90 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3861_exponent05 :
    exponentOfVariables (n := 143) [20, 49, 69, 122] =
      (fun i => if i.val = 20 then (1) else if i.val = 49 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3861_polynomial : expanded3861 = amplitude3861 := by
  simp only [expanded3861, amplitude3861, table3861_exponent00, table3861_exponent01, table3861_exponent02, table3861_exponent03, table3861_exponent04, table3861_exponent05]

theorem premiseCheck123 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3861)) p123 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
