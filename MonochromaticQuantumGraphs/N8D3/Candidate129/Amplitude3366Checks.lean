import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3366 : Fin 8 → Fin 3 := ![0, 0, 2, 1, 2, 1, 1, 1]

def table3366 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 64, 105, 138] else
    if m.val = 6 then some [0, 76, 87, 138] else
    if m.val = 21 then some [11, 39, 87, 138] else
    if m.val = 24 then some [11, 48, 87, 129] else
    if m.val = 26 then some [11, 48, 97, 105] else
    if m.val = 40 then some [19, 48, 76, 122] else none

theorem table3366_entry000 :
    matchingVariables coloring3366 0 = table3366 0 := by rfl

theorem table3366_entry001 :
    matchingVariables coloring3366 1 = table3366 1 := by rfl

theorem table3366_entry002 :
    matchingVariables coloring3366 2 = table3366 2 := by rfl

theorem table3366_entry003 :
    matchingVariables coloring3366 3 = table3366 3 := by rfl

theorem table3366_entry004 :
    matchingVariables coloring3366 4 = table3366 4 := by rfl

theorem table3366_entry005 :
    matchingVariables coloring3366 5 = table3366 5 := by rfl

theorem table3366_entry006 :
    matchingVariables coloring3366 6 = table3366 6 := by rfl

theorem table3366_entry007 :
    matchingVariables coloring3366 7 = table3366 7 := by rfl

theorem table3366_entry008 :
    matchingVariables coloring3366 8 = table3366 8 := by rfl

theorem table3366_entry009 :
    matchingVariables coloring3366 9 = table3366 9 := by rfl

theorem table3366_entry010 :
    matchingVariables coloring3366 10 = table3366 10 := by rfl

theorem table3366_entry011 :
    matchingVariables coloring3366 11 = table3366 11 := by rfl

theorem table3366_entry012 :
    matchingVariables coloring3366 12 = table3366 12 := by rfl

theorem table3366_entry013 :
    matchingVariables coloring3366 13 = table3366 13 := by rfl

theorem table3366_entry014 :
    matchingVariables coloring3366 14 = table3366 14 := by rfl

theorem table3366_entry015 :
    matchingVariables coloring3366 15 = table3366 15 := by rfl

theorem table3366_entry016 :
    matchingVariables coloring3366 16 = table3366 16 := by rfl

theorem table3366_entry017 :
    matchingVariables coloring3366 17 = table3366 17 := by rfl

theorem table3366_entry018 :
    matchingVariables coloring3366 18 = table3366 18 := by rfl

theorem table3366_entry019 :
    matchingVariables coloring3366 19 = table3366 19 := by rfl

theorem table3366_entry020 :
    matchingVariables coloring3366 20 = table3366 20 := by rfl

theorem table3366_entry021 :
    matchingVariables coloring3366 21 = table3366 21 := by rfl

theorem table3366_entry022 :
    matchingVariables coloring3366 22 = table3366 22 := by rfl

theorem table3366_entry023 :
    matchingVariables coloring3366 23 = table3366 23 := by rfl

theorem table3366_entry024 :
    matchingVariables coloring3366 24 = table3366 24 := by rfl

theorem table3366_entry025 :
    matchingVariables coloring3366 25 = table3366 25 := by rfl

theorem table3366_entry026 :
    matchingVariables coloring3366 26 = table3366 26 := by rfl

theorem table3366_entry027 :
    matchingVariables coloring3366 27 = table3366 27 := by rfl

theorem table3366_entry028 :
    matchingVariables coloring3366 28 = table3366 28 := by rfl

theorem table3366_entry029 :
    matchingVariables coloring3366 29 = table3366 29 := by rfl

theorem table3366_entry030 :
    matchingVariables coloring3366 30 = table3366 30 := by rfl

theorem table3366_entry031 :
    matchingVariables coloring3366 31 = table3366 31 := by rfl

theorem table3366_entry032 :
    matchingVariables coloring3366 32 = table3366 32 := by rfl

theorem table3366_entry033 :
    matchingVariables coloring3366 33 = table3366 33 := by rfl

theorem table3366_entry034 :
    matchingVariables coloring3366 34 = table3366 34 := by rfl

theorem table3366_entry035 :
    matchingVariables coloring3366 35 = table3366 35 := by rfl

theorem table3366_entry036 :
    matchingVariables coloring3366 36 = table3366 36 := by rfl

theorem table3366_entry037 :
    matchingVariables coloring3366 37 = table3366 37 := by rfl

theorem table3366_entry038 :
    matchingVariables coloring3366 38 = table3366 38 := by rfl

theorem table3366_entry039 :
    matchingVariables coloring3366 39 = table3366 39 := by rfl

theorem table3366_entry040 :
    matchingVariables coloring3366 40 = table3366 40 := by rfl

theorem table3366_entry041 :
    matchingVariables coloring3366 41 = table3366 41 := by rfl

theorem table3366_entry042 :
    matchingVariables coloring3366 42 = table3366 42 := by rfl

theorem table3366_entry043 :
    matchingVariables coloring3366 43 = table3366 43 := by rfl

theorem table3366_entry044 :
    matchingVariables coloring3366 44 = table3366 44 := by rfl

theorem table3366_entry045 :
    matchingVariables coloring3366 45 = table3366 45 := by rfl

theorem table3366_entry046 :
    matchingVariables coloring3366 46 = table3366 46 := by rfl

theorem table3366_entry047 :
    matchingVariables coloring3366 47 = table3366 47 := by rfl

theorem table3366_entry048 :
    matchingVariables coloring3366 48 = table3366 48 := by rfl

theorem table3366_entry049 :
    matchingVariables coloring3366 49 = table3366 49 := by rfl

theorem table3366_entry050 :
    matchingVariables coloring3366 50 = table3366 50 := by rfl

theorem table3366_entry051 :
    matchingVariables coloring3366 51 = table3366 51 := by rfl

theorem table3366_entry052 :
    matchingVariables coloring3366 52 = table3366 52 := by rfl

theorem table3366_entry053 :
    matchingVariables coloring3366 53 = table3366 53 := by rfl

theorem table3366_entry054 :
    matchingVariables coloring3366 54 = table3366 54 := by rfl

theorem table3366_entry055 :
    matchingVariables coloring3366 55 = table3366 55 := by rfl

theorem table3366_entry056 :
    matchingVariables coloring3366 56 = table3366 56 := by rfl

theorem table3366_entry057 :
    matchingVariables coloring3366 57 = table3366 57 := by rfl

theorem table3366_entry058 :
    matchingVariables coloring3366 58 = table3366 58 := by rfl

theorem table3366_entry059 :
    matchingVariables coloring3366 59 = table3366 59 := by rfl

theorem table3366_entry060 :
    matchingVariables coloring3366 60 = table3366 60 := by rfl

theorem table3366_entry061 :
    matchingVariables coloring3366 61 = table3366 61 := by rfl

theorem table3366_entry062 :
    matchingVariables coloring3366 62 = table3366 62 := by rfl

theorem table3366_entry063 :
    matchingVariables coloring3366 63 = table3366 63 := by rfl

theorem table3366_entry064 :
    matchingVariables coloring3366 64 = table3366 64 := by rfl

theorem table3366_entry065 :
    matchingVariables coloring3366 65 = table3366 65 := by rfl

theorem table3366_entry066 :
    matchingVariables coloring3366 66 = table3366 66 := by rfl

theorem table3366_entry067 :
    matchingVariables coloring3366 67 = table3366 67 := by rfl

theorem table3366_entry068 :
    matchingVariables coloring3366 68 = table3366 68 := by rfl

theorem table3366_entry069 :
    matchingVariables coloring3366 69 = table3366 69 := by rfl

theorem table3366_entry070 :
    matchingVariables coloring3366 70 = table3366 70 := by rfl

theorem table3366_entry071 :
    matchingVariables coloring3366 71 = table3366 71 := by rfl

theorem table3366_entry072 :
    matchingVariables coloring3366 72 = table3366 72 := by rfl

theorem table3366_entry073 :
    matchingVariables coloring3366 73 = table3366 73 := by rfl

theorem table3366_entry074 :
    matchingVariables coloring3366 74 = table3366 74 := by rfl

theorem table3366_entry075 :
    matchingVariables coloring3366 75 = table3366 75 := by rfl

theorem table3366_entry076 :
    matchingVariables coloring3366 76 = table3366 76 := by rfl

theorem table3366_entry077 :
    matchingVariables coloring3366 77 = table3366 77 := by rfl

theorem table3366_entry078 :
    matchingVariables coloring3366 78 = table3366 78 := by rfl

theorem table3366_entry079 :
    matchingVariables coloring3366 79 = table3366 79 := by rfl

theorem table3366_entry080 :
    matchingVariables coloring3366 80 = table3366 80 := by rfl

theorem table3366_entry081 :
    matchingVariables coloring3366 81 = table3366 81 := by rfl

theorem table3366_entry082 :
    matchingVariables coloring3366 82 = table3366 82 := by rfl

theorem table3366_entry083 :
    matchingVariables coloring3366 83 = table3366 83 := by rfl

theorem table3366_entry084 :
    matchingVariables coloring3366 84 = table3366 84 := by rfl

theorem table3366_entry085 :
    matchingVariables coloring3366 85 = table3366 85 := by rfl

theorem table3366_entry086 :
    matchingVariables coloring3366 86 = table3366 86 := by rfl

theorem table3366_entry087 :
    matchingVariables coloring3366 87 = table3366 87 := by rfl

theorem table3366_entry088 :
    matchingVariables coloring3366 88 = table3366 88 := by rfl

theorem table3366_entry089 :
    matchingVariables coloring3366 89 = table3366 89 := by rfl

theorem table3366_entry090 :
    matchingVariables coloring3366 90 = table3366 90 := by rfl

theorem table3366_entry091 :
    matchingVariables coloring3366 91 = table3366 91 := by rfl

theorem table3366_entry092 :
    matchingVariables coloring3366 92 = table3366 92 := by rfl

theorem table3366_entry093 :
    matchingVariables coloring3366 93 = table3366 93 := by rfl

theorem table3366_entry094 :
    matchingVariables coloring3366 94 = table3366 94 := by rfl

theorem table3366_entry095 :
    matchingVariables coloring3366 95 = table3366 95 := by rfl

theorem table3366_entry096 :
    matchingVariables coloring3366 96 = table3366 96 := by rfl

theorem table3366_entry097 :
    matchingVariables coloring3366 97 = table3366 97 := by rfl

theorem table3366_entry098 :
    matchingVariables coloring3366 98 = table3366 98 := by rfl

theorem table3366_entry099 :
    matchingVariables coloring3366 99 = table3366 99 := by rfl

theorem table3366_entry100 :
    matchingVariables coloring3366 100 = table3366 100 := by rfl

theorem table3366_entry101 :
    matchingVariables coloring3366 101 = table3366 101 := by rfl

theorem table3366_entry102 :
    matchingVariables coloring3366 102 = table3366 102 := by rfl

theorem table3366_entry103 :
    matchingVariables coloring3366 103 = table3366 103 := by rfl

theorem table3366_entry104 :
    matchingVariables coloring3366 104 = table3366 104 := by rfl

theorem table3366_complete : ∀ m, matchingVariables coloring3366 m = table3366 m := by
  intro m
  fin_cases m
  · exact table3366_entry000
  · exact table3366_entry001
  · exact table3366_entry002
  · exact table3366_entry003
  · exact table3366_entry004
  · exact table3366_entry005
  · exact table3366_entry006
  · exact table3366_entry007
  · exact table3366_entry008
  · exact table3366_entry009
  · exact table3366_entry010
  · exact table3366_entry011
  · exact table3366_entry012
  · exact table3366_entry013
  · exact table3366_entry014
  · exact table3366_entry015
  · exact table3366_entry016
  · exact table3366_entry017
  · exact table3366_entry018
  · exact table3366_entry019
  · exact table3366_entry020
  · exact table3366_entry021
  · exact table3366_entry022
  · exact table3366_entry023
  · exact table3366_entry024
  · exact table3366_entry025
  · exact table3366_entry026
  · exact table3366_entry027
  · exact table3366_entry028
  · exact table3366_entry029
  · exact table3366_entry030
  · exact table3366_entry031
  · exact table3366_entry032
  · exact table3366_entry033
  · exact table3366_entry034
  · exact table3366_entry035
  · exact table3366_entry036
  · exact table3366_entry037
  · exact table3366_entry038
  · exact table3366_entry039
  · exact table3366_entry040
  · exact table3366_entry041
  · exact table3366_entry042
  · exact table3366_entry043
  · exact table3366_entry044
  · exact table3366_entry045
  · exact table3366_entry046
  · exact table3366_entry047
  · exact table3366_entry048
  · exact table3366_entry049
  · exact table3366_entry050
  · exact table3366_entry051
  · exact table3366_entry052
  · exact table3366_entry053
  · exact table3366_entry054
  · exact table3366_entry055
  · exact table3366_entry056
  · exact table3366_entry057
  · exact table3366_entry058
  · exact table3366_entry059
  · exact table3366_entry060
  · exact table3366_entry061
  · exact table3366_entry062
  · exact table3366_entry063
  · exact table3366_entry064
  · exact table3366_entry065
  · exact table3366_entry066
  · exact table3366_entry067
  · exact table3366_entry068
  · exact table3366_entry069
  · exact table3366_entry070
  · exact table3366_entry071
  · exact table3366_entry072
  · exact table3366_entry073
  · exact table3366_entry074
  · exact table3366_entry075
  · exact table3366_entry076
  · exact table3366_entry077
  · exact table3366_entry078
  · exact table3366_entry079
  · exact table3366_entry080
  · exact table3366_entry081
  · exact table3366_entry082
  · exact table3366_entry083
  · exact table3366_entry084
  · exact table3366_entry085
  · exact table3366_entry086
  · exact table3366_entry087
  · exact table3366_entry088
  · exact table3366_entry089
  · exact table3366_entry090
  · exact table3366_entry091
  · exact table3366_entry092
  · exact table3366_entry093
  · exact table3366_entry094
  · exact table3366_entry095
  · exact table3366_entry096
  · exact table3366_entry097
  · exact table3366_entry098
  · exact table3366_entry099
  · exact table3366_entry100
  · exact table3366_entry101
  · exact table3366_entry102
  · exact table3366_entry103
  · exact table3366_entry104

#print axioms table3366_complete

def expanded3366 : Polynomial 143 := [(1, exponentOfVariables [0, 64, 105, 138]),
  (1, exponentOfVariables [0, 76, 87, 138]),
  (1, exponentOfVariables [11, 39, 87, 138]),
  (1, exponentOfVariables [11, 48, 87, 129]),
  (1, exponentOfVariables [11, 48, 97, 105]),
  (1, exponentOfVariables [19, 48, 76, 122])]

theorem table3366_expanded : tablePolynomial table3366 = expanded3366 := by
  rfl

theorem table3366_exponent00 :
    exponentOfVariables (n := 143) [0, 64, 105, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 64 then (1) else if i.val = 105 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3366_exponent01 :
    exponentOfVariables (n := 143) [0, 76, 87, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 76 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3366_exponent02 :
    exponentOfVariables (n := 143) [11, 39, 87, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 39 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3366_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 87, 129] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3366_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 97, 105] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 105 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3366_exponent05 :
    exponentOfVariables (n := 143) [19, 48, 76, 122] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 76 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3366_polynomial : expanded3366 = amplitude3366 := by
  simp only [expanded3366, amplitude3366, table3366_exponent00, table3366_exponent01, table3366_exponent02, table3366_exponent03, table3366_exponent04, table3366_exponent05]

theorem premiseCheck070 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3366)) p070 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
