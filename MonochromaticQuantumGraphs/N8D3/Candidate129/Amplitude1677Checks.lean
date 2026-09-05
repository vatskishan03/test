import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring1677 : Fin 8 → Fin 3 := ![0, 1, 0, 2, 2, 0, 2, 0]

def table1677 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 59, 104, 140] else
    if m.val = 1 then some [1, 59, 114, 125] else
    if m.val = 6 then some [1, 69, 90, 140] else
    if m.val = 21 then some [9, 41, 90, 140] else
    if m.val = 24 then some [9, 52, 90, 125] else
    if m.val = 40 then some [20, 52, 69, 121] else none

theorem table1677_entry000 :
    matchingVariables coloring1677 0 = table1677 0 := by rfl

theorem table1677_entry001 :
    matchingVariables coloring1677 1 = table1677 1 := by rfl

theorem table1677_entry002 :
    matchingVariables coloring1677 2 = table1677 2 := by rfl

theorem table1677_entry003 :
    matchingVariables coloring1677 3 = table1677 3 := by rfl

theorem table1677_entry004 :
    matchingVariables coloring1677 4 = table1677 4 := by rfl

theorem table1677_entry005 :
    matchingVariables coloring1677 5 = table1677 5 := by rfl

theorem table1677_entry006 :
    matchingVariables coloring1677 6 = table1677 6 := by rfl

theorem table1677_entry007 :
    matchingVariables coloring1677 7 = table1677 7 := by rfl

theorem table1677_entry008 :
    matchingVariables coloring1677 8 = table1677 8 := by rfl

theorem table1677_entry009 :
    matchingVariables coloring1677 9 = table1677 9 := by rfl

theorem table1677_entry010 :
    matchingVariables coloring1677 10 = table1677 10 := by rfl

theorem table1677_entry011 :
    matchingVariables coloring1677 11 = table1677 11 := by rfl

theorem table1677_entry012 :
    matchingVariables coloring1677 12 = table1677 12 := by rfl

theorem table1677_entry013 :
    matchingVariables coloring1677 13 = table1677 13 := by rfl

theorem table1677_entry014 :
    matchingVariables coloring1677 14 = table1677 14 := by rfl

theorem table1677_entry015 :
    matchingVariables coloring1677 15 = table1677 15 := by rfl

theorem table1677_entry016 :
    matchingVariables coloring1677 16 = table1677 16 := by rfl

theorem table1677_entry017 :
    matchingVariables coloring1677 17 = table1677 17 := by rfl

theorem table1677_entry018 :
    matchingVariables coloring1677 18 = table1677 18 := by rfl

theorem table1677_entry019 :
    matchingVariables coloring1677 19 = table1677 19 := by rfl

theorem table1677_entry020 :
    matchingVariables coloring1677 20 = table1677 20 := by rfl

theorem table1677_entry021 :
    matchingVariables coloring1677 21 = table1677 21 := by rfl

theorem table1677_entry022 :
    matchingVariables coloring1677 22 = table1677 22 := by rfl

theorem table1677_entry023 :
    matchingVariables coloring1677 23 = table1677 23 := by rfl

theorem table1677_entry024 :
    matchingVariables coloring1677 24 = table1677 24 := by rfl

theorem table1677_entry025 :
    matchingVariables coloring1677 25 = table1677 25 := by rfl

theorem table1677_entry026 :
    matchingVariables coloring1677 26 = table1677 26 := by rfl

theorem table1677_entry027 :
    matchingVariables coloring1677 27 = table1677 27 := by rfl

theorem table1677_entry028 :
    matchingVariables coloring1677 28 = table1677 28 := by rfl

theorem table1677_entry029 :
    matchingVariables coloring1677 29 = table1677 29 := by rfl

theorem table1677_entry030 :
    matchingVariables coloring1677 30 = table1677 30 := by rfl

theorem table1677_entry031 :
    matchingVariables coloring1677 31 = table1677 31 := by rfl

theorem table1677_entry032 :
    matchingVariables coloring1677 32 = table1677 32 := by rfl

theorem table1677_entry033 :
    matchingVariables coloring1677 33 = table1677 33 := by rfl

theorem table1677_entry034 :
    matchingVariables coloring1677 34 = table1677 34 := by rfl

theorem table1677_entry035 :
    matchingVariables coloring1677 35 = table1677 35 := by rfl

theorem table1677_entry036 :
    matchingVariables coloring1677 36 = table1677 36 := by rfl

theorem table1677_entry037 :
    matchingVariables coloring1677 37 = table1677 37 := by rfl

theorem table1677_entry038 :
    matchingVariables coloring1677 38 = table1677 38 := by rfl

theorem table1677_entry039 :
    matchingVariables coloring1677 39 = table1677 39 := by rfl

theorem table1677_entry040 :
    matchingVariables coloring1677 40 = table1677 40 := by rfl

theorem table1677_entry041 :
    matchingVariables coloring1677 41 = table1677 41 := by rfl

theorem table1677_entry042 :
    matchingVariables coloring1677 42 = table1677 42 := by rfl

theorem table1677_entry043 :
    matchingVariables coloring1677 43 = table1677 43 := by rfl

theorem table1677_entry044 :
    matchingVariables coloring1677 44 = table1677 44 := by rfl

theorem table1677_entry045 :
    matchingVariables coloring1677 45 = table1677 45 := by rfl

theorem table1677_entry046 :
    matchingVariables coloring1677 46 = table1677 46 := by rfl

theorem table1677_entry047 :
    matchingVariables coloring1677 47 = table1677 47 := by rfl

theorem table1677_entry048 :
    matchingVariables coloring1677 48 = table1677 48 := by rfl

theorem table1677_entry049 :
    matchingVariables coloring1677 49 = table1677 49 := by rfl

theorem table1677_entry050 :
    matchingVariables coloring1677 50 = table1677 50 := by rfl

theorem table1677_entry051 :
    matchingVariables coloring1677 51 = table1677 51 := by rfl

theorem table1677_entry052 :
    matchingVariables coloring1677 52 = table1677 52 := by rfl

theorem table1677_entry053 :
    matchingVariables coloring1677 53 = table1677 53 := by rfl

theorem table1677_entry054 :
    matchingVariables coloring1677 54 = table1677 54 := by rfl

theorem table1677_entry055 :
    matchingVariables coloring1677 55 = table1677 55 := by rfl

theorem table1677_entry056 :
    matchingVariables coloring1677 56 = table1677 56 := by rfl

theorem table1677_entry057 :
    matchingVariables coloring1677 57 = table1677 57 := by rfl

theorem table1677_entry058 :
    matchingVariables coloring1677 58 = table1677 58 := by rfl

theorem table1677_entry059 :
    matchingVariables coloring1677 59 = table1677 59 := by rfl

theorem table1677_entry060 :
    matchingVariables coloring1677 60 = table1677 60 := by rfl

theorem table1677_entry061 :
    matchingVariables coloring1677 61 = table1677 61 := by rfl

theorem table1677_entry062 :
    matchingVariables coloring1677 62 = table1677 62 := by rfl

theorem table1677_entry063 :
    matchingVariables coloring1677 63 = table1677 63 := by rfl

theorem table1677_entry064 :
    matchingVariables coloring1677 64 = table1677 64 := by rfl

theorem table1677_entry065 :
    matchingVariables coloring1677 65 = table1677 65 := by rfl

theorem table1677_entry066 :
    matchingVariables coloring1677 66 = table1677 66 := by rfl

theorem table1677_entry067 :
    matchingVariables coloring1677 67 = table1677 67 := by rfl

theorem table1677_entry068 :
    matchingVariables coloring1677 68 = table1677 68 := by rfl

theorem table1677_entry069 :
    matchingVariables coloring1677 69 = table1677 69 := by rfl

theorem table1677_entry070 :
    matchingVariables coloring1677 70 = table1677 70 := by rfl

theorem table1677_entry071 :
    matchingVariables coloring1677 71 = table1677 71 := by rfl

theorem table1677_entry072 :
    matchingVariables coloring1677 72 = table1677 72 := by rfl

theorem table1677_entry073 :
    matchingVariables coloring1677 73 = table1677 73 := by rfl

theorem table1677_entry074 :
    matchingVariables coloring1677 74 = table1677 74 := by rfl

theorem table1677_entry075 :
    matchingVariables coloring1677 75 = table1677 75 := by rfl

theorem table1677_entry076 :
    matchingVariables coloring1677 76 = table1677 76 := by rfl

theorem table1677_entry077 :
    matchingVariables coloring1677 77 = table1677 77 := by rfl

theorem table1677_entry078 :
    matchingVariables coloring1677 78 = table1677 78 := by rfl

theorem table1677_entry079 :
    matchingVariables coloring1677 79 = table1677 79 := by rfl

theorem table1677_entry080 :
    matchingVariables coloring1677 80 = table1677 80 := by rfl

theorem table1677_entry081 :
    matchingVariables coloring1677 81 = table1677 81 := by rfl

theorem table1677_entry082 :
    matchingVariables coloring1677 82 = table1677 82 := by rfl

theorem table1677_entry083 :
    matchingVariables coloring1677 83 = table1677 83 := by rfl

theorem table1677_entry084 :
    matchingVariables coloring1677 84 = table1677 84 := by rfl

theorem table1677_entry085 :
    matchingVariables coloring1677 85 = table1677 85 := by rfl

theorem table1677_entry086 :
    matchingVariables coloring1677 86 = table1677 86 := by rfl

theorem table1677_entry087 :
    matchingVariables coloring1677 87 = table1677 87 := by rfl

theorem table1677_entry088 :
    matchingVariables coloring1677 88 = table1677 88 := by rfl

theorem table1677_entry089 :
    matchingVariables coloring1677 89 = table1677 89 := by rfl

theorem table1677_entry090 :
    matchingVariables coloring1677 90 = table1677 90 := by rfl

theorem table1677_entry091 :
    matchingVariables coloring1677 91 = table1677 91 := by rfl

theorem table1677_entry092 :
    matchingVariables coloring1677 92 = table1677 92 := by rfl

theorem table1677_entry093 :
    matchingVariables coloring1677 93 = table1677 93 := by rfl

theorem table1677_entry094 :
    matchingVariables coloring1677 94 = table1677 94 := by rfl

theorem table1677_entry095 :
    matchingVariables coloring1677 95 = table1677 95 := by rfl

theorem table1677_entry096 :
    matchingVariables coloring1677 96 = table1677 96 := by rfl

theorem table1677_entry097 :
    matchingVariables coloring1677 97 = table1677 97 := by rfl

theorem table1677_entry098 :
    matchingVariables coloring1677 98 = table1677 98 := by rfl

theorem table1677_entry099 :
    matchingVariables coloring1677 99 = table1677 99 := by rfl

theorem table1677_entry100 :
    matchingVariables coloring1677 100 = table1677 100 := by rfl

theorem table1677_entry101 :
    matchingVariables coloring1677 101 = table1677 101 := by rfl

theorem table1677_entry102 :
    matchingVariables coloring1677 102 = table1677 102 := by rfl

theorem table1677_entry103 :
    matchingVariables coloring1677 103 = table1677 103 := by rfl

theorem table1677_entry104 :
    matchingVariables coloring1677 104 = table1677 104 := by rfl

theorem table1677_complete : ∀ m, matchingVariables coloring1677 m = table1677 m := by
  intro m
  fin_cases m
  · exact table1677_entry000
  · exact table1677_entry001
  · exact table1677_entry002
  · exact table1677_entry003
  · exact table1677_entry004
  · exact table1677_entry005
  · exact table1677_entry006
  · exact table1677_entry007
  · exact table1677_entry008
  · exact table1677_entry009
  · exact table1677_entry010
  · exact table1677_entry011
  · exact table1677_entry012
  · exact table1677_entry013
  · exact table1677_entry014
  · exact table1677_entry015
  · exact table1677_entry016
  · exact table1677_entry017
  · exact table1677_entry018
  · exact table1677_entry019
  · exact table1677_entry020
  · exact table1677_entry021
  · exact table1677_entry022
  · exact table1677_entry023
  · exact table1677_entry024
  · exact table1677_entry025
  · exact table1677_entry026
  · exact table1677_entry027
  · exact table1677_entry028
  · exact table1677_entry029
  · exact table1677_entry030
  · exact table1677_entry031
  · exact table1677_entry032
  · exact table1677_entry033
  · exact table1677_entry034
  · exact table1677_entry035
  · exact table1677_entry036
  · exact table1677_entry037
  · exact table1677_entry038
  · exact table1677_entry039
  · exact table1677_entry040
  · exact table1677_entry041
  · exact table1677_entry042
  · exact table1677_entry043
  · exact table1677_entry044
  · exact table1677_entry045
  · exact table1677_entry046
  · exact table1677_entry047
  · exact table1677_entry048
  · exact table1677_entry049
  · exact table1677_entry050
  · exact table1677_entry051
  · exact table1677_entry052
  · exact table1677_entry053
  · exact table1677_entry054
  · exact table1677_entry055
  · exact table1677_entry056
  · exact table1677_entry057
  · exact table1677_entry058
  · exact table1677_entry059
  · exact table1677_entry060
  · exact table1677_entry061
  · exact table1677_entry062
  · exact table1677_entry063
  · exact table1677_entry064
  · exact table1677_entry065
  · exact table1677_entry066
  · exact table1677_entry067
  · exact table1677_entry068
  · exact table1677_entry069
  · exact table1677_entry070
  · exact table1677_entry071
  · exact table1677_entry072
  · exact table1677_entry073
  · exact table1677_entry074
  · exact table1677_entry075
  · exact table1677_entry076
  · exact table1677_entry077
  · exact table1677_entry078
  · exact table1677_entry079
  · exact table1677_entry080
  · exact table1677_entry081
  · exact table1677_entry082
  · exact table1677_entry083
  · exact table1677_entry084
  · exact table1677_entry085
  · exact table1677_entry086
  · exact table1677_entry087
  · exact table1677_entry088
  · exact table1677_entry089
  · exact table1677_entry090
  · exact table1677_entry091
  · exact table1677_entry092
  · exact table1677_entry093
  · exact table1677_entry094
  · exact table1677_entry095
  · exact table1677_entry096
  · exact table1677_entry097
  · exact table1677_entry098
  · exact table1677_entry099
  · exact table1677_entry100
  · exact table1677_entry101
  · exact table1677_entry102
  · exact table1677_entry103
  · exact table1677_entry104

#print axioms table1677_complete

def expanded1677 : Polynomial 143 := [(1, exponentOfVariables [1, 59, 104, 140]),
  (1, exponentOfVariables [1, 59, 114, 125]),
  (1, exponentOfVariables [1, 69, 90, 140]),
  (1, exponentOfVariables [9, 41, 90, 140]),
  (1, exponentOfVariables [9, 52, 90, 125]),
  (1, exponentOfVariables [20, 52, 69, 121])]

theorem table1677_expanded : tablePolynomial table1677 = expanded1677 := by
  rfl

theorem table1677_exponent00 :
    exponentOfVariables (n := 143) [1, 59, 104, 140] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1677_exponent01 :
    exponentOfVariables (n := 143) [1, 59, 114, 125] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 114 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1677_exponent02 :
    exponentOfVariables (n := 143) [1, 69, 90, 140] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1677_exponent03 :
    exponentOfVariables (n := 143) [9, 41, 90, 140] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 90 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1677_exponent04 :
    exponentOfVariables (n := 143) [9, 52, 90, 125] =
      (fun i => if i.val = 9 then (1) else if i.val = 52 then (1) else if i.val = 90 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1677_exponent05 :
    exponentOfVariables (n := 143) [20, 52, 69, 121] =
      (fun i => if i.val = 20 then (1) else if i.val = 52 then (1) else if i.val = 69 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1677_polynomial : expanded1677 = amplitude1677 := by
  simp only [expanded1677, amplitude1677, table1677_exponent00, table1677_exponent01, table1677_exponent02, table1677_exponent03, table1677_exponent04, table1677_exponent05]

theorem premiseCheck091 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude1677)) p091 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
