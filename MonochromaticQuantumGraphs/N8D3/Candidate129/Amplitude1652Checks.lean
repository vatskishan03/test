import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring1652 : Fin 8 → Fin 3 := ![2, 1, 0, 1, 2, 0, 2, 0]

def table1652 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [7, 58, 104, 140] else
    if m.val = 1 then some [7, 58, 114, 125] else
    if m.val = 6 then some [7, 69, 87, 140] else
    if m.val = 21 then some [15, 41, 87, 140] else
    if m.val = 24 then some [15, 52, 87, 125] else
    if m.val = 40 then some [25, 52, 69, 121] else none

theorem table1652_entry000 :
    matchingVariables coloring1652 0 = table1652 0 := by rfl

theorem table1652_entry001 :
    matchingVariables coloring1652 1 = table1652 1 := by rfl

theorem table1652_entry002 :
    matchingVariables coloring1652 2 = table1652 2 := by rfl

theorem table1652_entry003 :
    matchingVariables coloring1652 3 = table1652 3 := by rfl

theorem table1652_entry004 :
    matchingVariables coloring1652 4 = table1652 4 := by rfl

theorem table1652_entry005 :
    matchingVariables coloring1652 5 = table1652 5 := by rfl

theorem table1652_entry006 :
    matchingVariables coloring1652 6 = table1652 6 := by rfl

theorem table1652_entry007 :
    matchingVariables coloring1652 7 = table1652 7 := by rfl

theorem table1652_entry008 :
    matchingVariables coloring1652 8 = table1652 8 := by rfl

theorem table1652_entry009 :
    matchingVariables coloring1652 9 = table1652 9 := by rfl

theorem table1652_entry010 :
    matchingVariables coloring1652 10 = table1652 10 := by rfl

theorem table1652_entry011 :
    matchingVariables coloring1652 11 = table1652 11 := by rfl

theorem table1652_entry012 :
    matchingVariables coloring1652 12 = table1652 12 := by rfl

theorem table1652_entry013 :
    matchingVariables coloring1652 13 = table1652 13 := by rfl

theorem table1652_entry014 :
    matchingVariables coloring1652 14 = table1652 14 := by rfl

theorem table1652_entry015 :
    matchingVariables coloring1652 15 = table1652 15 := by rfl

theorem table1652_entry016 :
    matchingVariables coloring1652 16 = table1652 16 := by rfl

theorem table1652_entry017 :
    matchingVariables coloring1652 17 = table1652 17 := by rfl

theorem table1652_entry018 :
    matchingVariables coloring1652 18 = table1652 18 := by rfl

theorem table1652_entry019 :
    matchingVariables coloring1652 19 = table1652 19 := by rfl

theorem table1652_entry020 :
    matchingVariables coloring1652 20 = table1652 20 := by rfl

theorem table1652_entry021 :
    matchingVariables coloring1652 21 = table1652 21 := by rfl

theorem table1652_entry022 :
    matchingVariables coloring1652 22 = table1652 22 := by rfl

theorem table1652_entry023 :
    matchingVariables coloring1652 23 = table1652 23 := by rfl

theorem table1652_entry024 :
    matchingVariables coloring1652 24 = table1652 24 := by rfl

theorem table1652_entry025 :
    matchingVariables coloring1652 25 = table1652 25 := by rfl

theorem table1652_entry026 :
    matchingVariables coloring1652 26 = table1652 26 := by rfl

theorem table1652_entry027 :
    matchingVariables coloring1652 27 = table1652 27 := by rfl

theorem table1652_entry028 :
    matchingVariables coloring1652 28 = table1652 28 := by rfl

theorem table1652_entry029 :
    matchingVariables coloring1652 29 = table1652 29 := by rfl

theorem table1652_entry030 :
    matchingVariables coloring1652 30 = table1652 30 := by rfl

theorem table1652_entry031 :
    matchingVariables coloring1652 31 = table1652 31 := by rfl

theorem table1652_entry032 :
    matchingVariables coloring1652 32 = table1652 32 := by rfl

theorem table1652_entry033 :
    matchingVariables coloring1652 33 = table1652 33 := by rfl

theorem table1652_entry034 :
    matchingVariables coloring1652 34 = table1652 34 := by rfl

theorem table1652_entry035 :
    matchingVariables coloring1652 35 = table1652 35 := by rfl

theorem table1652_entry036 :
    matchingVariables coloring1652 36 = table1652 36 := by rfl

theorem table1652_entry037 :
    matchingVariables coloring1652 37 = table1652 37 := by rfl

theorem table1652_entry038 :
    matchingVariables coloring1652 38 = table1652 38 := by rfl

theorem table1652_entry039 :
    matchingVariables coloring1652 39 = table1652 39 := by rfl

theorem table1652_entry040 :
    matchingVariables coloring1652 40 = table1652 40 := by rfl

theorem table1652_entry041 :
    matchingVariables coloring1652 41 = table1652 41 := by rfl

theorem table1652_entry042 :
    matchingVariables coloring1652 42 = table1652 42 := by rfl

theorem table1652_entry043 :
    matchingVariables coloring1652 43 = table1652 43 := by rfl

theorem table1652_entry044 :
    matchingVariables coloring1652 44 = table1652 44 := by rfl

theorem table1652_entry045 :
    matchingVariables coloring1652 45 = table1652 45 := by rfl

theorem table1652_entry046 :
    matchingVariables coloring1652 46 = table1652 46 := by rfl

theorem table1652_entry047 :
    matchingVariables coloring1652 47 = table1652 47 := by rfl

theorem table1652_entry048 :
    matchingVariables coloring1652 48 = table1652 48 := by rfl

theorem table1652_entry049 :
    matchingVariables coloring1652 49 = table1652 49 := by rfl

theorem table1652_entry050 :
    matchingVariables coloring1652 50 = table1652 50 := by rfl

theorem table1652_entry051 :
    matchingVariables coloring1652 51 = table1652 51 := by rfl

theorem table1652_entry052 :
    matchingVariables coloring1652 52 = table1652 52 := by rfl

theorem table1652_entry053 :
    matchingVariables coloring1652 53 = table1652 53 := by rfl

theorem table1652_entry054 :
    matchingVariables coloring1652 54 = table1652 54 := by rfl

theorem table1652_entry055 :
    matchingVariables coloring1652 55 = table1652 55 := by rfl

theorem table1652_entry056 :
    matchingVariables coloring1652 56 = table1652 56 := by rfl

theorem table1652_entry057 :
    matchingVariables coloring1652 57 = table1652 57 := by rfl

theorem table1652_entry058 :
    matchingVariables coloring1652 58 = table1652 58 := by rfl

theorem table1652_entry059 :
    matchingVariables coloring1652 59 = table1652 59 := by rfl

theorem table1652_entry060 :
    matchingVariables coloring1652 60 = table1652 60 := by rfl

theorem table1652_entry061 :
    matchingVariables coloring1652 61 = table1652 61 := by rfl

theorem table1652_entry062 :
    matchingVariables coloring1652 62 = table1652 62 := by rfl

theorem table1652_entry063 :
    matchingVariables coloring1652 63 = table1652 63 := by rfl

theorem table1652_entry064 :
    matchingVariables coloring1652 64 = table1652 64 := by rfl

theorem table1652_entry065 :
    matchingVariables coloring1652 65 = table1652 65 := by rfl

theorem table1652_entry066 :
    matchingVariables coloring1652 66 = table1652 66 := by rfl

theorem table1652_entry067 :
    matchingVariables coloring1652 67 = table1652 67 := by rfl

theorem table1652_entry068 :
    matchingVariables coloring1652 68 = table1652 68 := by rfl

theorem table1652_entry069 :
    matchingVariables coloring1652 69 = table1652 69 := by rfl

theorem table1652_entry070 :
    matchingVariables coloring1652 70 = table1652 70 := by rfl

theorem table1652_entry071 :
    matchingVariables coloring1652 71 = table1652 71 := by rfl

theorem table1652_entry072 :
    matchingVariables coloring1652 72 = table1652 72 := by rfl

theorem table1652_entry073 :
    matchingVariables coloring1652 73 = table1652 73 := by rfl

theorem table1652_entry074 :
    matchingVariables coloring1652 74 = table1652 74 := by rfl

theorem table1652_entry075 :
    matchingVariables coloring1652 75 = table1652 75 := by rfl

theorem table1652_entry076 :
    matchingVariables coloring1652 76 = table1652 76 := by rfl

theorem table1652_entry077 :
    matchingVariables coloring1652 77 = table1652 77 := by rfl

theorem table1652_entry078 :
    matchingVariables coloring1652 78 = table1652 78 := by rfl

theorem table1652_entry079 :
    matchingVariables coloring1652 79 = table1652 79 := by rfl

theorem table1652_entry080 :
    matchingVariables coloring1652 80 = table1652 80 := by rfl

theorem table1652_entry081 :
    matchingVariables coloring1652 81 = table1652 81 := by rfl

theorem table1652_entry082 :
    matchingVariables coloring1652 82 = table1652 82 := by rfl

theorem table1652_entry083 :
    matchingVariables coloring1652 83 = table1652 83 := by rfl

theorem table1652_entry084 :
    matchingVariables coloring1652 84 = table1652 84 := by rfl

theorem table1652_entry085 :
    matchingVariables coloring1652 85 = table1652 85 := by rfl

theorem table1652_entry086 :
    matchingVariables coloring1652 86 = table1652 86 := by rfl

theorem table1652_entry087 :
    matchingVariables coloring1652 87 = table1652 87 := by rfl

theorem table1652_entry088 :
    matchingVariables coloring1652 88 = table1652 88 := by rfl

theorem table1652_entry089 :
    matchingVariables coloring1652 89 = table1652 89 := by rfl

theorem table1652_entry090 :
    matchingVariables coloring1652 90 = table1652 90 := by rfl

theorem table1652_entry091 :
    matchingVariables coloring1652 91 = table1652 91 := by rfl

theorem table1652_entry092 :
    matchingVariables coloring1652 92 = table1652 92 := by rfl

theorem table1652_entry093 :
    matchingVariables coloring1652 93 = table1652 93 := by rfl

theorem table1652_entry094 :
    matchingVariables coloring1652 94 = table1652 94 := by rfl

theorem table1652_entry095 :
    matchingVariables coloring1652 95 = table1652 95 := by rfl

theorem table1652_entry096 :
    matchingVariables coloring1652 96 = table1652 96 := by rfl

theorem table1652_entry097 :
    matchingVariables coloring1652 97 = table1652 97 := by rfl

theorem table1652_entry098 :
    matchingVariables coloring1652 98 = table1652 98 := by rfl

theorem table1652_entry099 :
    matchingVariables coloring1652 99 = table1652 99 := by rfl

theorem table1652_entry100 :
    matchingVariables coloring1652 100 = table1652 100 := by rfl

theorem table1652_entry101 :
    matchingVariables coloring1652 101 = table1652 101 := by rfl

theorem table1652_entry102 :
    matchingVariables coloring1652 102 = table1652 102 := by rfl

theorem table1652_entry103 :
    matchingVariables coloring1652 103 = table1652 103 := by rfl

theorem table1652_entry104 :
    matchingVariables coloring1652 104 = table1652 104 := by rfl

theorem table1652_complete : ∀ m, matchingVariables coloring1652 m = table1652 m := by
  intro m
  fin_cases m
  · exact table1652_entry000
  · exact table1652_entry001
  · exact table1652_entry002
  · exact table1652_entry003
  · exact table1652_entry004
  · exact table1652_entry005
  · exact table1652_entry006
  · exact table1652_entry007
  · exact table1652_entry008
  · exact table1652_entry009
  · exact table1652_entry010
  · exact table1652_entry011
  · exact table1652_entry012
  · exact table1652_entry013
  · exact table1652_entry014
  · exact table1652_entry015
  · exact table1652_entry016
  · exact table1652_entry017
  · exact table1652_entry018
  · exact table1652_entry019
  · exact table1652_entry020
  · exact table1652_entry021
  · exact table1652_entry022
  · exact table1652_entry023
  · exact table1652_entry024
  · exact table1652_entry025
  · exact table1652_entry026
  · exact table1652_entry027
  · exact table1652_entry028
  · exact table1652_entry029
  · exact table1652_entry030
  · exact table1652_entry031
  · exact table1652_entry032
  · exact table1652_entry033
  · exact table1652_entry034
  · exact table1652_entry035
  · exact table1652_entry036
  · exact table1652_entry037
  · exact table1652_entry038
  · exact table1652_entry039
  · exact table1652_entry040
  · exact table1652_entry041
  · exact table1652_entry042
  · exact table1652_entry043
  · exact table1652_entry044
  · exact table1652_entry045
  · exact table1652_entry046
  · exact table1652_entry047
  · exact table1652_entry048
  · exact table1652_entry049
  · exact table1652_entry050
  · exact table1652_entry051
  · exact table1652_entry052
  · exact table1652_entry053
  · exact table1652_entry054
  · exact table1652_entry055
  · exact table1652_entry056
  · exact table1652_entry057
  · exact table1652_entry058
  · exact table1652_entry059
  · exact table1652_entry060
  · exact table1652_entry061
  · exact table1652_entry062
  · exact table1652_entry063
  · exact table1652_entry064
  · exact table1652_entry065
  · exact table1652_entry066
  · exact table1652_entry067
  · exact table1652_entry068
  · exact table1652_entry069
  · exact table1652_entry070
  · exact table1652_entry071
  · exact table1652_entry072
  · exact table1652_entry073
  · exact table1652_entry074
  · exact table1652_entry075
  · exact table1652_entry076
  · exact table1652_entry077
  · exact table1652_entry078
  · exact table1652_entry079
  · exact table1652_entry080
  · exact table1652_entry081
  · exact table1652_entry082
  · exact table1652_entry083
  · exact table1652_entry084
  · exact table1652_entry085
  · exact table1652_entry086
  · exact table1652_entry087
  · exact table1652_entry088
  · exact table1652_entry089
  · exact table1652_entry090
  · exact table1652_entry091
  · exact table1652_entry092
  · exact table1652_entry093
  · exact table1652_entry094
  · exact table1652_entry095
  · exact table1652_entry096
  · exact table1652_entry097
  · exact table1652_entry098
  · exact table1652_entry099
  · exact table1652_entry100
  · exact table1652_entry101
  · exact table1652_entry102
  · exact table1652_entry103
  · exact table1652_entry104

#print axioms table1652_complete

def expanded1652 : Polynomial 143 := [(1, exponentOfVariables [7, 58, 104, 140]),
  (1, exponentOfVariables [7, 58, 114, 125]),
  (1, exponentOfVariables [7, 69, 87, 140]),
  (1, exponentOfVariables [15, 41, 87, 140]),
  (1, exponentOfVariables [15, 52, 87, 125]),
  (1, exponentOfVariables [25, 52, 69, 121])]

theorem table1652_expanded : tablePolynomial table1652 = expanded1652 := by
  rfl

theorem table1652_exponent00 :
    exponentOfVariables (n := 143) [7, 58, 104, 140] =
      (fun i => if i.val = 7 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1652_exponent01 :
    exponentOfVariables (n := 143) [7, 58, 114, 125] =
      (fun i => if i.val = 7 then (1) else if i.val = 58 then (1) else if i.val = 114 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1652_exponent02 :
    exponentOfVariables (n := 143) [7, 69, 87, 140] =
      (fun i => if i.val = 7 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1652_exponent03 :
    exponentOfVariables (n := 143) [15, 41, 87, 140] =
      (fun i => if i.val = 15 then (1) else if i.val = 41 then (1) else if i.val = 87 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1652_exponent04 :
    exponentOfVariables (n := 143) [15, 52, 87, 125] =
      (fun i => if i.val = 15 then (1) else if i.val = 52 then (1) else if i.val = 87 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1652_exponent05 :
    exponentOfVariables (n := 143) [25, 52, 69, 121] =
      (fun i => if i.val = 25 then (1) else if i.val = 52 then (1) else if i.val = 69 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1652_polynomial : expanded1652 = amplitude1652 := by
  simp only [expanded1652, amplitude1652, table1652_exponent00, table1652_exponent01, table1652_exponent02, table1652_exponent03, table1652_exponent04, table1652_exponent05]

theorem premiseCheck094 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude1652)) p094 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
