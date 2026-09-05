import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3105 : Fin 8 → Fin 3 := ![0, 0, 0, 1, 2, 0, 1, 1]

def table3105 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 58, 104, 138] else
    if m.val = 6 then some [0, 69, 87, 138] else
    if m.val = 21 then some [9, 38, 87, 138] else
    if m.val = 24 then some [9, 48, 87, 126] else
    if m.val = 26 then some [9, 48, 97, 104] else
    if m.val = 40 then some [19, 48, 69, 122] else none

theorem table3105_entry000 :
    matchingVariables coloring3105 0 = table3105 0 := by rfl

theorem table3105_entry001 :
    matchingVariables coloring3105 1 = table3105 1 := by rfl

theorem table3105_entry002 :
    matchingVariables coloring3105 2 = table3105 2 := by rfl

theorem table3105_entry003 :
    matchingVariables coloring3105 3 = table3105 3 := by rfl

theorem table3105_entry004 :
    matchingVariables coloring3105 4 = table3105 4 := by rfl

theorem table3105_entry005 :
    matchingVariables coloring3105 5 = table3105 5 := by rfl

theorem table3105_entry006 :
    matchingVariables coloring3105 6 = table3105 6 := by rfl

theorem table3105_entry007 :
    matchingVariables coloring3105 7 = table3105 7 := by rfl

theorem table3105_entry008 :
    matchingVariables coloring3105 8 = table3105 8 := by rfl

theorem table3105_entry009 :
    matchingVariables coloring3105 9 = table3105 9 := by rfl

theorem table3105_entry010 :
    matchingVariables coloring3105 10 = table3105 10 := by rfl

theorem table3105_entry011 :
    matchingVariables coloring3105 11 = table3105 11 := by rfl

theorem table3105_entry012 :
    matchingVariables coloring3105 12 = table3105 12 := by rfl

theorem table3105_entry013 :
    matchingVariables coloring3105 13 = table3105 13 := by rfl

theorem table3105_entry014 :
    matchingVariables coloring3105 14 = table3105 14 := by rfl

theorem table3105_entry015 :
    matchingVariables coloring3105 15 = table3105 15 := by rfl

theorem table3105_entry016 :
    matchingVariables coloring3105 16 = table3105 16 := by rfl

theorem table3105_entry017 :
    matchingVariables coloring3105 17 = table3105 17 := by rfl

theorem table3105_entry018 :
    matchingVariables coloring3105 18 = table3105 18 := by rfl

theorem table3105_entry019 :
    matchingVariables coloring3105 19 = table3105 19 := by rfl

theorem table3105_entry020 :
    matchingVariables coloring3105 20 = table3105 20 := by rfl

theorem table3105_entry021 :
    matchingVariables coloring3105 21 = table3105 21 := by rfl

theorem table3105_entry022 :
    matchingVariables coloring3105 22 = table3105 22 := by rfl

theorem table3105_entry023 :
    matchingVariables coloring3105 23 = table3105 23 := by rfl

theorem table3105_entry024 :
    matchingVariables coloring3105 24 = table3105 24 := by rfl

theorem table3105_entry025 :
    matchingVariables coloring3105 25 = table3105 25 := by rfl

theorem table3105_entry026 :
    matchingVariables coloring3105 26 = table3105 26 := by rfl

theorem table3105_entry027 :
    matchingVariables coloring3105 27 = table3105 27 := by rfl

theorem table3105_entry028 :
    matchingVariables coloring3105 28 = table3105 28 := by rfl

theorem table3105_entry029 :
    matchingVariables coloring3105 29 = table3105 29 := by rfl

theorem table3105_entry030 :
    matchingVariables coloring3105 30 = table3105 30 := by rfl

theorem table3105_entry031 :
    matchingVariables coloring3105 31 = table3105 31 := by rfl

theorem table3105_entry032 :
    matchingVariables coloring3105 32 = table3105 32 := by rfl

theorem table3105_entry033 :
    matchingVariables coloring3105 33 = table3105 33 := by rfl

theorem table3105_entry034 :
    matchingVariables coloring3105 34 = table3105 34 := by rfl

theorem table3105_entry035 :
    matchingVariables coloring3105 35 = table3105 35 := by rfl

theorem table3105_entry036 :
    matchingVariables coloring3105 36 = table3105 36 := by rfl

theorem table3105_entry037 :
    matchingVariables coloring3105 37 = table3105 37 := by rfl

theorem table3105_entry038 :
    matchingVariables coloring3105 38 = table3105 38 := by rfl

theorem table3105_entry039 :
    matchingVariables coloring3105 39 = table3105 39 := by rfl

theorem table3105_entry040 :
    matchingVariables coloring3105 40 = table3105 40 := by rfl

theorem table3105_entry041 :
    matchingVariables coloring3105 41 = table3105 41 := by rfl

theorem table3105_entry042 :
    matchingVariables coloring3105 42 = table3105 42 := by rfl

theorem table3105_entry043 :
    matchingVariables coloring3105 43 = table3105 43 := by rfl

theorem table3105_entry044 :
    matchingVariables coloring3105 44 = table3105 44 := by rfl

theorem table3105_entry045 :
    matchingVariables coloring3105 45 = table3105 45 := by rfl

theorem table3105_entry046 :
    matchingVariables coloring3105 46 = table3105 46 := by rfl

theorem table3105_entry047 :
    matchingVariables coloring3105 47 = table3105 47 := by rfl

theorem table3105_entry048 :
    matchingVariables coloring3105 48 = table3105 48 := by rfl

theorem table3105_entry049 :
    matchingVariables coloring3105 49 = table3105 49 := by rfl

theorem table3105_entry050 :
    matchingVariables coloring3105 50 = table3105 50 := by rfl

theorem table3105_entry051 :
    matchingVariables coloring3105 51 = table3105 51 := by rfl

theorem table3105_entry052 :
    matchingVariables coloring3105 52 = table3105 52 := by rfl

theorem table3105_entry053 :
    matchingVariables coloring3105 53 = table3105 53 := by rfl

theorem table3105_entry054 :
    matchingVariables coloring3105 54 = table3105 54 := by rfl

theorem table3105_entry055 :
    matchingVariables coloring3105 55 = table3105 55 := by rfl

theorem table3105_entry056 :
    matchingVariables coloring3105 56 = table3105 56 := by rfl

theorem table3105_entry057 :
    matchingVariables coloring3105 57 = table3105 57 := by rfl

theorem table3105_entry058 :
    matchingVariables coloring3105 58 = table3105 58 := by rfl

theorem table3105_entry059 :
    matchingVariables coloring3105 59 = table3105 59 := by rfl

theorem table3105_entry060 :
    matchingVariables coloring3105 60 = table3105 60 := by rfl

theorem table3105_entry061 :
    matchingVariables coloring3105 61 = table3105 61 := by rfl

theorem table3105_entry062 :
    matchingVariables coloring3105 62 = table3105 62 := by rfl

theorem table3105_entry063 :
    matchingVariables coloring3105 63 = table3105 63 := by rfl

theorem table3105_entry064 :
    matchingVariables coloring3105 64 = table3105 64 := by rfl

theorem table3105_entry065 :
    matchingVariables coloring3105 65 = table3105 65 := by rfl

theorem table3105_entry066 :
    matchingVariables coloring3105 66 = table3105 66 := by rfl

theorem table3105_entry067 :
    matchingVariables coloring3105 67 = table3105 67 := by rfl

theorem table3105_entry068 :
    matchingVariables coloring3105 68 = table3105 68 := by rfl

theorem table3105_entry069 :
    matchingVariables coloring3105 69 = table3105 69 := by rfl

theorem table3105_entry070 :
    matchingVariables coloring3105 70 = table3105 70 := by rfl

theorem table3105_entry071 :
    matchingVariables coloring3105 71 = table3105 71 := by rfl

theorem table3105_entry072 :
    matchingVariables coloring3105 72 = table3105 72 := by rfl

theorem table3105_entry073 :
    matchingVariables coloring3105 73 = table3105 73 := by rfl

theorem table3105_entry074 :
    matchingVariables coloring3105 74 = table3105 74 := by rfl

theorem table3105_entry075 :
    matchingVariables coloring3105 75 = table3105 75 := by rfl

theorem table3105_entry076 :
    matchingVariables coloring3105 76 = table3105 76 := by rfl

theorem table3105_entry077 :
    matchingVariables coloring3105 77 = table3105 77 := by rfl

theorem table3105_entry078 :
    matchingVariables coloring3105 78 = table3105 78 := by rfl

theorem table3105_entry079 :
    matchingVariables coloring3105 79 = table3105 79 := by rfl

theorem table3105_entry080 :
    matchingVariables coloring3105 80 = table3105 80 := by rfl

theorem table3105_entry081 :
    matchingVariables coloring3105 81 = table3105 81 := by rfl

theorem table3105_entry082 :
    matchingVariables coloring3105 82 = table3105 82 := by rfl

theorem table3105_entry083 :
    matchingVariables coloring3105 83 = table3105 83 := by rfl

theorem table3105_entry084 :
    matchingVariables coloring3105 84 = table3105 84 := by rfl

theorem table3105_entry085 :
    matchingVariables coloring3105 85 = table3105 85 := by rfl

theorem table3105_entry086 :
    matchingVariables coloring3105 86 = table3105 86 := by rfl

theorem table3105_entry087 :
    matchingVariables coloring3105 87 = table3105 87 := by rfl

theorem table3105_entry088 :
    matchingVariables coloring3105 88 = table3105 88 := by rfl

theorem table3105_entry089 :
    matchingVariables coloring3105 89 = table3105 89 := by rfl

theorem table3105_entry090 :
    matchingVariables coloring3105 90 = table3105 90 := by rfl

theorem table3105_entry091 :
    matchingVariables coloring3105 91 = table3105 91 := by rfl

theorem table3105_entry092 :
    matchingVariables coloring3105 92 = table3105 92 := by rfl

theorem table3105_entry093 :
    matchingVariables coloring3105 93 = table3105 93 := by rfl

theorem table3105_entry094 :
    matchingVariables coloring3105 94 = table3105 94 := by rfl

theorem table3105_entry095 :
    matchingVariables coloring3105 95 = table3105 95 := by rfl

theorem table3105_entry096 :
    matchingVariables coloring3105 96 = table3105 96 := by rfl

theorem table3105_entry097 :
    matchingVariables coloring3105 97 = table3105 97 := by rfl

theorem table3105_entry098 :
    matchingVariables coloring3105 98 = table3105 98 := by rfl

theorem table3105_entry099 :
    matchingVariables coloring3105 99 = table3105 99 := by rfl

theorem table3105_entry100 :
    matchingVariables coloring3105 100 = table3105 100 := by rfl

theorem table3105_entry101 :
    matchingVariables coloring3105 101 = table3105 101 := by rfl

theorem table3105_entry102 :
    matchingVariables coloring3105 102 = table3105 102 := by rfl

theorem table3105_entry103 :
    matchingVariables coloring3105 103 = table3105 103 := by rfl

theorem table3105_entry104 :
    matchingVariables coloring3105 104 = table3105 104 := by rfl

theorem table3105_complete : ∀ m, matchingVariables coloring3105 m = table3105 m := by
  intro m
  fin_cases m
  · exact table3105_entry000
  · exact table3105_entry001
  · exact table3105_entry002
  · exact table3105_entry003
  · exact table3105_entry004
  · exact table3105_entry005
  · exact table3105_entry006
  · exact table3105_entry007
  · exact table3105_entry008
  · exact table3105_entry009
  · exact table3105_entry010
  · exact table3105_entry011
  · exact table3105_entry012
  · exact table3105_entry013
  · exact table3105_entry014
  · exact table3105_entry015
  · exact table3105_entry016
  · exact table3105_entry017
  · exact table3105_entry018
  · exact table3105_entry019
  · exact table3105_entry020
  · exact table3105_entry021
  · exact table3105_entry022
  · exact table3105_entry023
  · exact table3105_entry024
  · exact table3105_entry025
  · exact table3105_entry026
  · exact table3105_entry027
  · exact table3105_entry028
  · exact table3105_entry029
  · exact table3105_entry030
  · exact table3105_entry031
  · exact table3105_entry032
  · exact table3105_entry033
  · exact table3105_entry034
  · exact table3105_entry035
  · exact table3105_entry036
  · exact table3105_entry037
  · exact table3105_entry038
  · exact table3105_entry039
  · exact table3105_entry040
  · exact table3105_entry041
  · exact table3105_entry042
  · exact table3105_entry043
  · exact table3105_entry044
  · exact table3105_entry045
  · exact table3105_entry046
  · exact table3105_entry047
  · exact table3105_entry048
  · exact table3105_entry049
  · exact table3105_entry050
  · exact table3105_entry051
  · exact table3105_entry052
  · exact table3105_entry053
  · exact table3105_entry054
  · exact table3105_entry055
  · exact table3105_entry056
  · exact table3105_entry057
  · exact table3105_entry058
  · exact table3105_entry059
  · exact table3105_entry060
  · exact table3105_entry061
  · exact table3105_entry062
  · exact table3105_entry063
  · exact table3105_entry064
  · exact table3105_entry065
  · exact table3105_entry066
  · exact table3105_entry067
  · exact table3105_entry068
  · exact table3105_entry069
  · exact table3105_entry070
  · exact table3105_entry071
  · exact table3105_entry072
  · exact table3105_entry073
  · exact table3105_entry074
  · exact table3105_entry075
  · exact table3105_entry076
  · exact table3105_entry077
  · exact table3105_entry078
  · exact table3105_entry079
  · exact table3105_entry080
  · exact table3105_entry081
  · exact table3105_entry082
  · exact table3105_entry083
  · exact table3105_entry084
  · exact table3105_entry085
  · exact table3105_entry086
  · exact table3105_entry087
  · exact table3105_entry088
  · exact table3105_entry089
  · exact table3105_entry090
  · exact table3105_entry091
  · exact table3105_entry092
  · exact table3105_entry093
  · exact table3105_entry094
  · exact table3105_entry095
  · exact table3105_entry096
  · exact table3105_entry097
  · exact table3105_entry098
  · exact table3105_entry099
  · exact table3105_entry100
  · exact table3105_entry101
  · exact table3105_entry102
  · exact table3105_entry103
  · exact table3105_entry104

#print axioms table3105_complete

def expanded3105 : Polynomial 143 := [(1, exponentOfVariables [0, 58, 104, 138]),
  (1, exponentOfVariables [0, 69, 87, 138]),
  (1, exponentOfVariables [9, 38, 87, 138]),
  (1, exponentOfVariables [9, 48, 87, 126]),
  (1, exponentOfVariables [9, 48, 97, 104]),
  (1, exponentOfVariables [19, 48, 69, 122])]

theorem table3105_expanded : tablePolynomial table3105 = expanded3105 := by
  rfl

theorem table3105_exponent00 :
    exponentOfVariables (n := 143) [0, 58, 104, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3105_exponent01 :
    exponentOfVariables (n := 143) [0, 69, 87, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3105_exponent02 :
    exponentOfVariables (n := 143) [9, 38, 87, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3105_exponent03 :
    exponentOfVariables (n := 143) [9, 48, 87, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3105_exponent04 :
    exponentOfVariables (n := 143) [9, 48, 97, 104] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3105_exponent05 :
    exponentOfVariables (n := 143) [19, 48, 69, 122] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3105_polynomial : expanded3105 = amplitude3105 := by
  simp only [expanded3105, amplitude3105, table3105_exponent00, table3105_exponent01, table3105_exponent02, table3105_exponent03, table3105_exponent04, table3105_exponent05]

theorem premiseCheck012 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3105)) p012 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
