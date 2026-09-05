import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportCombinatorics
import Mathlib.Tactic.FinCases
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring1679 : Fin 8 → Fin 3 := ![2, 1, 0, 2, 2, 0, 2, 0]

def table1679 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [7, 59, 104, 140] else
    if m.val = 1 then some [7, 59, 114, 125] else
    if m.val = 6 then some [7, 69, 90, 140] else
    if m.val = 21 then some [15, 41, 90, 140] else
    if m.val = 24 then some [15, 52, 90, 125] else
    if m.val = 40 then some [26, 52, 69, 121] else none

theorem table1679_entry000 :
    matchingVariables coloring1679 0 = table1679 0 := by rfl

theorem table1679_entry001 :
    matchingVariables coloring1679 1 = table1679 1 := by rfl

theorem table1679_entry002 :
    matchingVariables coloring1679 2 = table1679 2 := by rfl

theorem table1679_entry003 :
    matchingVariables coloring1679 3 = table1679 3 := by rfl

theorem table1679_entry004 :
    matchingVariables coloring1679 4 = table1679 4 := by rfl

theorem table1679_entry005 :
    matchingVariables coloring1679 5 = table1679 5 := by rfl

theorem table1679_entry006 :
    matchingVariables coloring1679 6 = table1679 6 := by rfl

theorem table1679_entry007 :
    matchingVariables coloring1679 7 = table1679 7 := by rfl

theorem table1679_entry008 :
    matchingVariables coloring1679 8 = table1679 8 := by rfl

theorem table1679_entry009 :
    matchingVariables coloring1679 9 = table1679 9 := by rfl

theorem table1679_entry010 :
    matchingVariables coloring1679 10 = table1679 10 := by rfl

theorem table1679_entry011 :
    matchingVariables coloring1679 11 = table1679 11 := by rfl

theorem table1679_entry012 :
    matchingVariables coloring1679 12 = table1679 12 := by rfl

theorem table1679_entry013 :
    matchingVariables coloring1679 13 = table1679 13 := by rfl

theorem table1679_entry014 :
    matchingVariables coloring1679 14 = table1679 14 := by rfl

theorem table1679_entry015 :
    matchingVariables coloring1679 15 = table1679 15 := by rfl

theorem table1679_entry016 :
    matchingVariables coloring1679 16 = table1679 16 := by rfl

theorem table1679_entry017 :
    matchingVariables coloring1679 17 = table1679 17 := by rfl

theorem table1679_entry018 :
    matchingVariables coloring1679 18 = table1679 18 := by rfl

theorem table1679_entry019 :
    matchingVariables coloring1679 19 = table1679 19 := by rfl

theorem table1679_entry020 :
    matchingVariables coloring1679 20 = table1679 20 := by rfl

theorem table1679_entry021 :
    matchingVariables coloring1679 21 = table1679 21 := by rfl

theorem table1679_entry022 :
    matchingVariables coloring1679 22 = table1679 22 := by rfl

theorem table1679_entry023 :
    matchingVariables coloring1679 23 = table1679 23 := by rfl

theorem table1679_entry024 :
    matchingVariables coloring1679 24 = table1679 24 := by rfl

theorem table1679_entry025 :
    matchingVariables coloring1679 25 = table1679 25 := by rfl

theorem table1679_entry026 :
    matchingVariables coloring1679 26 = table1679 26 := by rfl

theorem table1679_entry027 :
    matchingVariables coloring1679 27 = table1679 27 := by rfl

theorem table1679_entry028 :
    matchingVariables coloring1679 28 = table1679 28 := by rfl

theorem table1679_entry029 :
    matchingVariables coloring1679 29 = table1679 29 := by rfl

theorem table1679_entry030 :
    matchingVariables coloring1679 30 = table1679 30 := by rfl

theorem table1679_entry031 :
    matchingVariables coloring1679 31 = table1679 31 := by rfl

theorem table1679_entry032 :
    matchingVariables coloring1679 32 = table1679 32 := by rfl

theorem table1679_entry033 :
    matchingVariables coloring1679 33 = table1679 33 := by rfl

theorem table1679_entry034 :
    matchingVariables coloring1679 34 = table1679 34 := by rfl

theorem table1679_entry035 :
    matchingVariables coloring1679 35 = table1679 35 := by rfl

theorem table1679_entry036 :
    matchingVariables coloring1679 36 = table1679 36 := by rfl

theorem table1679_entry037 :
    matchingVariables coloring1679 37 = table1679 37 := by rfl

theorem table1679_entry038 :
    matchingVariables coloring1679 38 = table1679 38 := by rfl

theorem table1679_entry039 :
    matchingVariables coloring1679 39 = table1679 39 := by rfl

theorem table1679_entry040 :
    matchingVariables coloring1679 40 = table1679 40 := by rfl

theorem table1679_entry041 :
    matchingVariables coloring1679 41 = table1679 41 := by rfl

theorem table1679_entry042 :
    matchingVariables coloring1679 42 = table1679 42 := by rfl

theorem table1679_entry043 :
    matchingVariables coloring1679 43 = table1679 43 := by rfl

theorem table1679_entry044 :
    matchingVariables coloring1679 44 = table1679 44 := by rfl

theorem table1679_entry045 :
    matchingVariables coloring1679 45 = table1679 45 := by rfl

theorem table1679_entry046 :
    matchingVariables coloring1679 46 = table1679 46 := by rfl

theorem table1679_entry047 :
    matchingVariables coloring1679 47 = table1679 47 := by rfl

theorem table1679_entry048 :
    matchingVariables coloring1679 48 = table1679 48 := by rfl

theorem table1679_entry049 :
    matchingVariables coloring1679 49 = table1679 49 := by rfl

theorem table1679_entry050 :
    matchingVariables coloring1679 50 = table1679 50 := by rfl

theorem table1679_entry051 :
    matchingVariables coloring1679 51 = table1679 51 := by rfl

theorem table1679_entry052 :
    matchingVariables coloring1679 52 = table1679 52 := by rfl

theorem table1679_entry053 :
    matchingVariables coloring1679 53 = table1679 53 := by rfl

theorem table1679_entry054 :
    matchingVariables coloring1679 54 = table1679 54 := by rfl

theorem table1679_entry055 :
    matchingVariables coloring1679 55 = table1679 55 := by rfl

theorem table1679_entry056 :
    matchingVariables coloring1679 56 = table1679 56 := by rfl

theorem table1679_entry057 :
    matchingVariables coloring1679 57 = table1679 57 := by rfl

theorem table1679_entry058 :
    matchingVariables coloring1679 58 = table1679 58 := by rfl

theorem table1679_entry059 :
    matchingVariables coloring1679 59 = table1679 59 := by rfl

theorem table1679_entry060 :
    matchingVariables coloring1679 60 = table1679 60 := by rfl

theorem table1679_entry061 :
    matchingVariables coloring1679 61 = table1679 61 := by rfl

theorem table1679_entry062 :
    matchingVariables coloring1679 62 = table1679 62 := by rfl

theorem table1679_entry063 :
    matchingVariables coloring1679 63 = table1679 63 := by rfl

theorem table1679_entry064 :
    matchingVariables coloring1679 64 = table1679 64 := by rfl

theorem table1679_entry065 :
    matchingVariables coloring1679 65 = table1679 65 := by rfl

theorem table1679_entry066 :
    matchingVariables coloring1679 66 = table1679 66 := by rfl

theorem table1679_entry067 :
    matchingVariables coloring1679 67 = table1679 67 := by rfl

theorem table1679_entry068 :
    matchingVariables coloring1679 68 = table1679 68 := by rfl

theorem table1679_entry069 :
    matchingVariables coloring1679 69 = table1679 69 := by rfl

theorem table1679_entry070 :
    matchingVariables coloring1679 70 = table1679 70 := by rfl

theorem table1679_entry071 :
    matchingVariables coloring1679 71 = table1679 71 := by rfl

theorem table1679_entry072 :
    matchingVariables coloring1679 72 = table1679 72 := by rfl

theorem table1679_entry073 :
    matchingVariables coloring1679 73 = table1679 73 := by rfl

theorem table1679_entry074 :
    matchingVariables coloring1679 74 = table1679 74 := by rfl

theorem table1679_entry075 :
    matchingVariables coloring1679 75 = table1679 75 := by rfl

theorem table1679_entry076 :
    matchingVariables coloring1679 76 = table1679 76 := by rfl

theorem table1679_entry077 :
    matchingVariables coloring1679 77 = table1679 77 := by rfl

theorem table1679_entry078 :
    matchingVariables coloring1679 78 = table1679 78 := by rfl

theorem table1679_entry079 :
    matchingVariables coloring1679 79 = table1679 79 := by rfl

theorem table1679_entry080 :
    matchingVariables coloring1679 80 = table1679 80 := by rfl

theorem table1679_entry081 :
    matchingVariables coloring1679 81 = table1679 81 := by rfl

theorem table1679_entry082 :
    matchingVariables coloring1679 82 = table1679 82 := by rfl

theorem table1679_entry083 :
    matchingVariables coloring1679 83 = table1679 83 := by rfl

theorem table1679_entry084 :
    matchingVariables coloring1679 84 = table1679 84 := by rfl

theorem table1679_entry085 :
    matchingVariables coloring1679 85 = table1679 85 := by rfl

theorem table1679_entry086 :
    matchingVariables coloring1679 86 = table1679 86 := by rfl

theorem table1679_entry087 :
    matchingVariables coloring1679 87 = table1679 87 := by rfl

theorem table1679_entry088 :
    matchingVariables coloring1679 88 = table1679 88 := by rfl

theorem table1679_entry089 :
    matchingVariables coloring1679 89 = table1679 89 := by rfl

theorem table1679_entry090 :
    matchingVariables coloring1679 90 = table1679 90 := by rfl

theorem table1679_entry091 :
    matchingVariables coloring1679 91 = table1679 91 := by rfl

theorem table1679_entry092 :
    matchingVariables coloring1679 92 = table1679 92 := by rfl

theorem table1679_entry093 :
    matchingVariables coloring1679 93 = table1679 93 := by rfl

theorem table1679_entry094 :
    matchingVariables coloring1679 94 = table1679 94 := by rfl

theorem table1679_entry095 :
    matchingVariables coloring1679 95 = table1679 95 := by rfl

theorem table1679_entry096 :
    matchingVariables coloring1679 96 = table1679 96 := by rfl

theorem table1679_entry097 :
    matchingVariables coloring1679 97 = table1679 97 := by rfl

theorem table1679_entry098 :
    matchingVariables coloring1679 98 = table1679 98 := by rfl

theorem table1679_entry099 :
    matchingVariables coloring1679 99 = table1679 99 := by rfl

theorem table1679_entry100 :
    matchingVariables coloring1679 100 = table1679 100 := by rfl

theorem table1679_entry101 :
    matchingVariables coloring1679 101 = table1679 101 := by rfl

theorem table1679_entry102 :
    matchingVariables coloring1679 102 = table1679 102 := by rfl

theorem table1679_entry103 :
    matchingVariables coloring1679 103 = table1679 103 := by rfl

theorem table1679_entry104 :
    matchingVariables coloring1679 104 = table1679 104 := by rfl

theorem table1679_complete : ∀ m, matchingVariables coloring1679 m = table1679 m := by
  intro m
  fin_cases m
  · exact table1679_entry000
  · exact table1679_entry001
  · exact table1679_entry002
  · exact table1679_entry003
  · exact table1679_entry004
  · exact table1679_entry005
  · exact table1679_entry006
  · exact table1679_entry007
  · exact table1679_entry008
  · exact table1679_entry009
  · exact table1679_entry010
  · exact table1679_entry011
  · exact table1679_entry012
  · exact table1679_entry013
  · exact table1679_entry014
  · exact table1679_entry015
  · exact table1679_entry016
  · exact table1679_entry017
  · exact table1679_entry018
  · exact table1679_entry019
  · exact table1679_entry020
  · exact table1679_entry021
  · exact table1679_entry022
  · exact table1679_entry023
  · exact table1679_entry024
  · exact table1679_entry025
  · exact table1679_entry026
  · exact table1679_entry027
  · exact table1679_entry028
  · exact table1679_entry029
  · exact table1679_entry030
  · exact table1679_entry031
  · exact table1679_entry032
  · exact table1679_entry033
  · exact table1679_entry034
  · exact table1679_entry035
  · exact table1679_entry036
  · exact table1679_entry037
  · exact table1679_entry038
  · exact table1679_entry039
  · exact table1679_entry040
  · exact table1679_entry041
  · exact table1679_entry042
  · exact table1679_entry043
  · exact table1679_entry044
  · exact table1679_entry045
  · exact table1679_entry046
  · exact table1679_entry047
  · exact table1679_entry048
  · exact table1679_entry049
  · exact table1679_entry050
  · exact table1679_entry051
  · exact table1679_entry052
  · exact table1679_entry053
  · exact table1679_entry054
  · exact table1679_entry055
  · exact table1679_entry056
  · exact table1679_entry057
  · exact table1679_entry058
  · exact table1679_entry059
  · exact table1679_entry060
  · exact table1679_entry061
  · exact table1679_entry062
  · exact table1679_entry063
  · exact table1679_entry064
  · exact table1679_entry065
  · exact table1679_entry066
  · exact table1679_entry067
  · exact table1679_entry068
  · exact table1679_entry069
  · exact table1679_entry070
  · exact table1679_entry071
  · exact table1679_entry072
  · exact table1679_entry073
  · exact table1679_entry074
  · exact table1679_entry075
  · exact table1679_entry076
  · exact table1679_entry077
  · exact table1679_entry078
  · exact table1679_entry079
  · exact table1679_entry080
  · exact table1679_entry081
  · exact table1679_entry082
  · exact table1679_entry083
  · exact table1679_entry084
  · exact table1679_entry085
  · exact table1679_entry086
  · exact table1679_entry087
  · exact table1679_entry088
  · exact table1679_entry089
  · exact table1679_entry090
  · exact table1679_entry091
  · exact table1679_entry092
  · exact table1679_entry093
  · exact table1679_entry094
  · exact table1679_entry095
  · exact table1679_entry096
  · exact table1679_entry097
  · exact table1679_entry098
  · exact table1679_entry099
  · exact table1679_entry100
  · exact table1679_entry101
  · exact table1679_entry102
  · exact table1679_entry103
  · exact table1679_entry104

#print axioms table1679_complete

def expanded1679 : Polynomial 143 := [(1, exponentOfVariables [7, 59, 104, 140]),
  (1, exponentOfVariables [7, 59, 114, 125]),
  (1, exponentOfVariables [7, 69, 90, 140]),
  (1, exponentOfVariables [15, 41, 90, 140]),
  (1, exponentOfVariables [15, 52, 90, 125]),
  (1, exponentOfVariables [26, 52, 69, 121])]

theorem table1679_expanded : tablePolynomial table1679 = expanded1679 := by
  rfl

theorem table1679_exponent00 :
    exponentOfVariables (n := 143) [7, 59, 104, 140] =
      (fun i => if i.val = 7 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1679_exponent01 :
    exponentOfVariables (n := 143) [7, 59, 114, 125] =
      (fun i => if i.val = 7 then (1) else if i.val = 59 then (1) else if i.val = 114 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1679_exponent02 :
    exponentOfVariables (n := 143) [7, 69, 90, 140] =
      (fun i => if i.val = 7 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1679_exponent03 :
    exponentOfVariables (n := 143) [15, 41, 90, 140] =
      (fun i => if i.val = 15 then (1) else if i.val = 41 then (1) else if i.val = 90 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1679_exponent04 :
    exponentOfVariables (n := 143) [15, 52, 90, 125] =
      (fun i => if i.val = 15 then (1) else if i.val = 52 then (1) else if i.val = 90 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1679_exponent05 :
    exponentOfVariables (n := 143) [26, 52, 69, 121] =
      (fun i => if i.val = 26 then (1) else if i.val = 52 then (1) else if i.val = 69 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1679_polynomial : expanded1679 = amplitude1679 := by
  simp only [expanded1679, amplitude1679, table1679_exponent00, table1679_exponent01, table1679_exponent02, table1679_exponent03, table1679_exponent04, table1679_exponent05]

theorem premiseCheck095 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude1679)) p095 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
