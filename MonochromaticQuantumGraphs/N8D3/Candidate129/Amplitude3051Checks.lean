import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3051 : Fin 8 → Fin 3 := ![0, 0, 0, 2, 1, 0, 1, 1]

def table3051 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 59, 101, 138] else
    if m.val = 1 then some [0, 59, 111, 126] else
    if m.val = 6 then some [0, 69, 89, 138] else
    if m.val = 21 then some [9, 38, 89, 138] else
    if m.val = 24 then some [9, 48, 89, 126] else
    if m.val = 40 then some [20, 48, 69, 119] else none

theorem table3051_entry000 :
    matchingVariables coloring3051 0 = table3051 0 := by rfl

theorem table3051_entry001 :
    matchingVariables coloring3051 1 = table3051 1 := by rfl

theorem table3051_entry002 :
    matchingVariables coloring3051 2 = table3051 2 := by rfl

theorem table3051_entry003 :
    matchingVariables coloring3051 3 = table3051 3 := by rfl

theorem table3051_entry004 :
    matchingVariables coloring3051 4 = table3051 4 := by rfl

theorem table3051_entry005 :
    matchingVariables coloring3051 5 = table3051 5 := by rfl

theorem table3051_entry006 :
    matchingVariables coloring3051 6 = table3051 6 := by rfl

theorem table3051_entry007 :
    matchingVariables coloring3051 7 = table3051 7 := by rfl

theorem table3051_entry008 :
    matchingVariables coloring3051 8 = table3051 8 := by rfl

theorem table3051_entry009 :
    matchingVariables coloring3051 9 = table3051 9 := by rfl

theorem table3051_entry010 :
    matchingVariables coloring3051 10 = table3051 10 := by rfl

theorem table3051_entry011 :
    matchingVariables coloring3051 11 = table3051 11 := by rfl

theorem table3051_entry012 :
    matchingVariables coloring3051 12 = table3051 12 := by rfl

theorem table3051_entry013 :
    matchingVariables coloring3051 13 = table3051 13 := by rfl

theorem table3051_entry014 :
    matchingVariables coloring3051 14 = table3051 14 := by rfl

theorem table3051_entry015 :
    matchingVariables coloring3051 15 = table3051 15 := by rfl

theorem table3051_entry016 :
    matchingVariables coloring3051 16 = table3051 16 := by rfl

theorem table3051_entry017 :
    matchingVariables coloring3051 17 = table3051 17 := by rfl

theorem table3051_entry018 :
    matchingVariables coloring3051 18 = table3051 18 := by rfl

theorem table3051_entry019 :
    matchingVariables coloring3051 19 = table3051 19 := by rfl

theorem table3051_entry020 :
    matchingVariables coloring3051 20 = table3051 20 := by rfl

theorem table3051_entry021 :
    matchingVariables coloring3051 21 = table3051 21 := by rfl

theorem table3051_entry022 :
    matchingVariables coloring3051 22 = table3051 22 := by rfl

theorem table3051_entry023 :
    matchingVariables coloring3051 23 = table3051 23 := by rfl

theorem table3051_entry024 :
    matchingVariables coloring3051 24 = table3051 24 := by rfl

theorem table3051_entry025 :
    matchingVariables coloring3051 25 = table3051 25 := by rfl

theorem table3051_entry026 :
    matchingVariables coloring3051 26 = table3051 26 := by rfl

theorem table3051_entry027 :
    matchingVariables coloring3051 27 = table3051 27 := by rfl

theorem table3051_entry028 :
    matchingVariables coloring3051 28 = table3051 28 := by rfl

theorem table3051_entry029 :
    matchingVariables coloring3051 29 = table3051 29 := by rfl

theorem table3051_entry030 :
    matchingVariables coloring3051 30 = table3051 30 := by rfl

theorem table3051_entry031 :
    matchingVariables coloring3051 31 = table3051 31 := by rfl

theorem table3051_entry032 :
    matchingVariables coloring3051 32 = table3051 32 := by rfl

theorem table3051_entry033 :
    matchingVariables coloring3051 33 = table3051 33 := by rfl

theorem table3051_entry034 :
    matchingVariables coloring3051 34 = table3051 34 := by rfl

theorem table3051_entry035 :
    matchingVariables coloring3051 35 = table3051 35 := by rfl

theorem table3051_entry036 :
    matchingVariables coloring3051 36 = table3051 36 := by rfl

theorem table3051_entry037 :
    matchingVariables coloring3051 37 = table3051 37 := by rfl

theorem table3051_entry038 :
    matchingVariables coloring3051 38 = table3051 38 := by rfl

theorem table3051_entry039 :
    matchingVariables coloring3051 39 = table3051 39 := by rfl

theorem table3051_entry040 :
    matchingVariables coloring3051 40 = table3051 40 := by rfl

theorem table3051_entry041 :
    matchingVariables coloring3051 41 = table3051 41 := by rfl

theorem table3051_entry042 :
    matchingVariables coloring3051 42 = table3051 42 := by rfl

theorem table3051_entry043 :
    matchingVariables coloring3051 43 = table3051 43 := by rfl

theorem table3051_entry044 :
    matchingVariables coloring3051 44 = table3051 44 := by rfl

theorem table3051_entry045 :
    matchingVariables coloring3051 45 = table3051 45 := by rfl

theorem table3051_entry046 :
    matchingVariables coloring3051 46 = table3051 46 := by rfl

theorem table3051_entry047 :
    matchingVariables coloring3051 47 = table3051 47 := by rfl

theorem table3051_entry048 :
    matchingVariables coloring3051 48 = table3051 48 := by rfl

theorem table3051_entry049 :
    matchingVariables coloring3051 49 = table3051 49 := by rfl

theorem table3051_entry050 :
    matchingVariables coloring3051 50 = table3051 50 := by rfl

theorem table3051_entry051 :
    matchingVariables coloring3051 51 = table3051 51 := by rfl

theorem table3051_entry052 :
    matchingVariables coloring3051 52 = table3051 52 := by rfl

theorem table3051_entry053 :
    matchingVariables coloring3051 53 = table3051 53 := by rfl

theorem table3051_entry054 :
    matchingVariables coloring3051 54 = table3051 54 := by rfl

theorem table3051_entry055 :
    matchingVariables coloring3051 55 = table3051 55 := by rfl

theorem table3051_entry056 :
    matchingVariables coloring3051 56 = table3051 56 := by rfl

theorem table3051_entry057 :
    matchingVariables coloring3051 57 = table3051 57 := by rfl

theorem table3051_entry058 :
    matchingVariables coloring3051 58 = table3051 58 := by rfl

theorem table3051_entry059 :
    matchingVariables coloring3051 59 = table3051 59 := by rfl

theorem table3051_entry060 :
    matchingVariables coloring3051 60 = table3051 60 := by rfl

theorem table3051_entry061 :
    matchingVariables coloring3051 61 = table3051 61 := by rfl

theorem table3051_entry062 :
    matchingVariables coloring3051 62 = table3051 62 := by rfl

theorem table3051_entry063 :
    matchingVariables coloring3051 63 = table3051 63 := by rfl

theorem table3051_entry064 :
    matchingVariables coloring3051 64 = table3051 64 := by rfl

theorem table3051_entry065 :
    matchingVariables coloring3051 65 = table3051 65 := by rfl

theorem table3051_entry066 :
    matchingVariables coloring3051 66 = table3051 66 := by rfl

theorem table3051_entry067 :
    matchingVariables coloring3051 67 = table3051 67 := by rfl

theorem table3051_entry068 :
    matchingVariables coloring3051 68 = table3051 68 := by rfl

theorem table3051_entry069 :
    matchingVariables coloring3051 69 = table3051 69 := by rfl

theorem table3051_entry070 :
    matchingVariables coloring3051 70 = table3051 70 := by rfl

theorem table3051_entry071 :
    matchingVariables coloring3051 71 = table3051 71 := by rfl

theorem table3051_entry072 :
    matchingVariables coloring3051 72 = table3051 72 := by rfl

theorem table3051_entry073 :
    matchingVariables coloring3051 73 = table3051 73 := by rfl

theorem table3051_entry074 :
    matchingVariables coloring3051 74 = table3051 74 := by rfl

theorem table3051_entry075 :
    matchingVariables coloring3051 75 = table3051 75 := by rfl

theorem table3051_entry076 :
    matchingVariables coloring3051 76 = table3051 76 := by rfl

theorem table3051_entry077 :
    matchingVariables coloring3051 77 = table3051 77 := by rfl

theorem table3051_entry078 :
    matchingVariables coloring3051 78 = table3051 78 := by rfl

theorem table3051_entry079 :
    matchingVariables coloring3051 79 = table3051 79 := by rfl

theorem table3051_entry080 :
    matchingVariables coloring3051 80 = table3051 80 := by rfl

theorem table3051_entry081 :
    matchingVariables coloring3051 81 = table3051 81 := by rfl

theorem table3051_entry082 :
    matchingVariables coloring3051 82 = table3051 82 := by rfl

theorem table3051_entry083 :
    matchingVariables coloring3051 83 = table3051 83 := by rfl

theorem table3051_entry084 :
    matchingVariables coloring3051 84 = table3051 84 := by rfl

theorem table3051_entry085 :
    matchingVariables coloring3051 85 = table3051 85 := by rfl

theorem table3051_entry086 :
    matchingVariables coloring3051 86 = table3051 86 := by rfl

theorem table3051_entry087 :
    matchingVariables coloring3051 87 = table3051 87 := by rfl

theorem table3051_entry088 :
    matchingVariables coloring3051 88 = table3051 88 := by rfl

theorem table3051_entry089 :
    matchingVariables coloring3051 89 = table3051 89 := by rfl

theorem table3051_entry090 :
    matchingVariables coloring3051 90 = table3051 90 := by rfl

theorem table3051_entry091 :
    matchingVariables coloring3051 91 = table3051 91 := by rfl

theorem table3051_entry092 :
    matchingVariables coloring3051 92 = table3051 92 := by rfl

theorem table3051_entry093 :
    matchingVariables coloring3051 93 = table3051 93 := by rfl

theorem table3051_entry094 :
    matchingVariables coloring3051 94 = table3051 94 := by rfl

theorem table3051_entry095 :
    matchingVariables coloring3051 95 = table3051 95 := by rfl

theorem table3051_entry096 :
    matchingVariables coloring3051 96 = table3051 96 := by rfl

theorem table3051_entry097 :
    matchingVariables coloring3051 97 = table3051 97 := by rfl

theorem table3051_entry098 :
    matchingVariables coloring3051 98 = table3051 98 := by rfl

theorem table3051_entry099 :
    matchingVariables coloring3051 99 = table3051 99 := by rfl

theorem table3051_entry100 :
    matchingVariables coloring3051 100 = table3051 100 := by rfl

theorem table3051_entry101 :
    matchingVariables coloring3051 101 = table3051 101 := by rfl

theorem table3051_entry102 :
    matchingVariables coloring3051 102 = table3051 102 := by rfl

theorem table3051_entry103 :
    matchingVariables coloring3051 103 = table3051 103 := by rfl

theorem table3051_entry104 :
    matchingVariables coloring3051 104 = table3051 104 := by rfl

theorem table3051_complete : ∀ m, matchingVariables coloring3051 m = table3051 m := by
  intro m
  fin_cases m
  · exact table3051_entry000
  · exact table3051_entry001
  · exact table3051_entry002
  · exact table3051_entry003
  · exact table3051_entry004
  · exact table3051_entry005
  · exact table3051_entry006
  · exact table3051_entry007
  · exact table3051_entry008
  · exact table3051_entry009
  · exact table3051_entry010
  · exact table3051_entry011
  · exact table3051_entry012
  · exact table3051_entry013
  · exact table3051_entry014
  · exact table3051_entry015
  · exact table3051_entry016
  · exact table3051_entry017
  · exact table3051_entry018
  · exact table3051_entry019
  · exact table3051_entry020
  · exact table3051_entry021
  · exact table3051_entry022
  · exact table3051_entry023
  · exact table3051_entry024
  · exact table3051_entry025
  · exact table3051_entry026
  · exact table3051_entry027
  · exact table3051_entry028
  · exact table3051_entry029
  · exact table3051_entry030
  · exact table3051_entry031
  · exact table3051_entry032
  · exact table3051_entry033
  · exact table3051_entry034
  · exact table3051_entry035
  · exact table3051_entry036
  · exact table3051_entry037
  · exact table3051_entry038
  · exact table3051_entry039
  · exact table3051_entry040
  · exact table3051_entry041
  · exact table3051_entry042
  · exact table3051_entry043
  · exact table3051_entry044
  · exact table3051_entry045
  · exact table3051_entry046
  · exact table3051_entry047
  · exact table3051_entry048
  · exact table3051_entry049
  · exact table3051_entry050
  · exact table3051_entry051
  · exact table3051_entry052
  · exact table3051_entry053
  · exact table3051_entry054
  · exact table3051_entry055
  · exact table3051_entry056
  · exact table3051_entry057
  · exact table3051_entry058
  · exact table3051_entry059
  · exact table3051_entry060
  · exact table3051_entry061
  · exact table3051_entry062
  · exact table3051_entry063
  · exact table3051_entry064
  · exact table3051_entry065
  · exact table3051_entry066
  · exact table3051_entry067
  · exact table3051_entry068
  · exact table3051_entry069
  · exact table3051_entry070
  · exact table3051_entry071
  · exact table3051_entry072
  · exact table3051_entry073
  · exact table3051_entry074
  · exact table3051_entry075
  · exact table3051_entry076
  · exact table3051_entry077
  · exact table3051_entry078
  · exact table3051_entry079
  · exact table3051_entry080
  · exact table3051_entry081
  · exact table3051_entry082
  · exact table3051_entry083
  · exact table3051_entry084
  · exact table3051_entry085
  · exact table3051_entry086
  · exact table3051_entry087
  · exact table3051_entry088
  · exact table3051_entry089
  · exact table3051_entry090
  · exact table3051_entry091
  · exact table3051_entry092
  · exact table3051_entry093
  · exact table3051_entry094
  · exact table3051_entry095
  · exact table3051_entry096
  · exact table3051_entry097
  · exact table3051_entry098
  · exact table3051_entry099
  · exact table3051_entry100
  · exact table3051_entry101
  · exact table3051_entry102
  · exact table3051_entry103
  · exact table3051_entry104

#print axioms table3051_complete

def expanded3051 : Polynomial 143 := [(1, exponentOfVariables [0, 59, 101, 138]),
  (1, exponentOfVariables [0, 59, 111, 126]),
  (1, exponentOfVariables [0, 69, 89, 138]),
  (1, exponentOfVariables [9, 38, 89, 138]),
  (1, exponentOfVariables [9, 48, 89, 126]),
  (1, exponentOfVariables [20, 48, 69, 119])]

theorem table3051_expanded : tablePolynomial table3051 = expanded3051 := by
  rfl

theorem table3051_exponent00 :
    exponentOfVariables (n := 143) [0, 59, 101, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 101 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3051_exponent01 :
    exponentOfVariables (n := 143) [0, 59, 111, 126] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 111 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3051_exponent02 :
    exponentOfVariables (n := 143) [0, 69, 89, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3051_exponent03 :
    exponentOfVariables (n := 143) [9, 38, 89, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3051_exponent04 :
    exponentOfVariables (n := 143) [9, 48, 89, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3051_exponent05 :
    exponentOfVariables (n := 143) [20, 48, 69, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3051_polynomial : expanded3051 = amplitude3051 := by
  simp only [expanded3051, amplitude3051, table3051_exponent00, table3051_exponent01, table3051_exponent02, table3051_exponent03, table3051_exponent04, table3051_exponent05]

theorem premiseCheck025 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3051)) p025 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
