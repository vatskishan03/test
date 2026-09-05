import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3054 : Fin 8 → Fin 3 := ![0, 1, 0, 2, 1, 0, 1, 1]

def table3054 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 59, 101, 138] else
    if m.val = 1 then some [1, 59, 111, 126] else
    if m.val = 6 then some [1, 69, 89, 138] else
    if m.val = 21 then some [9, 41, 89, 138] else
    if m.val = 24 then some [9, 51, 89, 126] else
    if m.val = 40 then some [20, 51, 69, 119] else none

theorem table3054_entry000 :
    matchingVariables coloring3054 0 = table3054 0 := by rfl

theorem table3054_entry001 :
    matchingVariables coloring3054 1 = table3054 1 := by rfl

theorem table3054_entry002 :
    matchingVariables coloring3054 2 = table3054 2 := by rfl

theorem table3054_entry003 :
    matchingVariables coloring3054 3 = table3054 3 := by rfl

theorem table3054_entry004 :
    matchingVariables coloring3054 4 = table3054 4 := by rfl

theorem table3054_entry005 :
    matchingVariables coloring3054 5 = table3054 5 := by rfl

theorem table3054_entry006 :
    matchingVariables coloring3054 6 = table3054 6 := by rfl

theorem table3054_entry007 :
    matchingVariables coloring3054 7 = table3054 7 := by rfl

theorem table3054_entry008 :
    matchingVariables coloring3054 8 = table3054 8 := by rfl

theorem table3054_entry009 :
    matchingVariables coloring3054 9 = table3054 9 := by rfl

theorem table3054_entry010 :
    matchingVariables coloring3054 10 = table3054 10 := by rfl

theorem table3054_entry011 :
    matchingVariables coloring3054 11 = table3054 11 := by rfl

theorem table3054_entry012 :
    matchingVariables coloring3054 12 = table3054 12 := by rfl

theorem table3054_entry013 :
    matchingVariables coloring3054 13 = table3054 13 := by rfl

theorem table3054_entry014 :
    matchingVariables coloring3054 14 = table3054 14 := by rfl

theorem table3054_entry015 :
    matchingVariables coloring3054 15 = table3054 15 := by rfl

theorem table3054_entry016 :
    matchingVariables coloring3054 16 = table3054 16 := by rfl

theorem table3054_entry017 :
    matchingVariables coloring3054 17 = table3054 17 := by rfl

theorem table3054_entry018 :
    matchingVariables coloring3054 18 = table3054 18 := by rfl

theorem table3054_entry019 :
    matchingVariables coloring3054 19 = table3054 19 := by rfl

theorem table3054_entry020 :
    matchingVariables coloring3054 20 = table3054 20 := by rfl

theorem table3054_entry021 :
    matchingVariables coloring3054 21 = table3054 21 := by rfl

theorem table3054_entry022 :
    matchingVariables coloring3054 22 = table3054 22 := by rfl

theorem table3054_entry023 :
    matchingVariables coloring3054 23 = table3054 23 := by rfl

theorem table3054_entry024 :
    matchingVariables coloring3054 24 = table3054 24 := by rfl

theorem table3054_entry025 :
    matchingVariables coloring3054 25 = table3054 25 := by rfl

theorem table3054_entry026 :
    matchingVariables coloring3054 26 = table3054 26 := by rfl

theorem table3054_entry027 :
    matchingVariables coloring3054 27 = table3054 27 := by rfl

theorem table3054_entry028 :
    matchingVariables coloring3054 28 = table3054 28 := by rfl

theorem table3054_entry029 :
    matchingVariables coloring3054 29 = table3054 29 := by rfl

theorem table3054_entry030 :
    matchingVariables coloring3054 30 = table3054 30 := by rfl

theorem table3054_entry031 :
    matchingVariables coloring3054 31 = table3054 31 := by rfl

theorem table3054_entry032 :
    matchingVariables coloring3054 32 = table3054 32 := by rfl

theorem table3054_entry033 :
    matchingVariables coloring3054 33 = table3054 33 := by rfl

theorem table3054_entry034 :
    matchingVariables coloring3054 34 = table3054 34 := by rfl

theorem table3054_entry035 :
    matchingVariables coloring3054 35 = table3054 35 := by rfl

theorem table3054_entry036 :
    matchingVariables coloring3054 36 = table3054 36 := by rfl

theorem table3054_entry037 :
    matchingVariables coloring3054 37 = table3054 37 := by rfl

theorem table3054_entry038 :
    matchingVariables coloring3054 38 = table3054 38 := by rfl

theorem table3054_entry039 :
    matchingVariables coloring3054 39 = table3054 39 := by rfl

theorem table3054_entry040 :
    matchingVariables coloring3054 40 = table3054 40 := by rfl

theorem table3054_entry041 :
    matchingVariables coloring3054 41 = table3054 41 := by rfl

theorem table3054_entry042 :
    matchingVariables coloring3054 42 = table3054 42 := by rfl

theorem table3054_entry043 :
    matchingVariables coloring3054 43 = table3054 43 := by rfl

theorem table3054_entry044 :
    matchingVariables coloring3054 44 = table3054 44 := by rfl

theorem table3054_entry045 :
    matchingVariables coloring3054 45 = table3054 45 := by rfl

theorem table3054_entry046 :
    matchingVariables coloring3054 46 = table3054 46 := by rfl

theorem table3054_entry047 :
    matchingVariables coloring3054 47 = table3054 47 := by rfl

theorem table3054_entry048 :
    matchingVariables coloring3054 48 = table3054 48 := by rfl

theorem table3054_entry049 :
    matchingVariables coloring3054 49 = table3054 49 := by rfl

theorem table3054_entry050 :
    matchingVariables coloring3054 50 = table3054 50 := by rfl

theorem table3054_entry051 :
    matchingVariables coloring3054 51 = table3054 51 := by rfl

theorem table3054_entry052 :
    matchingVariables coloring3054 52 = table3054 52 := by rfl

theorem table3054_entry053 :
    matchingVariables coloring3054 53 = table3054 53 := by rfl

theorem table3054_entry054 :
    matchingVariables coloring3054 54 = table3054 54 := by rfl

theorem table3054_entry055 :
    matchingVariables coloring3054 55 = table3054 55 := by rfl

theorem table3054_entry056 :
    matchingVariables coloring3054 56 = table3054 56 := by rfl

theorem table3054_entry057 :
    matchingVariables coloring3054 57 = table3054 57 := by rfl

theorem table3054_entry058 :
    matchingVariables coloring3054 58 = table3054 58 := by rfl

theorem table3054_entry059 :
    matchingVariables coloring3054 59 = table3054 59 := by rfl

theorem table3054_entry060 :
    matchingVariables coloring3054 60 = table3054 60 := by rfl

theorem table3054_entry061 :
    matchingVariables coloring3054 61 = table3054 61 := by rfl

theorem table3054_entry062 :
    matchingVariables coloring3054 62 = table3054 62 := by rfl

theorem table3054_entry063 :
    matchingVariables coloring3054 63 = table3054 63 := by rfl

theorem table3054_entry064 :
    matchingVariables coloring3054 64 = table3054 64 := by rfl

theorem table3054_entry065 :
    matchingVariables coloring3054 65 = table3054 65 := by rfl

theorem table3054_entry066 :
    matchingVariables coloring3054 66 = table3054 66 := by rfl

theorem table3054_entry067 :
    matchingVariables coloring3054 67 = table3054 67 := by rfl

theorem table3054_entry068 :
    matchingVariables coloring3054 68 = table3054 68 := by rfl

theorem table3054_entry069 :
    matchingVariables coloring3054 69 = table3054 69 := by rfl

theorem table3054_entry070 :
    matchingVariables coloring3054 70 = table3054 70 := by rfl

theorem table3054_entry071 :
    matchingVariables coloring3054 71 = table3054 71 := by rfl

theorem table3054_entry072 :
    matchingVariables coloring3054 72 = table3054 72 := by rfl

theorem table3054_entry073 :
    matchingVariables coloring3054 73 = table3054 73 := by rfl

theorem table3054_entry074 :
    matchingVariables coloring3054 74 = table3054 74 := by rfl

theorem table3054_entry075 :
    matchingVariables coloring3054 75 = table3054 75 := by rfl

theorem table3054_entry076 :
    matchingVariables coloring3054 76 = table3054 76 := by rfl

theorem table3054_entry077 :
    matchingVariables coloring3054 77 = table3054 77 := by rfl

theorem table3054_entry078 :
    matchingVariables coloring3054 78 = table3054 78 := by rfl

theorem table3054_entry079 :
    matchingVariables coloring3054 79 = table3054 79 := by rfl

theorem table3054_entry080 :
    matchingVariables coloring3054 80 = table3054 80 := by rfl

theorem table3054_entry081 :
    matchingVariables coloring3054 81 = table3054 81 := by rfl

theorem table3054_entry082 :
    matchingVariables coloring3054 82 = table3054 82 := by rfl

theorem table3054_entry083 :
    matchingVariables coloring3054 83 = table3054 83 := by rfl

theorem table3054_entry084 :
    matchingVariables coloring3054 84 = table3054 84 := by rfl

theorem table3054_entry085 :
    matchingVariables coloring3054 85 = table3054 85 := by rfl

theorem table3054_entry086 :
    matchingVariables coloring3054 86 = table3054 86 := by rfl

theorem table3054_entry087 :
    matchingVariables coloring3054 87 = table3054 87 := by rfl

theorem table3054_entry088 :
    matchingVariables coloring3054 88 = table3054 88 := by rfl

theorem table3054_entry089 :
    matchingVariables coloring3054 89 = table3054 89 := by rfl

theorem table3054_entry090 :
    matchingVariables coloring3054 90 = table3054 90 := by rfl

theorem table3054_entry091 :
    matchingVariables coloring3054 91 = table3054 91 := by rfl

theorem table3054_entry092 :
    matchingVariables coloring3054 92 = table3054 92 := by rfl

theorem table3054_entry093 :
    matchingVariables coloring3054 93 = table3054 93 := by rfl

theorem table3054_entry094 :
    matchingVariables coloring3054 94 = table3054 94 := by rfl

theorem table3054_entry095 :
    matchingVariables coloring3054 95 = table3054 95 := by rfl

theorem table3054_entry096 :
    matchingVariables coloring3054 96 = table3054 96 := by rfl

theorem table3054_entry097 :
    matchingVariables coloring3054 97 = table3054 97 := by rfl

theorem table3054_entry098 :
    matchingVariables coloring3054 98 = table3054 98 := by rfl

theorem table3054_entry099 :
    matchingVariables coloring3054 99 = table3054 99 := by rfl

theorem table3054_entry100 :
    matchingVariables coloring3054 100 = table3054 100 := by rfl

theorem table3054_entry101 :
    matchingVariables coloring3054 101 = table3054 101 := by rfl

theorem table3054_entry102 :
    matchingVariables coloring3054 102 = table3054 102 := by rfl

theorem table3054_entry103 :
    matchingVariables coloring3054 103 = table3054 103 := by rfl

theorem table3054_entry104 :
    matchingVariables coloring3054 104 = table3054 104 := by rfl

theorem table3054_complete : ∀ m, matchingVariables coloring3054 m = table3054 m := by
  intro m
  fin_cases m
  · exact table3054_entry000
  · exact table3054_entry001
  · exact table3054_entry002
  · exact table3054_entry003
  · exact table3054_entry004
  · exact table3054_entry005
  · exact table3054_entry006
  · exact table3054_entry007
  · exact table3054_entry008
  · exact table3054_entry009
  · exact table3054_entry010
  · exact table3054_entry011
  · exact table3054_entry012
  · exact table3054_entry013
  · exact table3054_entry014
  · exact table3054_entry015
  · exact table3054_entry016
  · exact table3054_entry017
  · exact table3054_entry018
  · exact table3054_entry019
  · exact table3054_entry020
  · exact table3054_entry021
  · exact table3054_entry022
  · exact table3054_entry023
  · exact table3054_entry024
  · exact table3054_entry025
  · exact table3054_entry026
  · exact table3054_entry027
  · exact table3054_entry028
  · exact table3054_entry029
  · exact table3054_entry030
  · exact table3054_entry031
  · exact table3054_entry032
  · exact table3054_entry033
  · exact table3054_entry034
  · exact table3054_entry035
  · exact table3054_entry036
  · exact table3054_entry037
  · exact table3054_entry038
  · exact table3054_entry039
  · exact table3054_entry040
  · exact table3054_entry041
  · exact table3054_entry042
  · exact table3054_entry043
  · exact table3054_entry044
  · exact table3054_entry045
  · exact table3054_entry046
  · exact table3054_entry047
  · exact table3054_entry048
  · exact table3054_entry049
  · exact table3054_entry050
  · exact table3054_entry051
  · exact table3054_entry052
  · exact table3054_entry053
  · exact table3054_entry054
  · exact table3054_entry055
  · exact table3054_entry056
  · exact table3054_entry057
  · exact table3054_entry058
  · exact table3054_entry059
  · exact table3054_entry060
  · exact table3054_entry061
  · exact table3054_entry062
  · exact table3054_entry063
  · exact table3054_entry064
  · exact table3054_entry065
  · exact table3054_entry066
  · exact table3054_entry067
  · exact table3054_entry068
  · exact table3054_entry069
  · exact table3054_entry070
  · exact table3054_entry071
  · exact table3054_entry072
  · exact table3054_entry073
  · exact table3054_entry074
  · exact table3054_entry075
  · exact table3054_entry076
  · exact table3054_entry077
  · exact table3054_entry078
  · exact table3054_entry079
  · exact table3054_entry080
  · exact table3054_entry081
  · exact table3054_entry082
  · exact table3054_entry083
  · exact table3054_entry084
  · exact table3054_entry085
  · exact table3054_entry086
  · exact table3054_entry087
  · exact table3054_entry088
  · exact table3054_entry089
  · exact table3054_entry090
  · exact table3054_entry091
  · exact table3054_entry092
  · exact table3054_entry093
  · exact table3054_entry094
  · exact table3054_entry095
  · exact table3054_entry096
  · exact table3054_entry097
  · exact table3054_entry098
  · exact table3054_entry099
  · exact table3054_entry100
  · exact table3054_entry101
  · exact table3054_entry102
  · exact table3054_entry103
  · exact table3054_entry104

#print axioms table3054_complete

def expanded3054 : Polynomial 143 := [(1, exponentOfVariables [1, 59, 101, 138]),
  (1, exponentOfVariables [1, 59, 111, 126]),
  (1, exponentOfVariables [1, 69, 89, 138]),
  (1, exponentOfVariables [9, 41, 89, 138]),
  (1, exponentOfVariables [9, 51, 89, 126]),
  (1, exponentOfVariables [20, 51, 69, 119])]

theorem table3054_expanded : tablePolynomial table3054 = expanded3054 := by
  rfl

theorem table3054_exponent00 :
    exponentOfVariables (n := 143) [1, 59, 101, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 101 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3054_exponent01 :
    exponentOfVariables (n := 143) [1, 59, 111, 126] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 111 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3054_exponent02 :
    exponentOfVariables (n := 143) [1, 69, 89, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3054_exponent03 :
    exponentOfVariables (n := 143) [9, 41, 89, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3054_exponent04 :
    exponentOfVariables (n := 143) [9, 51, 89, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3054_exponent05 :
    exponentOfVariables (n := 143) [20, 51, 69, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3054_polynomial : expanded3054 = amplitude3054 := by
  simp only [expanded3054, amplitude3054, table3054_exponent00, table3054_exponent01, table3054_exponent02, table3054_exponent03, table3054_exponent04, table3054_exponent05]

theorem premiseCheck026 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3054)) p026 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
