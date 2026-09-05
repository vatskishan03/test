import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3315 : Fin 8 → Fin 3 := ![0, 1, 2, 2, 1, 1, 1, 1]

def table3315 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 65, 102, 138] else
    if m.val = 1 then some [1, 65, 111, 129] else
    if m.val = 6 then some [1, 76, 89, 138] else
    if m.val = 21 then some [11, 42, 89, 138] else
    if m.val = 24 then some [11, 51, 89, 129] else
    if m.val = 40 then some [20, 51, 76, 119] else none

theorem table3315_entry000 :
    matchingVariables coloring3315 0 = table3315 0 := by rfl

theorem table3315_entry001 :
    matchingVariables coloring3315 1 = table3315 1 := by rfl

theorem table3315_entry002 :
    matchingVariables coloring3315 2 = table3315 2 := by rfl

theorem table3315_entry003 :
    matchingVariables coloring3315 3 = table3315 3 := by rfl

theorem table3315_entry004 :
    matchingVariables coloring3315 4 = table3315 4 := by rfl

theorem table3315_entry005 :
    matchingVariables coloring3315 5 = table3315 5 := by rfl

theorem table3315_entry006 :
    matchingVariables coloring3315 6 = table3315 6 := by rfl

theorem table3315_entry007 :
    matchingVariables coloring3315 7 = table3315 7 := by rfl

theorem table3315_entry008 :
    matchingVariables coloring3315 8 = table3315 8 := by rfl

theorem table3315_entry009 :
    matchingVariables coloring3315 9 = table3315 9 := by rfl

theorem table3315_entry010 :
    matchingVariables coloring3315 10 = table3315 10 := by rfl

theorem table3315_entry011 :
    matchingVariables coloring3315 11 = table3315 11 := by rfl

theorem table3315_entry012 :
    matchingVariables coloring3315 12 = table3315 12 := by rfl

theorem table3315_entry013 :
    matchingVariables coloring3315 13 = table3315 13 := by rfl

theorem table3315_entry014 :
    matchingVariables coloring3315 14 = table3315 14 := by rfl

theorem table3315_entry015 :
    matchingVariables coloring3315 15 = table3315 15 := by rfl

theorem table3315_entry016 :
    matchingVariables coloring3315 16 = table3315 16 := by rfl

theorem table3315_entry017 :
    matchingVariables coloring3315 17 = table3315 17 := by rfl

theorem table3315_entry018 :
    matchingVariables coloring3315 18 = table3315 18 := by rfl

theorem table3315_entry019 :
    matchingVariables coloring3315 19 = table3315 19 := by rfl

theorem table3315_entry020 :
    matchingVariables coloring3315 20 = table3315 20 := by rfl

theorem table3315_entry021 :
    matchingVariables coloring3315 21 = table3315 21 := by rfl

theorem table3315_entry022 :
    matchingVariables coloring3315 22 = table3315 22 := by rfl

theorem table3315_entry023 :
    matchingVariables coloring3315 23 = table3315 23 := by rfl

theorem table3315_entry024 :
    matchingVariables coloring3315 24 = table3315 24 := by rfl

theorem table3315_entry025 :
    matchingVariables coloring3315 25 = table3315 25 := by rfl

theorem table3315_entry026 :
    matchingVariables coloring3315 26 = table3315 26 := by rfl

theorem table3315_entry027 :
    matchingVariables coloring3315 27 = table3315 27 := by rfl

theorem table3315_entry028 :
    matchingVariables coloring3315 28 = table3315 28 := by rfl

theorem table3315_entry029 :
    matchingVariables coloring3315 29 = table3315 29 := by rfl

theorem table3315_entry030 :
    matchingVariables coloring3315 30 = table3315 30 := by rfl

theorem table3315_entry031 :
    matchingVariables coloring3315 31 = table3315 31 := by rfl

theorem table3315_entry032 :
    matchingVariables coloring3315 32 = table3315 32 := by rfl

theorem table3315_entry033 :
    matchingVariables coloring3315 33 = table3315 33 := by rfl

theorem table3315_entry034 :
    matchingVariables coloring3315 34 = table3315 34 := by rfl

theorem table3315_entry035 :
    matchingVariables coloring3315 35 = table3315 35 := by rfl

theorem table3315_entry036 :
    matchingVariables coloring3315 36 = table3315 36 := by rfl

theorem table3315_entry037 :
    matchingVariables coloring3315 37 = table3315 37 := by rfl

theorem table3315_entry038 :
    matchingVariables coloring3315 38 = table3315 38 := by rfl

theorem table3315_entry039 :
    matchingVariables coloring3315 39 = table3315 39 := by rfl

theorem table3315_entry040 :
    matchingVariables coloring3315 40 = table3315 40 := by rfl

theorem table3315_entry041 :
    matchingVariables coloring3315 41 = table3315 41 := by rfl

theorem table3315_entry042 :
    matchingVariables coloring3315 42 = table3315 42 := by rfl

theorem table3315_entry043 :
    matchingVariables coloring3315 43 = table3315 43 := by rfl

theorem table3315_entry044 :
    matchingVariables coloring3315 44 = table3315 44 := by rfl

theorem table3315_entry045 :
    matchingVariables coloring3315 45 = table3315 45 := by rfl

theorem table3315_entry046 :
    matchingVariables coloring3315 46 = table3315 46 := by rfl

theorem table3315_entry047 :
    matchingVariables coloring3315 47 = table3315 47 := by rfl

theorem table3315_entry048 :
    matchingVariables coloring3315 48 = table3315 48 := by rfl

theorem table3315_entry049 :
    matchingVariables coloring3315 49 = table3315 49 := by rfl

theorem table3315_entry050 :
    matchingVariables coloring3315 50 = table3315 50 := by rfl

theorem table3315_entry051 :
    matchingVariables coloring3315 51 = table3315 51 := by rfl

theorem table3315_entry052 :
    matchingVariables coloring3315 52 = table3315 52 := by rfl

theorem table3315_entry053 :
    matchingVariables coloring3315 53 = table3315 53 := by rfl

theorem table3315_entry054 :
    matchingVariables coloring3315 54 = table3315 54 := by rfl

theorem table3315_entry055 :
    matchingVariables coloring3315 55 = table3315 55 := by rfl

theorem table3315_entry056 :
    matchingVariables coloring3315 56 = table3315 56 := by rfl

theorem table3315_entry057 :
    matchingVariables coloring3315 57 = table3315 57 := by rfl

theorem table3315_entry058 :
    matchingVariables coloring3315 58 = table3315 58 := by rfl

theorem table3315_entry059 :
    matchingVariables coloring3315 59 = table3315 59 := by rfl

theorem table3315_entry060 :
    matchingVariables coloring3315 60 = table3315 60 := by rfl

theorem table3315_entry061 :
    matchingVariables coloring3315 61 = table3315 61 := by rfl

theorem table3315_entry062 :
    matchingVariables coloring3315 62 = table3315 62 := by rfl

theorem table3315_entry063 :
    matchingVariables coloring3315 63 = table3315 63 := by rfl

theorem table3315_entry064 :
    matchingVariables coloring3315 64 = table3315 64 := by rfl

theorem table3315_entry065 :
    matchingVariables coloring3315 65 = table3315 65 := by rfl

theorem table3315_entry066 :
    matchingVariables coloring3315 66 = table3315 66 := by rfl

theorem table3315_entry067 :
    matchingVariables coloring3315 67 = table3315 67 := by rfl

theorem table3315_entry068 :
    matchingVariables coloring3315 68 = table3315 68 := by rfl

theorem table3315_entry069 :
    matchingVariables coloring3315 69 = table3315 69 := by rfl

theorem table3315_entry070 :
    matchingVariables coloring3315 70 = table3315 70 := by rfl

theorem table3315_entry071 :
    matchingVariables coloring3315 71 = table3315 71 := by rfl

theorem table3315_entry072 :
    matchingVariables coloring3315 72 = table3315 72 := by rfl

theorem table3315_entry073 :
    matchingVariables coloring3315 73 = table3315 73 := by rfl

theorem table3315_entry074 :
    matchingVariables coloring3315 74 = table3315 74 := by rfl

theorem table3315_entry075 :
    matchingVariables coloring3315 75 = table3315 75 := by rfl

theorem table3315_entry076 :
    matchingVariables coloring3315 76 = table3315 76 := by rfl

theorem table3315_entry077 :
    matchingVariables coloring3315 77 = table3315 77 := by rfl

theorem table3315_entry078 :
    matchingVariables coloring3315 78 = table3315 78 := by rfl

theorem table3315_entry079 :
    matchingVariables coloring3315 79 = table3315 79 := by rfl

theorem table3315_entry080 :
    matchingVariables coloring3315 80 = table3315 80 := by rfl

theorem table3315_entry081 :
    matchingVariables coloring3315 81 = table3315 81 := by rfl

theorem table3315_entry082 :
    matchingVariables coloring3315 82 = table3315 82 := by rfl

theorem table3315_entry083 :
    matchingVariables coloring3315 83 = table3315 83 := by rfl

theorem table3315_entry084 :
    matchingVariables coloring3315 84 = table3315 84 := by rfl

theorem table3315_entry085 :
    matchingVariables coloring3315 85 = table3315 85 := by rfl

theorem table3315_entry086 :
    matchingVariables coloring3315 86 = table3315 86 := by rfl

theorem table3315_entry087 :
    matchingVariables coloring3315 87 = table3315 87 := by rfl

theorem table3315_entry088 :
    matchingVariables coloring3315 88 = table3315 88 := by rfl

theorem table3315_entry089 :
    matchingVariables coloring3315 89 = table3315 89 := by rfl

theorem table3315_entry090 :
    matchingVariables coloring3315 90 = table3315 90 := by rfl

theorem table3315_entry091 :
    matchingVariables coloring3315 91 = table3315 91 := by rfl

theorem table3315_entry092 :
    matchingVariables coloring3315 92 = table3315 92 := by rfl

theorem table3315_entry093 :
    matchingVariables coloring3315 93 = table3315 93 := by rfl

theorem table3315_entry094 :
    matchingVariables coloring3315 94 = table3315 94 := by rfl

theorem table3315_entry095 :
    matchingVariables coloring3315 95 = table3315 95 := by rfl

theorem table3315_entry096 :
    matchingVariables coloring3315 96 = table3315 96 := by rfl

theorem table3315_entry097 :
    matchingVariables coloring3315 97 = table3315 97 := by rfl

theorem table3315_entry098 :
    matchingVariables coloring3315 98 = table3315 98 := by rfl

theorem table3315_entry099 :
    matchingVariables coloring3315 99 = table3315 99 := by rfl

theorem table3315_entry100 :
    matchingVariables coloring3315 100 = table3315 100 := by rfl

theorem table3315_entry101 :
    matchingVariables coloring3315 101 = table3315 101 := by rfl

theorem table3315_entry102 :
    matchingVariables coloring3315 102 = table3315 102 := by rfl

theorem table3315_entry103 :
    matchingVariables coloring3315 103 = table3315 103 := by rfl

theorem table3315_entry104 :
    matchingVariables coloring3315 104 = table3315 104 := by rfl

theorem table3315_complete : ∀ m, matchingVariables coloring3315 m = table3315 m := by
  intro m
  fin_cases m
  · exact table3315_entry000
  · exact table3315_entry001
  · exact table3315_entry002
  · exact table3315_entry003
  · exact table3315_entry004
  · exact table3315_entry005
  · exact table3315_entry006
  · exact table3315_entry007
  · exact table3315_entry008
  · exact table3315_entry009
  · exact table3315_entry010
  · exact table3315_entry011
  · exact table3315_entry012
  · exact table3315_entry013
  · exact table3315_entry014
  · exact table3315_entry015
  · exact table3315_entry016
  · exact table3315_entry017
  · exact table3315_entry018
  · exact table3315_entry019
  · exact table3315_entry020
  · exact table3315_entry021
  · exact table3315_entry022
  · exact table3315_entry023
  · exact table3315_entry024
  · exact table3315_entry025
  · exact table3315_entry026
  · exact table3315_entry027
  · exact table3315_entry028
  · exact table3315_entry029
  · exact table3315_entry030
  · exact table3315_entry031
  · exact table3315_entry032
  · exact table3315_entry033
  · exact table3315_entry034
  · exact table3315_entry035
  · exact table3315_entry036
  · exact table3315_entry037
  · exact table3315_entry038
  · exact table3315_entry039
  · exact table3315_entry040
  · exact table3315_entry041
  · exact table3315_entry042
  · exact table3315_entry043
  · exact table3315_entry044
  · exact table3315_entry045
  · exact table3315_entry046
  · exact table3315_entry047
  · exact table3315_entry048
  · exact table3315_entry049
  · exact table3315_entry050
  · exact table3315_entry051
  · exact table3315_entry052
  · exact table3315_entry053
  · exact table3315_entry054
  · exact table3315_entry055
  · exact table3315_entry056
  · exact table3315_entry057
  · exact table3315_entry058
  · exact table3315_entry059
  · exact table3315_entry060
  · exact table3315_entry061
  · exact table3315_entry062
  · exact table3315_entry063
  · exact table3315_entry064
  · exact table3315_entry065
  · exact table3315_entry066
  · exact table3315_entry067
  · exact table3315_entry068
  · exact table3315_entry069
  · exact table3315_entry070
  · exact table3315_entry071
  · exact table3315_entry072
  · exact table3315_entry073
  · exact table3315_entry074
  · exact table3315_entry075
  · exact table3315_entry076
  · exact table3315_entry077
  · exact table3315_entry078
  · exact table3315_entry079
  · exact table3315_entry080
  · exact table3315_entry081
  · exact table3315_entry082
  · exact table3315_entry083
  · exact table3315_entry084
  · exact table3315_entry085
  · exact table3315_entry086
  · exact table3315_entry087
  · exact table3315_entry088
  · exact table3315_entry089
  · exact table3315_entry090
  · exact table3315_entry091
  · exact table3315_entry092
  · exact table3315_entry093
  · exact table3315_entry094
  · exact table3315_entry095
  · exact table3315_entry096
  · exact table3315_entry097
  · exact table3315_entry098
  · exact table3315_entry099
  · exact table3315_entry100
  · exact table3315_entry101
  · exact table3315_entry102
  · exact table3315_entry103
  · exact table3315_entry104

#print axioms table3315_complete

def expanded3315 : Polynomial 143 := [(1, exponentOfVariables [1, 65, 102, 138]),
  (1, exponentOfVariables [1, 65, 111, 129]),
  (1, exponentOfVariables [1, 76, 89, 138]),
  (1, exponentOfVariables [11, 42, 89, 138]),
  (1, exponentOfVariables [11, 51, 89, 129]),
  (1, exponentOfVariables [20, 51, 76, 119])]

theorem table3315_expanded : tablePolynomial table3315 = expanded3315 := by
  rfl

theorem table3315_exponent00 :
    exponentOfVariables (n := 143) [1, 65, 102, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 65 then (1) else if i.val = 102 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3315_exponent01 :
    exponentOfVariables (n := 143) [1, 65, 111, 129] =
      (fun i => if i.val = 1 then (1) else if i.val = 65 then (1) else if i.val = 111 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3315_exponent02 :
    exponentOfVariables (n := 143) [1, 76, 89, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 76 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3315_exponent03 :
    exponentOfVariables (n := 143) [11, 42, 89, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 42 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3315_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 89, 129] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 89 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3315_exponent05 :
    exponentOfVariables (n := 143) [20, 51, 76, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 76 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3315_polynomial : expanded3315 = amplitude3315 := by
  simp only [expanded3315, amplitude3315, table3315_exponent00, table3315_exponent01, table3315_exponent02, table3315_exponent03, table3315_exponent04, table3315_exponent05]

theorem premiseCheck038 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3315)) p038 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
