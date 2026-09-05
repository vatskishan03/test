import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3123 : Fin 8 → Fin 3 := ![0, 0, 2, 1, 2, 0, 1, 1]

def table3123 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 64, 104, 138] else
    if m.val = 6 then some [0, 75, 87, 138] else
    if m.val = 21 then some [11, 38, 87, 138] else
    if m.val = 24 then some [11, 48, 87, 126] else
    if m.val = 26 then some [11, 48, 97, 104] else
    if m.val = 40 then some [19, 48, 75, 122] else none

theorem table3123_entry000 :
    matchingVariables coloring3123 0 = table3123 0 := by rfl

theorem table3123_entry001 :
    matchingVariables coloring3123 1 = table3123 1 := by rfl

theorem table3123_entry002 :
    matchingVariables coloring3123 2 = table3123 2 := by rfl

theorem table3123_entry003 :
    matchingVariables coloring3123 3 = table3123 3 := by rfl

theorem table3123_entry004 :
    matchingVariables coloring3123 4 = table3123 4 := by rfl

theorem table3123_entry005 :
    matchingVariables coloring3123 5 = table3123 5 := by rfl

theorem table3123_entry006 :
    matchingVariables coloring3123 6 = table3123 6 := by rfl

theorem table3123_entry007 :
    matchingVariables coloring3123 7 = table3123 7 := by rfl

theorem table3123_entry008 :
    matchingVariables coloring3123 8 = table3123 8 := by rfl

theorem table3123_entry009 :
    matchingVariables coloring3123 9 = table3123 9 := by rfl

theorem table3123_entry010 :
    matchingVariables coloring3123 10 = table3123 10 := by rfl

theorem table3123_entry011 :
    matchingVariables coloring3123 11 = table3123 11 := by rfl

theorem table3123_entry012 :
    matchingVariables coloring3123 12 = table3123 12 := by rfl

theorem table3123_entry013 :
    matchingVariables coloring3123 13 = table3123 13 := by rfl

theorem table3123_entry014 :
    matchingVariables coloring3123 14 = table3123 14 := by rfl

theorem table3123_entry015 :
    matchingVariables coloring3123 15 = table3123 15 := by rfl

theorem table3123_entry016 :
    matchingVariables coloring3123 16 = table3123 16 := by rfl

theorem table3123_entry017 :
    matchingVariables coloring3123 17 = table3123 17 := by rfl

theorem table3123_entry018 :
    matchingVariables coloring3123 18 = table3123 18 := by rfl

theorem table3123_entry019 :
    matchingVariables coloring3123 19 = table3123 19 := by rfl

theorem table3123_entry020 :
    matchingVariables coloring3123 20 = table3123 20 := by rfl

theorem table3123_entry021 :
    matchingVariables coloring3123 21 = table3123 21 := by rfl

theorem table3123_entry022 :
    matchingVariables coloring3123 22 = table3123 22 := by rfl

theorem table3123_entry023 :
    matchingVariables coloring3123 23 = table3123 23 := by rfl

theorem table3123_entry024 :
    matchingVariables coloring3123 24 = table3123 24 := by rfl

theorem table3123_entry025 :
    matchingVariables coloring3123 25 = table3123 25 := by rfl

theorem table3123_entry026 :
    matchingVariables coloring3123 26 = table3123 26 := by rfl

theorem table3123_entry027 :
    matchingVariables coloring3123 27 = table3123 27 := by rfl

theorem table3123_entry028 :
    matchingVariables coloring3123 28 = table3123 28 := by rfl

theorem table3123_entry029 :
    matchingVariables coloring3123 29 = table3123 29 := by rfl

theorem table3123_entry030 :
    matchingVariables coloring3123 30 = table3123 30 := by rfl

theorem table3123_entry031 :
    matchingVariables coloring3123 31 = table3123 31 := by rfl

theorem table3123_entry032 :
    matchingVariables coloring3123 32 = table3123 32 := by rfl

theorem table3123_entry033 :
    matchingVariables coloring3123 33 = table3123 33 := by rfl

theorem table3123_entry034 :
    matchingVariables coloring3123 34 = table3123 34 := by rfl

theorem table3123_entry035 :
    matchingVariables coloring3123 35 = table3123 35 := by rfl

theorem table3123_entry036 :
    matchingVariables coloring3123 36 = table3123 36 := by rfl

theorem table3123_entry037 :
    matchingVariables coloring3123 37 = table3123 37 := by rfl

theorem table3123_entry038 :
    matchingVariables coloring3123 38 = table3123 38 := by rfl

theorem table3123_entry039 :
    matchingVariables coloring3123 39 = table3123 39 := by rfl

theorem table3123_entry040 :
    matchingVariables coloring3123 40 = table3123 40 := by rfl

theorem table3123_entry041 :
    matchingVariables coloring3123 41 = table3123 41 := by rfl

theorem table3123_entry042 :
    matchingVariables coloring3123 42 = table3123 42 := by rfl

theorem table3123_entry043 :
    matchingVariables coloring3123 43 = table3123 43 := by rfl

theorem table3123_entry044 :
    matchingVariables coloring3123 44 = table3123 44 := by rfl

theorem table3123_entry045 :
    matchingVariables coloring3123 45 = table3123 45 := by rfl

theorem table3123_entry046 :
    matchingVariables coloring3123 46 = table3123 46 := by rfl

theorem table3123_entry047 :
    matchingVariables coloring3123 47 = table3123 47 := by rfl

theorem table3123_entry048 :
    matchingVariables coloring3123 48 = table3123 48 := by rfl

theorem table3123_entry049 :
    matchingVariables coloring3123 49 = table3123 49 := by rfl

theorem table3123_entry050 :
    matchingVariables coloring3123 50 = table3123 50 := by rfl

theorem table3123_entry051 :
    matchingVariables coloring3123 51 = table3123 51 := by rfl

theorem table3123_entry052 :
    matchingVariables coloring3123 52 = table3123 52 := by rfl

theorem table3123_entry053 :
    matchingVariables coloring3123 53 = table3123 53 := by rfl

theorem table3123_entry054 :
    matchingVariables coloring3123 54 = table3123 54 := by rfl

theorem table3123_entry055 :
    matchingVariables coloring3123 55 = table3123 55 := by rfl

theorem table3123_entry056 :
    matchingVariables coloring3123 56 = table3123 56 := by rfl

theorem table3123_entry057 :
    matchingVariables coloring3123 57 = table3123 57 := by rfl

theorem table3123_entry058 :
    matchingVariables coloring3123 58 = table3123 58 := by rfl

theorem table3123_entry059 :
    matchingVariables coloring3123 59 = table3123 59 := by rfl

theorem table3123_entry060 :
    matchingVariables coloring3123 60 = table3123 60 := by rfl

theorem table3123_entry061 :
    matchingVariables coloring3123 61 = table3123 61 := by rfl

theorem table3123_entry062 :
    matchingVariables coloring3123 62 = table3123 62 := by rfl

theorem table3123_entry063 :
    matchingVariables coloring3123 63 = table3123 63 := by rfl

theorem table3123_entry064 :
    matchingVariables coloring3123 64 = table3123 64 := by rfl

theorem table3123_entry065 :
    matchingVariables coloring3123 65 = table3123 65 := by rfl

theorem table3123_entry066 :
    matchingVariables coloring3123 66 = table3123 66 := by rfl

theorem table3123_entry067 :
    matchingVariables coloring3123 67 = table3123 67 := by rfl

theorem table3123_entry068 :
    matchingVariables coloring3123 68 = table3123 68 := by rfl

theorem table3123_entry069 :
    matchingVariables coloring3123 69 = table3123 69 := by rfl

theorem table3123_entry070 :
    matchingVariables coloring3123 70 = table3123 70 := by rfl

theorem table3123_entry071 :
    matchingVariables coloring3123 71 = table3123 71 := by rfl

theorem table3123_entry072 :
    matchingVariables coloring3123 72 = table3123 72 := by rfl

theorem table3123_entry073 :
    matchingVariables coloring3123 73 = table3123 73 := by rfl

theorem table3123_entry074 :
    matchingVariables coloring3123 74 = table3123 74 := by rfl

theorem table3123_entry075 :
    matchingVariables coloring3123 75 = table3123 75 := by rfl

theorem table3123_entry076 :
    matchingVariables coloring3123 76 = table3123 76 := by rfl

theorem table3123_entry077 :
    matchingVariables coloring3123 77 = table3123 77 := by rfl

theorem table3123_entry078 :
    matchingVariables coloring3123 78 = table3123 78 := by rfl

theorem table3123_entry079 :
    matchingVariables coloring3123 79 = table3123 79 := by rfl

theorem table3123_entry080 :
    matchingVariables coloring3123 80 = table3123 80 := by rfl

theorem table3123_entry081 :
    matchingVariables coloring3123 81 = table3123 81 := by rfl

theorem table3123_entry082 :
    matchingVariables coloring3123 82 = table3123 82 := by rfl

theorem table3123_entry083 :
    matchingVariables coloring3123 83 = table3123 83 := by rfl

theorem table3123_entry084 :
    matchingVariables coloring3123 84 = table3123 84 := by rfl

theorem table3123_entry085 :
    matchingVariables coloring3123 85 = table3123 85 := by rfl

theorem table3123_entry086 :
    matchingVariables coloring3123 86 = table3123 86 := by rfl

theorem table3123_entry087 :
    matchingVariables coloring3123 87 = table3123 87 := by rfl

theorem table3123_entry088 :
    matchingVariables coloring3123 88 = table3123 88 := by rfl

theorem table3123_entry089 :
    matchingVariables coloring3123 89 = table3123 89 := by rfl

theorem table3123_entry090 :
    matchingVariables coloring3123 90 = table3123 90 := by rfl

theorem table3123_entry091 :
    matchingVariables coloring3123 91 = table3123 91 := by rfl

theorem table3123_entry092 :
    matchingVariables coloring3123 92 = table3123 92 := by rfl

theorem table3123_entry093 :
    matchingVariables coloring3123 93 = table3123 93 := by rfl

theorem table3123_entry094 :
    matchingVariables coloring3123 94 = table3123 94 := by rfl

theorem table3123_entry095 :
    matchingVariables coloring3123 95 = table3123 95 := by rfl

theorem table3123_entry096 :
    matchingVariables coloring3123 96 = table3123 96 := by rfl

theorem table3123_entry097 :
    matchingVariables coloring3123 97 = table3123 97 := by rfl

theorem table3123_entry098 :
    matchingVariables coloring3123 98 = table3123 98 := by rfl

theorem table3123_entry099 :
    matchingVariables coloring3123 99 = table3123 99 := by rfl

theorem table3123_entry100 :
    matchingVariables coloring3123 100 = table3123 100 := by rfl

theorem table3123_entry101 :
    matchingVariables coloring3123 101 = table3123 101 := by rfl

theorem table3123_entry102 :
    matchingVariables coloring3123 102 = table3123 102 := by rfl

theorem table3123_entry103 :
    matchingVariables coloring3123 103 = table3123 103 := by rfl

theorem table3123_entry104 :
    matchingVariables coloring3123 104 = table3123 104 := by rfl

theorem table3123_complete : ∀ m, matchingVariables coloring3123 m = table3123 m := by
  intro m
  fin_cases m
  · exact table3123_entry000
  · exact table3123_entry001
  · exact table3123_entry002
  · exact table3123_entry003
  · exact table3123_entry004
  · exact table3123_entry005
  · exact table3123_entry006
  · exact table3123_entry007
  · exact table3123_entry008
  · exact table3123_entry009
  · exact table3123_entry010
  · exact table3123_entry011
  · exact table3123_entry012
  · exact table3123_entry013
  · exact table3123_entry014
  · exact table3123_entry015
  · exact table3123_entry016
  · exact table3123_entry017
  · exact table3123_entry018
  · exact table3123_entry019
  · exact table3123_entry020
  · exact table3123_entry021
  · exact table3123_entry022
  · exact table3123_entry023
  · exact table3123_entry024
  · exact table3123_entry025
  · exact table3123_entry026
  · exact table3123_entry027
  · exact table3123_entry028
  · exact table3123_entry029
  · exact table3123_entry030
  · exact table3123_entry031
  · exact table3123_entry032
  · exact table3123_entry033
  · exact table3123_entry034
  · exact table3123_entry035
  · exact table3123_entry036
  · exact table3123_entry037
  · exact table3123_entry038
  · exact table3123_entry039
  · exact table3123_entry040
  · exact table3123_entry041
  · exact table3123_entry042
  · exact table3123_entry043
  · exact table3123_entry044
  · exact table3123_entry045
  · exact table3123_entry046
  · exact table3123_entry047
  · exact table3123_entry048
  · exact table3123_entry049
  · exact table3123_entry050
  · exact table3123_entry051
  · exact table3123_entry052
  · exact table3123_entry053
  · exact table3123_entry054
  · exact table3123_entry055
  · exact table3123_entry056
  · exact table3123_entry057
  · exact table3123_entry058
  · exact table3123_entry059
  · exact table3123_entry060
  · exact table3123_entry061
  · exact table3123_entry062
  · exact table3123_entry063
  · exact table3123_entry064
  · exact table3123_entry065
  · exact table3123_entry066
  · exact table3123_entry067
  · exact table3123_entry068
  · exact table3123_entry069
  · exact table3123_entry070
  · exact table3123_entry071
  · exact table3123_entry072
  · exact table3123_entry073
  · exact table3123_entry074
  · exact table3123_entry075
  · exact table3123_entry076
  · exact table3123_entry077
  · exact table3123_entry078
  · exact table3123_entry079
  · exact table3123_entry080
  · exact table3123_entry081
  · exact table3123_entry082
  · exact table3123_entry083
  · exact table3123_entry084
  · exact table3123_entry085
  · exact table3123_entry086
  · exact table3123_entry087
  · exact table3123_entry088
  · exact table3123_entry089
  · exact table3123_entry090
  · exact table3123_entry091
  · exact table3123_entry092
  · exact table3123_entry093
  · exact table3123_entry094
  · exact table3123_entry095
  · exact table3123_entry096
  · exact table3123_entry097
  · exact table3123_entry098
  · exact table3123_entry099
  · exact table3123_entry100
  · exact table3123_entry101
  · exact table3123_entry102
  · exact table3123_entry103
  · exact table3123_entry104

#print axioms table3123_complete

def expanded3123 : Polynomial 143 := [(1, exponentOfVariables [0, 64, 104, 138]),
  (1, exponentOfVariables [0, 75, 87, 138]),
  (1, exponentOfVariables [11, 38, 87, 138]),
  (1, exponentOfVariables [11, 48, 87, 126]),
  (1, exponentOfVariables [11, 48, 97, 104]),
  (1, exponentOfVariables [19, 48, 75, 122])]

theorem table3123_expanded : tablePolynomial table3123 = expanded3123 := by
  rfl

theorem table3123_exponent00 :
    exponentOfVariables (n := 143) [0, 64, 104, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 64 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3123_exponent01 :
    exponentOfVariables (n := 143) [0, 75, 87, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 75 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3123_exponent02 :
    exponentOfVariables (n := 143) [11, 38, 87, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3123_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 87, 126] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3123_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 97, 104] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3123_exponent05 :
    exponentOfVariables (n := 143) [19, 48, 75, 122] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3123_polynomial : expanded3123 = amplitude3123 := by
  simp only [expanded3123, amplitude3123, table3123_exponent00, table3123_exponent01, table3123_exponent02, table3123_exponent03, table3123_exponent04, table3123_exponent05]

theorem premiseCheck000 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3123)) p000 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
