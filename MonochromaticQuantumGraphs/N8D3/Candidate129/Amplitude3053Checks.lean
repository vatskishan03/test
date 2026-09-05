import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3053 : Fin 8 → Fin 3 := ![2, 0, 0, 2, 1, 0, 1, 1]

def table3053 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [6, 59, 101, 138] else
    if m.val = 1 then some [6, 59, 111, 126] else
    if m.val = 6 then some [6, 69, 89, 138] else
    if m.val = 21 then some [15, 38, 89, 138] else
    if m.val = 24 then some [15, 48, 89, 126] else
    if m.val = 40 then some [26, 48, 69, 119] else none

theorem table3053_entry000 :
    matchingVariables coloring3053 0 = table3053 0 := by rfl

theorem table3053_entry001 :
    matchingVariables coloring3053 1 = table3053 1 := by rfl

theorem table3053_entry002 :
    matchingVariables coloring3053 2 = table3053 2 := by rfl

theorem table3053_entry003 :
    matchingVariables coloring3053 3 = table3053 3 := by rfl

theorem table3053_entry004 :
    matchingVariables coloring3053 4 = table3053 4 := by rfl

theorem table3053_entry005 :
    matchingVariables coloring3053 5 = table3053 5 := by rfl

theorem table3053_entry006 :
    matchingVariables coloring3053 6 = table3053 6 := by rfl

theorem table3053_entry007 :
    matchingVariables coloring3053 7 = table3053 7 := by rfl

theorem table3053_entry008 :
    matchingVariables coloring3053 8 = table3053 8 := by rfl

theorem table3053_entry009 :
    matchingVariables coloring3053 9 = table3053 9 := by rfl

theorem table3053_entry010 :
    matchingVariables coloring3053 10 = table3053 10 := by rfl

theorem table3053_entry011 :
    matchingVariables coloring3053 11 = table3053 11 := by rfl

theorem table3053_entry012 :
    matchingVariables coloring3053 12 = table3053 12 := by rfl

theorem table3053_entry013 :
    matchingVariables coloring3053 13 = table3053 13 := by rfl

theorem table3053_entry014 :
    matchingVariables coloring3053 14 = table3053 14 := by rfl

theorem table3053_entry015 :
    matchingVariables coloring3053 15 = table3053 15 := by rfl

theorem table3053_entry016 :
    matchingVariables coloring3053 16 = table3053 16 := by rfl

theorem table3053_entry017 :
    matchingVariables coloring3053 17 = table3053 17 := by rfl

theorem table3053_entry018 :
    matchingVariables coloring3053 18 = table3053 18 := by rfl

theorem table3053_entry019 :
    matchingVariables coloring3053 19 = table3053 19 := by rfl

theorem table3053_entry020 :
    matchingVariables coloring3053 20 = table3053 20 := by rfl

theorem table3053_entry021 :
    matchingVariables coloring3053 21 = table3053 21 := by rfl

theorem table3053_entry022 :
    matchingVariables coloring3053 22 = table3053 22 := by rfl

theorem table3053_entry023 :
    matchingVariables coloring3053 23 = table3053 23 := by rfl

theorem table3053_entry024 :
    matchingVariables coloring3053 24 = table3053 24 := by rfl

theorem table3053_entry025 :
    matchingVariables coloring3053 25 = table3053 25 := by rfl

theorem table3053_entry026 :
    matchingVariables coloring3053 26 = table3053 26 := by rfl

theorem table3053_entry027 :
    matchingVariables coloring3053 27 = table3053 27 := by rfl

theorem table3053_entry028 :
    matchingVariables coloring3053 28 = table3053 28 := by rfl

theorem table3053_entry029 :
    matchingVariables coloring3053 29 = table3053 29 := by rfl

theorem table3053_entry030 :
    matchingVariables coloring3053 30 = table3053 30 := by rfl

theorem table3053_entry031 :
    matchingVariables coloring3053 31 = table3053 31 := by rfl

theorem table3053_entry032 :
    matchingVariables coloring3053 32 = table3053 32 := by rfl

theorem table3053_entry033 :
    matchingVariables coloring3053 33 = table3053 33 := by rfl

theorem table3053_entry034 :
    matchingVariables coloring3053 34 = table3053 34 := by rfl

theorem table3053_entry035 :
    matchingVariables coloring3053 35 = table3053 35 := by rfl

theorem table3053_entry036 :
    matchingVariables coloring3053 36 = table3053 36 := by rfl

theorem table3053_entry037 :
    matchingVariables coloring3053 37 = table3053 37 := by rfl

theorem table3053_entry038 :
    matchingVariables coloring3053 38 = table3053 38 := by rfl

theorem table3053_entry039 :
    matchingVariables coloring3053 39 = table3053 39 := by rfl

theorem table3053_entry040 :
    matchingVariables coloring3053 40 = table3053 40 := by rfl

theorem table3053_entry041 :
    matchingVariables coloring3053 41 = table3053 41 := by rfl

theorem table3053_entry042 :
    matchingVariables coloring3053 42 = table3053 42 := by rfl

theorem table3053_entry043 :
    matchingVariables coloring3053 43 = table3053 43 := by rfl

theorem table3053_entry044 :
    matchingVariables coloring3053 44 = table3053 44 := by rfl

theorem table3053_entry045 :
    matchingVariables coloring3053 45 = table3053 45 := by rfl

theorem table3053_entry046 :
    matchingVariables coloring3053 46 = table3053 46 := by rfl

theorem table3053_entry047 :
    matchingVariables coloring3053 47 = table3053 47 := by rfl

theorem table3053_entry048 :
    matchingVariables coloring3053 48 = table3053 48 := by rfl

theorem table3053_entry049 :
    matchingVariables coloring3053 49 = table3053 49 := by rfl

theorem table3053_entry050 :
    matchingVariables coloring3053 50 = table3053 50 := by rfl

theorem table3053_entry051 :
    matchingVariables coloring3053 51 = table3053 51 := by rfl

theorem table3053_entry052 :
    matchingVariables coloring3053 52 = table3053 52 := by rfl

theorem table3053_entry053 :
    matchingVariables coloring3053 53 = table3053 53 := by rfl

theorem table3053_entry054 :
    matchingVariables coloring3053 54 = table3053 54 := by rfl

theorem table3053_entry055 :
    matchingVariables coloring3053 55 = table3053 55 := by rfl

theorem table3053_entry056 :
    matchingVariables coloring3053 56 = table3053 56 := by rfl

theorem table3053_entry057 :
    matchingVariables coloring3053 57 = table3053 57 := by rfl

theorem table3053_entry058 :
    matchingVariables coloring3053 58 = table3053 58 := by rfl

theorem table3053_entry059 :
    matchingVariables coloring3053 59 = table3053 59 := by rfl

theorem table3053_entry060 :
    matchingVariables coloring3053 60 = table3053 60 := by rfl

theorem table3053_entry061 :
    matchingVariables coloring3053 61 = table3053 61 := by rfl

theorem table3053_entry062 :
    matchingVariables coloring3053 62 = table3053 62 := by rfl

theorem table3053_entry063 :
    matchingVariables coloring3053 63 = table3053 63 := by rfl

theorem table3053_entry064 :
    matchingVariables coloring3053 64 = table3053 64 := by rfl

theorem table3053_entry065 :
    matchingVariables coloring3053 65 = table3053 65 := by rfl

theorem table3053_entry066 :
    matchingVariables coloring3053 66 = table3053 66 := by rfl

theorem table3053_entry067 :
    matchingVariables coloring3053 67 = table3053 67 := by rfl

theorem table3053_entry068 :
    matchingVariables coloring3053 68 = table3053 68 := by rfl

theorem table3053_entry069 :
    matchingVariables coloring3053 69 = table3053 69 := by rfl

theorem table3053_entry070 :
    matchingVariables coloring3053 70 = table3053 70 := by rfl

theorem table3053_entry071 :
    matchingVariables coloring3053 71 = table3053 71 := by rfl

theorem table3053_entry072 :
    matchingVariables coloring3053 72 = table3053 72 := by rfl

theorem table3053_entry073 :
    matchingVariables coloring3053 73 = table3053 73 := by rfl

theorem table3053_entry074 :
    matchingVariables coloring3053 74 = table3053 74 := by rfl

theorem table3053_entry075 :
    matchingVariables coloring3053 75 = table3053 75 := by rfl

theorem table3053_entry076 :
    matchingVariables coloring3053 76 = table3053 76 := by rfl

theorem table3053_entry077 :
    matchingVariables coloring3053 77 = table3053 77 := by rfl

theorem table3053_entry078 :
    matchingVariables coloring3053 78 = table3053 78 := by rfl

theorem table3053_entry079 :
    matchingVariables coloring3053 79 = table3053 79 := by rfl

theorem table3053_entry080 :
    matchingVariables coloring3053 80 = table3053 80 := by rfl

theorem table3053_entry081 :
    matchingVariables coloring3053 81 = table3053 81 := by rfl

theorem table3053_entry082 :
    matchingVariables coloring3053 82 = table3053 82 := by rfl

theorem table3053_entry083 :
    matchingVariables coloring3053 83 = table3053 83 := by rfl

theorem table3053_entry084 :
    matchingVariables coloring3053 84 = table3053 84 := by rfl

theorem table3053_entry085 :
    matchingVariables coloring3053 85 = table3053 85 := by rfl

theorem table3053_entry086 :
    matchingVariables coloring3053 86 = table3053 86 := by rfl

theorem table3053_entry087 :
    matchingVariables coloring3053 87 = table3053 87 := by rfl

theorem table3053_entry088 :
    matchingVariables coloring3053 88 = table3053 88 := by rfl

theorem table3053_entry089 :
    matchingVariables coloring3053 89 = table3053 89 := by rfl

theorem table3053_entry090 :
    matchingVariables coloring3053 90 = table3053 90 := by rfl

theorem table3053_entry091 :
    matchingVariables coloring3053 91 = table3053 91 := by rfl

theorem table3053_entry092 :
    matchingVariables coloring3053 92 = table3053 92 := by rfl

theorem table3053_entry093 :
    matchingVariables coloring3053 93 = table3053 93 := by rfl

theorem table3053_entry094 :
    matchingVariables coloring3053 94 = table3053 94 := by rfl

theorem table3053_entry095 :
    matchingVariables coloring3053 95 = table3053 95 := by rfl

theorem table3053_entry096 :
    matchingVariables coloring3053 96 = table3053 96 := by rfl

theorem table3053_entry097 :
    matchingVariables coloring3053 97 = table3053 97 := by rfl

theorem table3053_entry098 :
    matchingVariables coloring3053 98 = table3053 98 := by rfl

theorem table3053_entry099 :
    matchingVariables coloring3053 99 = table3053 99 := by rfl

theorem table3053_entry100 :
    matchingVariables coloring3053 100 = table3053 100 := by rfl

theorem table3053_entry101 :
    matchingVariables coloring3053 101 = table3053 101 := by rfl

theorem table3053_entry102 :
    matchingVariables coloring3053 102 = table3053 102 := by rfl

theorem table3053_entry103 :
    matchingVariables coloring3053 103 = table3053 103 := by rfl

theorem table3053_entry104 :
    matchingVariables coloring3053 104 = table3053 104 := by rfl

theorem table3053_complete : ∀ m, matchingVariables coloring3053 m = table3053 m := by
  intro m
  fin_cases m
  · exact table3053_entry000
  · exact table3053_entry001
  · exact table3053_entry002
  · exact table3053_entry003
  · exact table3053_entry004
  · exact table3053_entry005
  · exact table3053_entry006
  · exact table3053_entry007
  · exact table3053_entry008
  · exact table3053_entry009
  · exact table3053_entry010
  · exact table3053_entry011
  · exact table3053_entry012
  · exact table3053_entry013
  · exact table3053_entry014
  · exact table3053_entry015
  · exact table3053_entry016
  · exact table3053_entry017
  · exact table3053_entry018
  · exact table3053_entry019
  · exact table3053_entry020
  · exact table3053_entry021
  · exact table3053_entry022
  · exact table3053_entry023
  · exact table3053_entry024
  · exact table3053_entry025
  · exact table3053_entry026
  · exact table3053_entry027
  · exact table3053_entry028
  · exact table3053_entry029
  · exact table3053_entry030
  · exact table3053_entry031
  · exact table3053_entry032
  · exact table3053_entry033
  · exact table3053_entry034
  · exact table3053_entry035
  · exact table3053_entry036
  · exact table3053_entry037
  · exact table3053_entry038
  · exact table3053_entry039
  · exact table3053_entry040
  · exact table3053_entry041
  · exact table3053_entry042
  · exact table3053_entry043
  · exact table3053_entry044
  · exact table3053_entry045
  · exact table3053_entry046
  · exact table3053_entry047
  · exact table3053_entry048
  · exact table3053_entry049
  · exact table3053_entry050
  · exact table3053_entry051
  · exact table3053_entry052
  · exact table3053_entry053
  · exact table3053_entry054
  · exact table3053_entry055
  · exact table3053_entry056
  · exact table3053_entry057
  · exact table3053_entry058
  · exact table3053_entry059
  · exact table3053_entry060
  · exact table3053_entry061
  · exact table3053_entry062
  · exact table3053_entry063
  · exact table3053_entry064
  · exact table3053_entry065
  · exact table3053_entry066
  · exact table3053_entry067
  · exact table3053_entry068
  · exact table3053_entry069
  · exact table3053_entry070
  · exact table3053_entry071
  · exact table3053_entry072
  · exact table3053_entry073
  · exact table3053_entry074
  · exact table3053_entry075
  · exact table3053_entry076
  · exact table3053_entry077
  · exact table3053_entry078
  · exact table3053_entry079
  · exact table3053_entry080
  · exact table3053_entry081
  · exact table3053_entry082
  · exact table3053_entry083
  · exact table3053_entry084
  · exact table3053_entry085
  · exact table3053_entry086
  · exact table3053_entry087
  · exact table3053_entry088
  · exact table3053_entry089
  · exact table3053_entry090
  · exact table3053_entry091
  · exact table3053_entry092
  · exact table3053_entry093
  · exact table3053_entry094
  · exact table3053_entry095
  · exact table3053_entry096
  · exact table3053_entry097
  · exact table3053_entry098
  · exact table3053_entry099
  · exact table3053_entry100
  · exact table3053_entry101
  · exact table3053_entry102
  · exact table3053_entry103
  · exact table3053_entry104

#print axioms table3053_complete

def expanded3053 : Polynomial 143 := [(1, exponentOfVariables [6, 59, 101, 138]),
  (1, exponentOfVariables [6, 59, 111, 126]),
  (1, exponentOfVariables [6, 69, 89, 138]),
  (1, exponentOfVariables [15, 38, 89, 138]),
  (1, exponentOfVariables [15, 48, 89, 126]),
  (1, exponentOfVariables [26, 48, 69, 119])]

theorem table3053_expanded : tablePolynomial table3053 = expanded3053 := by
  rfl

theorem table3053_exponent00 :
    exponentOfVariables (n := 143) [6, 59, 101, 138] =
      (fun i => if i.val = 6 then (1) else if i.val = 59 then (1) else if i.val = 101 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3053_exponent01 :
    exponentOfVariables (n := 143) [6, 59, 111, 126] =
      (fun i => if i.val = 6 then (1) else if i.val = 59 then (1) else if i.val = 111 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3053_exponent02 :
    exponentOfVariables (n := 143) [6, 69, 89, 138] =
      (fun i => if i.val = 6 then (1) else if i.val = 69 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3053_exponent03 :
    exponentOfVariables (n := 143) [15, 38, 89, 138] =
      (fun i => if i.val = 15 then (1) else if i.val = 38 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3053_exponent04 :
    exponentOfVariables (n := 143) [15, 48, 89, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 48 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3053_exponent05 :
    exponentOfVariables (n := 143) [26, 48, 69, 119] =
      (fun i => if i.val = 26 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3053_polynomial : expanded3053 = amplitude3053 := by
  simp only [expanded3053, amplitude3053, table3053_exponent00, table3053_exponent01, table3053_exponent02, table3053_exponent03, table3053_exponent04, table3053_exponent05]

theorem premiseCheck117 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3053)) p117 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
