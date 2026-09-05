import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3078 : Fin 8 → Fin 3 := ![0, 0, 0, 0, 2, 0, 1, 1]

def table3078 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 57, 104, 138] else
    if m.val = 6 then some [0, 69, 84, 138] else
    if m.val = 21 then some [9, 38, 84, 138] else
    if m.val = 24 then some [9, 48, 84, 126] else
    if m.val = 25 then some [9, 48, 91, 122] else
    if m.val = 40 then some [18, 48, 69, 122] else none

theorem table3078_entry000 :
    matchingVariables coloring3078 0 = table3078 0 := by rfl

theorem table3078_entry001 :
    matchingVariables coloring3078 1 = table3078 1 := by rfl

theorem table3078_entry002 :
    matchingVariables coloring3078 2 = table3078 2 := by rfl

theorem table3078_entry003 :
    matchingVariables coloring3078 3 = table3078 3 := by rfl

theorem table3078_entry004 :
    matchingVariables coloring3078 4 = table3078 4 := by rfl

theorem table3078_entry005 :
    matchingVariables coloring3078 5 = table3078 5 := by rfl

theorem table3078_entry006 :
    matchingVariables coloring3078 6 = table3078 6 := by rfl

theorem table3078_entry007 :
    matchingVariables coloring3078 7 = table3078 7 := by rfl

theorem table3078_entry008 :
    matchingVariables coloring3078 8 = table3078 8 := by rfl

theorem table3078_entry009 :
    matchingVariables coloring3078 9 = table3078 9 := by rfl

theorem table3078_entry010 :
    matchingVariables coloring3078 10 = table3078 10 := by rfl

theorem table3078_entry011 :
    matchingVariables coloring3078 11 = table3078 11 := by rfl

theorem table3078_entry012 :
    matchingVariables coloring3078 12 = table3078 12 := by rfl

theorem table3078_entry013 :
    matchingVariables coloring3078 13 = table3078 13 := by rfl

theorem table3078_entry014 :
    matchingVariables coloring3078 14 = table3078 14 := by rfl

theorem table3078_entry015 :
    matchingVariables coloring3078 15 = table3078 15 := by rfl

theorem table3078_entry016 :
    matchingVariables coloring3078 16 = table3078 16 := by rfl

theorem table3078_entry017 :
    matchingVariables coloring3078 17 = table3078 17 := by rfl

theorem table3078_entry018 :
    matchingVariables coloring3078 18 = table3078 18 := by rfl

theorem table3078_entry019 :
    matchingVariables coloring3078 19 = table3078 19 := by rfl

theorem table3078_entry020 :
    matchingVariables coloring3078 20 = table3078 20 := by rfl

theorem table3078_entry021 :
    matchingVariables coloring3078 21 = table3078 21 := by rfl

theorem table3078_entry022 :
    matchingVariables coloring3078 22 = table3078 22 := by rfl

theorem table3078_entry023 :
    matchingVariables coloring3078 23 = table3078 23 := by rfl

theorem table3078_entry024 :
    matchingVariables coloring3078 24 = table3078 24 := by rfl

theorem table3078_entry025 :
    matchingVariables coloring3078 25 = table3078 25 := by rfl

theorem table3078_entry026 :
    matchingVariables coloring3078 26 = table3078 26 := by rfl

theorem table3078_entry027 :
    matchingVariables coloring3078 27 = table3078 27 := by rfl

theorem table3078_entry028 :
    matchingVariables coloring3078 28 = table3078 28 := by rfl

theorem table3078_entry029 :
    matchingVariables coloring3078 29 = table3078 29 := by rfl

theorem table3078_entry030 :
    matchingVariables coloring3078 30 = table3078 30 := by rfl

theorem table3078_entry031 :
    matchingVariables coloring3078 31 = table3078 31 := by rfl

theorem table3078_entry032 :
    matchingVariables coloring3078 32 = table3078 32 := by rfl

theorem table3078_entry033 :
    matchingVariables coloring3078 33 = table3078 33 := by rfl

theorem table3078_entry034 :
    matchingVariables coloring3078 34 = table3078 34 := by rfl

theorem table3078_entry035 :
    matchingVariables coloring3078 35 = table3078 35 := by rfl

theorem table3078_entry036 :
    matchingVariables coloring3078 36 = table3078 36 := by rfl

theorem table3078_entry037 :
    matchingVariables coloring3078 37 = table3078 37 := by rfl

theorem table3078_entry038 :
    matchingVariables coloring3078 38 = table3078 38 := by rfl

theorem table3078_entry039 :
    matchingVariables coloring3078 39 = table3078 39 := by rfl

theorem table3078_entry040 :
    matchingVariables coloring3078 40 = table3078 40 := by rfl

theorem table3078_entry041 :
    matchingVariables coloring3078 41 = table3078 41 := by rfl

theorem table3078_entry042 :
    matchingVariables coloring3078 42 = table3078 42 := by rfl

theorem table3078_entry043 :
    matchingVariables coloring3078 43 = table3078 43 := by rfl

theorem table3078_entry044 :
    matchingVariables coloring3078 44 = table3078 44 := by rfl

theorem table3078_entry045 :
    matchingVariables coloring3078 45 = table3078 45 := by rfl

theorem table3078_entry046 :
    matchingVariables coloring3078 46 = table3078 46 := by rfl

theorem table3078_entry047 :
    matchingVariables coloring3078 47 = table3078 47 := by rfl

theorem table3078_entry048 :
    matchingVariables coloring3078 48 = table3078 48 := by rfl

theorem table3078_entry049 :
    matchingVariables coloring3078 49 = table3078 49 := by rfl

theorem table3078_entry050 :
    matchingVariables coloring3078 50 = table3078 50 := by rfl

theorem table3078_entry051 :
    matchingVariables coloring3078 51 = table3078 51 := by rfl

theorem table3078_entry052 :
    matchingVariables coloring3078 52 = table3078 52 := by rfl

theorem table3078_entry053 :
    matchingVariables coloring3078 53 = table3078 53 := by rfl

theorem table3078_entry054 :
    matchingVariables coloring3078 54 = table3078 54 := by rfl

theorem table3078_entry055 :
    matchingVariables coloring3078 55 = table3078 55 := by rfl

theorem table3078_entry056 :
    matchingVariables coloring3078 56 = table3078 56 := by rfl

theorem table3078_entry057 :
    matchingVariables coloring3078 57 = table3078 57 := by rfl

theorem table3078_entry058 :
    matchingVariables coloring3078 58 = table3078 58 := by rfl

theorem table3078_entry059 :
    matchingVariables coloring3078 59 = table3078 59 := by rfl

theorem table3078_entry060 :
    matchingVariables coloring3078 60 = table3078 60 := by rfl

theorem table3078_entry061 :
    matchingVariables coloring3078 61 = table3078 61 := by rfl

theorem table3078_entry062 :
    matchingVariables coloring3078 62 = table3078 62 := by rfl

theorem table3078_entry063 :
    matchingVariables coloring3078 63 = table3078 63 := by rfl

theorem table3078_entry064 :
    matchingVariables coloring3078 64 = table3078 64 := by rfl

theorem table3078_entry065 :
    matchingVariables coloring3078 65 = table3078 65 := by rfl

theorem table3078_entry066 :
    matchingVariables coloring3078 66 = table3078 66 := by rfl

theorem table3078_entry067 :
    matchingVariables coloring3078 67 = table3078 67 := by rfl

theorem table3078_entry068 :
    matchingVariables coloring3078 68 = table3078 68 := by rfl

theorem table3078_entry069 :
    matchingVariables coloring3078 69 = table3078 69 := by rfl

theorem table3078_entry070 :
    matchingVariables coloring3078 70 = table3078 70 := by rfl

theorem table3078_entry071 :
    matchingVariables coloring3078 71 = table3078 71 := by rfl

theorem table3078_entry072 :
    matchingVariables coloring3078 72 = table3078 72 := by rfl

theorem table3078_entry073 :
    matchingVariables coloring3078 73 = table3078 73 := by rfl

theorem table3078_entry074 :
    matchingVariables coloring3078 74 = table3078 74 := by rfl

theorem table3078_entry075 :
    matchingVariables coloring3078 75 = table3078 75 := by rfl

theorem table3078_entry076 :
    matchingVariables coloring3078 76 = table3078 76 := by rfl

theorem table3078_entry077 :
    matchingVariables coloring3078 77 = table3078 77 := by rfl

theorem table3078_entry078 :
    matchingVariables coloring3078 78 = table3078 78 := by rfl

theorem table3078_entry079 :
    matchingVariables coloring3078 79 = table3078 79 := by rfl

theorem table3078_entry080 :
    matchingVariables coloring3078 80 = table3078 80 := by rfl

theorem table3078_entry081 :
    matchingVariables coloring3078 81 = table3078 81 := by rfl

theorem table3078_entry082 :
    matchingVariables coloring3078 82 = table3078 82 := by rfl

theorem table3078_entry083 :
    matchingVariables coloring3078 83 = table3078 83 := by rfl

theorem table3078_entry084 :
    matchingVariables coloring3078 84 = table3078 84 := by rfl

theorem table3078_entry085 :
    matchingVariables coloring3078 85 = table3078 85 := by rfl

theorem table3078_entry086 :
    matchingVariables coloring3078 86 = table3078 86 := by rfl

theorem table3078_entry087 :
    matchingVariables coloring3078 87 = table3078 87 := by rfl

theorem table3078_entry088 :
    matchingVariables coloring3078 88 = table3078 88 := by rfl

theorem table3078_entry089 :
    matchingVariables coloring3078 89 = table3078 89 := by rfl

theorem table3078_entry090 :
    matchingVariables coloring3078 90 = table3078 90 := by rfl

theorem table3078_entry091 :
    matchingVariables coloring3078 91 = table3078 91 := by rfl

theorem table3078_entry092 :
    matchingVariables coloring3078 92 = table3078 92 := by rfl

theorem table3078_entry093 :
    matchingVariables coloring3078 93 = table3078 93 := by rfl

theorem table3078_entry094 :
    matchingVariables coloring3078 94 = table3078 94 := by rfl

theorem table3078_entry095 :
    matchingVariables coloring3078 95 = table3078 95 := by rfl

theorem table3078_entry096 :
    matchingVariables coloring3078 96 = table3078 96 := by rfl

theorem table3078_entry097 :
    matchingVariables coloring3078 97 = table3078 97 := by rfl

theorem table3078_entry098 :
    matchingVariables coloring3078 98 = table3078 98 := by rfl

theorem table3078_entry099 :
    matchingVariables coloring3078 99 = table3078 99 := by rfl

theorem table3078_entry100 :
    matchingVariables coloring3078 100 = table3078 100 := by rfl

theorem table3078_entry101 :
    matchingVariables coloring3078 101 = table3078 101 := by rfl

theorem table3078_entry102 :
    matchingVariables coloring3078 102 = table3078 102 := by rfl

theorem table3078_entry103 :
    matchingVariables coloring3078 103 = table3078 103 := by rfl

theorem table3078_entry104 :
    matchingVariables coloring3078 104 = table3078 104 := by rfl

theorem table3078_complete : ∀ m, matchingVariables coloring3078 m = table3078 m := by
  intro m
  fin_cases m
  · exact table3078_entry000
  · exact table3078_entry001
  · exact table3078_entry002
  · exact table3078_entry003
  · exact table3078_entry004
  · exact table3078_entry005
  · exact table3078_entry006
  · exact table3078_entry007
  · exact table3078_entry008
  · exact table3078_entry009
  · exact table3078_entry010
  · exact table3078_entry011
  · exact table3078_entry012
  · exact table3078_entry013
  · exact table3078_entry014
  · exact table3078_entry015
  · exact table3078_entry016
  · exact table3078_entry017
  · exact table3078_entry018
  · exact table3078_entry019
  · exact table3078_entry020
  · exact table3078_entry021
  · exact table3078_entry022
  · exact table3078_entry023
  · exact table3078_entry024
  · exact table3078_entry025
  · exact table3078_entry026
  · exact table3078_entry027
  · exact table3078_entry028
  · exact table3078_entry029
  · exact table3078_entry030
  · exact table3078_entry031
  · exact table3078_entry032
  · exact table3078_entry033
  · exact table3078_entry034
  · exact table3078_entry035
  · exact table3078_entry036
  · exact table3078_entry037
  · exact table3078_entry038
  · exact table3078_entry039
  · exact table3078_entry040
  · exact table3078_entry041
  · exact table3078_entry042
  · exact table3078_entry043
  · exact table3078_entry044
  · exact table3078_entry045
  · exact table3078_entry046
  · exact table3078_entry047
  · exact table3078_entry048
  · exact table3078_entry049
  · exact table3078_entry050
  · exact table3078_entry051
  · exact table3078_entry052
  · exact table3078_entry053
  · exact table3078_entry054
  · exact table3078_entry055
  · exact table3078_entry056
  · exact table3078_entry057
  · exact table3078_entry058
  · exact table3078_entry059
  · exact table3078_entry060
  · exact table3078_entry061
  · exact table3078_entry062
  · exact table3078_entry063
  · exact table3078_entry064
  · exact table3078_entry065
  · exact table3078_entry066
  · exact table3078_entry067
  · exact table3078_entry068
  · exact table3078_entry069
  · exact table3078_entry070
  · exact table3078_entry071
  · exact table3078_entry072
  · exact table3078_entry073
  · exact table3078_entry074
  · exact table3078_entry075
  · exact table3078_entry076
  · exact table3078_entry077
  · exact table3078_entry078
  · exact table3078_entry079
  · exact table3078_entry080
  · exact table3078_entry081
  · exact table3078_entry082
  · exact table3078_entry083
  · exact table3078_entry084
  · exact table3078_entry085
  · exact table3078_entry086
  · exact table3078_entry087
  · exact table3078_entry088
  · exact table3078_entry089
  · exact table3078_entry090
  · exact table3078_entry091
  · exact table3078_entry092
  · exact table3078_entry093
  · exact table3078_entry094
  · exact table3078_entry095
  · exact table3078_entry096
  · exact table3078_entry097
  · exact table3078_entry098
  · exact table3078_entry099
  · exact table3078_entry100
  · exact table3078_entry101
  · exact table3078_entry102
  · exact table3078_entry103
  · exact table3078_entry104

#print axioms table3078_complete

def expanded3078 : Polynomial 143 := [(1, exponentOfVariables [0, 57, 104, 138]),
  (1, exponentOfVariables [0, 69, 84, 138]),
  (1, exponentOfVariables [9, 38, 84, 138]),
  (1, exponentOfVariables [9, 48, 84, 126]),
  (1, exponentOfVariables [9, 48, 91, 122]),
  (1, exponentOfVariables [18, 48, 69, 122])]

theorem table3078_expanded : tablePolynomial table3078 = expanded3078 := by
  rfl

theorem table3078_exponent00 :
    exponentOfVariables (n := 143) [0, 57, 104, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 57 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3078_exponent01 :
    exponentOfVariables (n := 143) [0, 69, 84, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3078_exponent02 :
    exponentOfVariables (n := 143) [9, 38, 84, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3078_exponent03 :
    exponentOfVariables (n := 143) [9, 48, 84, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 84 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3078_exponent04 :
    exponentOfVariables (n := 143) [9, 48, 91, 122] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 91 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3078_exponent05 :
    exponentOfVariables (n := 143) [18, 48, 69, 122] =
      (fun i => if i.val = 18 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3078_polynomial : expanded3078 = amplitude3078 := by
  simp only [expanded3078, amplitude3078, table3078_exponent00, table3078_exponent01, table3078_exponent02, table3078_exponent03, table3078_exponent04, table3078_exponent05]

theorem premiseCheck059 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3078)) p059 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
