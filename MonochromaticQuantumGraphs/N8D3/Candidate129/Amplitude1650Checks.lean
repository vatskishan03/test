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

def coloring1650 : Fin 8 → Fin 3 := ![0, 1, 0, 1, 2, 0, 2, 0]

def table1650 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 58, 104, 140] else
    if m.val = 1 then some [1, 58, 114, 125] else
    if m.val = 6 then some [1, 69, 87, 140] else
    if m.val = 21 then some [9, 41, 87, 140] else
    if m.val = 24 then some [9, 52, 87, 125] else
    if m.val = 40 then some [19, 52, 69, 121] else none

theorem table1650_entry000 :
    matchingVariables coloring1650 0 = table1650 0 := by rfl

theorem table1650_entry001 :
    matchingVariables coloring1650 1 = table1650 1 := by rfl

theorem table1650_entry002 :
    matchingVariables coloring1650 2 = table1650 2 := by rfl

theorem table1650_entry003 :
    matchingVariables coloring1650 3 = table1650 3 := by rfl

theorem table1650_entry004 :
    matchingVariables coloring1650 4 = table1650 4 := by rfl

theorem table1650_entry005 :
    matchingVariables coloring1650 5 = table1650 5 := by rfl

theorem table1650_entry006 :
    matchingVariables coloring1650 6 = table1650 6 := by rfl

theorem table1650_entry007 :
    matchingVariables coloring1650 7 = table1650 7 := by rfl

theorem table1650_entry008 :
    matchingVariables coloring1650 8 = table1650 8 := by rfl

theorem table1650_entry009 :
    matchingVariables coloring1650 9 = table1650 9 := by rfl

theorem table1650_entry010 :
    matchingVariables coloring1650 10 = table1650 10 := by rfl

theorem table1650_entry011 :
    matchingVariables coloring1650 11 = table1650 11 := by rfl

theorem table1650_entry012 :
    matchingVariables coloring1650 12 = table1650 12 := by rfl

theorem table1650_entry013 :
    matchingVariables coloring1650 13 = table1650 13 := by rfl

theorem table1650_entry014 :
    matchingVariables coloring1650 14 = table1650 14 := by rfl

theorem table1650_entry015 :
    matchingVariables coloring1650 15 = table1650 15 := by rfl

theorem table1650_entry016 :
    matchingVariables coloring1650 16 = table1650 16 := by rfl

theorem table1650_entry017 :
    matchingVariables coloring1650 17 = table1650 17 := by rfl

theorem table1650_entry018 :
    matchingVariables coloring1650 18 = table1650 18 := by rfl

theorem table1650_entry019 :
    matchingVariables coloring1650 19 = table1650 19 := by rfl

theorem table1650_entry020 :
    matchingVariables coloring1650 20 = table1650 20 := by rfl

theorem table1650_entry021 :
    matchingVariables coloring1650 21 = table1650 21 := by rfl

theorem table1650_entry022 :
    matchingVariables coloring1650 22 = table1650 22 := by rfl

theorem table1650_entry023 :
    matchingVariables coloring1650 23 = table1650 23 := by rfl

theorem table1650_entry024 :
    matchingVariables coloring1650 24 = table1650 24 := by rfl

theorem table1650_entry025 :
    matchingVariables coloring1650 25 = table1650 25 := by rfl

theorem table1650_entry026 :
    matchingVariables coloring1650 26 = table1650 26 := by rfl

theorem table1650_entry027 :
    matchingVariables coloring1650 27 = table1650 27 := by rfl

theorem table1650_entry028 :
    matchingVariables coloring1650 28 = table1650 28 := by rfl

theorem table1650_entry029 :
    matchingVariables coloring1650 29 = table1650 29 := by rfl

theorem table1650_entry030 :
    matchingVariables coloring1650 30 = table1650 30 := by rfl

theorem table1650_entry031 :
    matchingVariables coloring1650 31 = table1650 31 := by rfl

theorem table1650_entry032 :
    matchingVariables coloring1650 32 = table1650 32 := by rfl

theorem table1650_entry033 :
    matchingVariables coloring1650 33 = table1650 33 := by rfl

theorem table1650_entry034 :
    matchingVariables coloring1650 34 = table1650 34 := by rfl

theorem table1650_entry035 :
    matchingVariables coloring1650 35 = table1650 35 := by rfl

theorem table1650_entry036 :
    matchingVariables coloring1650 36 = table1650 36 := by rfl

theorem table1650_entry037 :
    matchingVariables coloring1650 37 = table1650 37 := by rfl

theorem table1650_entry038 :
    matchingVariables coloring1650 38 = table1650 38 := by rfl

theorem table1650_entry039 :
    matchingVariables coloring1650 39 = table1650 39 := by rfl

theorem table1650_entry040 :
    matchingVariables coloring1650 40 = table1650 40 := by rfl

theorem table1650_entry041 :
    matchingVariables coloring1650 41 = table1650 41 := by rfl

theorem table1650_entry042 :
    matchingVariables coloring1650 42 = table1650 42 := by rfl

theorem table1650_entry043 :
    matchingVariables coloring1650 43 = table1650 43 := by rfl

theorem table1650_entry044 :
    matchingVariables coloring1650 44 = table1650 44 := by rfl

theorem table1650_entry045 :
    matchingVariables coloring1650 45 = table1650 45 := by rfl

theorem table1650_entry046 :
    matchingVariables coloring1650 46 = table1650 46 := by rfl

theorem table1650_entry047 :
    matchingVariables coloring1650 47 = table1650 47 := by rfl

theorem table1650_entry048 :
    matchingVariables coloring1650 48 = table1650 48 := by rfl

theorem table1650_entry049 :
    matchingVariables coloring1650 49 = table1650 49 := by rfl

theorem table1650_entry050 :
    matchingVariables coloring1650 50 = table1650 50 := by rfl

theorem table1650_entry051 :
    matchingVariables coloring1650 51 = table1650 51 := by rfl

theorem table1650_entry052 :
    matchingVariables coloring1650 52 = table1650 52 := by rfl

theorem table1650_entry053 :
    matchingVariables coloring1650 53 = table1650 53 := by rfl

theorem table1650_entry054 :
    matchingVariables coloring1650 54 = table1650 54 := by rfl

theorem table1650_entry055 :
    matchingVariables coloring1650 55 = table1650 55 := by rfl

theorem table1650_entry056 :
    matchingVariables coloring1650 56 = table1650 56 := by rfl

theorem table1650_entry057 :
    matchingVariables coloring1650 57 = table1650 57 := by rfl

theorem table1650_entry058 :
    matchingVariables coloring1650 58 = table1650 58 := by rfl

theorem table1650_entry059 :
    matchingVariables coloring1650 59 = table1650 59 := by rfl

theorem table1650_entry060 :
    matchingVariables coloring1650 60 = table1650 60 := by rfl

theorem table1650_entry061 :
    matchingVariables coloring1650 61 = table1650 61 := by rfl

theorem table1650_entry062 :
    matchingVariables coloring1650 62 = table1650 62 := by rfl

theorem table1650_entry063 :
    matchingVariables coloring1650 63 = table1650 63 := by rfl

theorem table1650_entry064 :
    matchingVariables coloring1650 64 = table1650 64 := by rfl

theorem table1650_entry065 :
    matchingVariables coloring1650 65 = table1650 65 := by rfl

theorem table1650_entry066 :
    matchingVariables coloring1650 66 = table1650 66 := by rfl

theorem table1650_entry067 :
    matchingVariables coloring1650 67 = table1650 67 := by rfl

theorem table1650_entry068 :
    matchingVariables coloring1650 68 = table1650 68 := by rfl

theorem table1650_entry069 :
    matchingVariables coloring1650 69 = table1650 69 := by rfl

theorem table1650_entry070 :
    matchingVariables coloring1650 70 = table1650 70 := by rfl

theorem table1650_entry071 :
    matchingVariables coloring1650 71 = table1650 71 := by rfl

theorem table1650_entry072 :
    matchingVariables coloring1650 72 = table1650 72 := by rfl

theorem table1650_entry073 :
    matchingVariables coloring1650 73 = table1650 73 := by rfl

theorem table1650_entry074 :
    matchingVariables coloring1650 74 = table1650 74 := by rfl

theorem table1650_entry075 :
    matchingVariables coloring1650 75 = table1650 75 := by rfl

theorem table1650_entry076 :
    matchingVariables coloring1650 76 = table1650 76 := by rfl

theorem table1650_entry077 :
    matchingVariables coloring1650 77 = table1650 77 := by rfl

theorem table1650_entry078 :
    matchingVariables coloring1650 78 = table1650 78 := by rfl

theorem table1650_entry079 :
    matchingVariables coloring1650 79 = table1650 79 := by rfl

theorem table1650_entry080 :
    matchingVariables coloring1650 80 = table1650 80 := by rfl

theorem table1650_entry081 :
    matchingVariables coloring1650 81 = table1650 81 := by rfl

theorem table1650_entry082 :
    matchingVariables coloring1650 82 = table1650 82 := by rfl

theorem table1650_entry083 :
    matchingVariables coloring1650 83 = table1650 83 := by rfl

theorem table1650_entry084 :
    matchingVariables coloring1650 84 = table1650 84 := by rfl

theorem table1650_entry085 :
    matchingVariables coloring1650 85 = table1650 85 := by rfl

theorem table1650_entry086 :
    matchingVariables coloring1650 86 = table1650 86 := by rfl

theorem table1650_entry087 :
    matchingVariables coloring1650 87 = table1650 87 := by rfl

theorem table1650_entry088 :
    matchingVariables coloring1650 88 = table1650 88 := by rfl

theorem table1650_entry089 :
    matchingVariables coloring1650 89 = table1650 89 := by rfl

theorem table1650_entry090 :
    matchingVariables coloring1650 90 = table1650 90 := by rfl

theorem table1650_entry091 :
    matchingVariables coloring1650 91 = table1650 91 := by rfl

theorem table1650_entry092 :
    matchingVariables coloring1650 92 = table1650 92 := by rfl

theorem table1650_entry093 :
    matchingVariables coloring1650 93 = table1650 93 := by rfl

theorem table1650_entry094 :
    matchingVariables coloring1650 94 = table1650 94 := by rfl

theorem table1650_entry095 :
    matchingVariables coloring1650 95 = table1650 95 := by rfl

theorem table1650_entry096 :
    matchingVariables coloring1650 96 = table1650 96 := by rfl

theorem table1650_entry097 :
    matchingVariables coloring1650 97 = table1650 97 := by rfl

theorem table1650_entry098 :
    matchingVariables coloring1650 98 = table1650 98 := by rfl

theorem table1650_entry099 :
    matchingVariables coloring1650 99 = table1650 99 := by rfl

theorem table1650_entry100 :
    matchingVariables coloring1650 100 = table1650 100 := by rfl

theorem table1650_entry101 :
    matchingVariables coloring1650 101 = table1650 101 := by rfl

theorem table1650_entry102 :
    matchingVariables coloring1650 102 = table1650 102 := by rfl

theorem table1650_entry103 :
    matchingVariables coloring1650 103 = table1650 103 := by rfl

theorem table1650_entry104 :
    matchingVariables coloring1650 104 = table1650 104 := by rfl

theorem table1650_complete : ∀ m, matchingVariables coloring1650 m = table1650 m := by
  intro m
  fin_cases m
  · exact table1650_entry000
  · exact table1650_entry001
  · exact table1650_entry002
  · exact table1650_entry003
  · exact table1650_entry004
  · exact table1650_entry005
  · exact table1650_entry006
  · exact table1650_entry007
  · exact table1650_entry008
  · exact table1650_entry009
  · exact table1650_entry010
  · exact table1650_entry011
  · exact table1650_entry012
  · exact table1650_entry013
  · exact table1650_entry014
  · exact table1650_entry015
  · exact table1650_entry016
  · exact table1650_entry017
  · exact table1650_entry018
  · exact table1650_entry019
  · exact table1650_entry020
  · exact table1650_entry021
  · exact table1650_entry022
  · exact table1650_entry023
  · exact table1650_entry024
  · exact table1650_entry025
  · exact table1650_entry026
  · exact table1650_entry027
  · exact table1650_entry028
  · exact table1650_entry029
  · exact table1650_entry030
  · exact table1650_entry031
  · exact table1650_entry032
  · exact table1650_entry033
  · exact table1650_entry034
  · exact table1650_entry035
  · exact table1650_entry036
  · exact table1650_entry037
  · exact table1650_entry038
  · exact table1650_entry039
  · exact table1650_entry040
  · exact table1650_entry041
  · exact table1650_entry042
  · exact table1650_entry043
  · exact table1650_entry044
  · exact table1650_entry045
  · exact table1650_entry046
  · exact table1650_entry047
  · exact table1650_entry048
  · exact table1650_entry049
  · exact table1650_entry050
  · exact table1650_entry051
  · exact table1650_entry052
  · exact table1650_entry053
  · exact table1650_entry054
  · exact table1650_entry055
  · exact table1650_entry056
  · exact table1650_entry057
  · exact table1650_entry058
  · exact table1650_entry059
  · exact table1650_entry060
  · exact table1650_entry061
  · exact table1650_entry062
  · exact table1650_entry063
  · exact table1650_entry064
  · exact table1650_entry065
  · exact table1650_entry066
  · exact table1650_entry067
  · exact table1650_entry068
  · exact table1650_entry069
  · exact table1650_entry070
  · exact table1650_entry071
  · exact table1650_entry072
  · exact table1650_entry073
  · exact table1650_entry074
  · exact table1650_entry075
  · exact table1650_entry076
  · exact table1650_entry077
  · exact table1650_entry078
  · exact table1650_entry079
  · exact table1650_entry080
  · exact table1650_entry081
  · exact table1650_entry082
  · exact table1650_entry083
  · exact table1650_entry084
  · exact table1650_entry085
  · exact table1650_entry086
  · exact table1650_entry087
  · exact table1650_entry088
  · exact table1650_entry089
  · exact table1650_entry090
  · exact table1650_entry091
  · exact table1650_entry092
  · exact table1650_entry093
  · exact table1650_entry094
  · exact table1650_entry095
  · exact table1650_entry096
  · exact table1650_entry097
  · exact table1650_entry098
  · exact table1650_entry099
  · exact table1650_entry100
  · exact table1650_entry101
  · exact table1650_entry102
  · exact table1650_entry103
  · exact table1650_entry104

#print axioms table1650_complete

def expanded1650 : Polynomial 143 := [(1, exponentOfVariables [1, 58, 104, 140]),
  (1, exponentOfVariables [1, 58, 114, 125]),
  (1, exponentOfVariables [1, 69, 87, 140]),
  (1, exponentOfVariables [9, 41, 87, 140]),
  (1, exponentOfVariables [9, 52, 87, 125]),
  (1, exponentOfVariables [19, 52, 69, 121])]

theorem table1650_expanded : tablePolynomial table1650 = expanded1650 := by
  rfl

theorem table1650_exponent00 :
    exponentOfVariables (n := 143) [1, 58, 104, 140] =
      (fun i => if i.val = 1 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1650_exponent01 :
    exponentOfVariables (n := 143) [1, 58, 114, 125] =
      (fun i => if i.val = 1 then (1) else if i.val = 58 then (1) else if i.val = 114 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1650_exponent02 :
    exponentOfVariables (n := 143) [1, 69, 87, 140] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1650_exponent03 :
    exponentOfVariables (n := 143) [9, 41, 87, 140] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 87 then (1) else if i.val = 140 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1650_exponent04 :
    exponentOfVariables (n := 143) [9, 52, 87, 125] =
      (fun i => if i.val = 9 then (1) else if i.val = 52 then (1) else if i.val = 87 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1650_exponent05 :
    exponentOfVariables (n := 143) [19, 52, 69, 121] =
      (fun i => if i.val = 19 then (1) else if i.val = 52 then (1) else if i.val = 69 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table1650_polynomial : expanded1650 = amplitude1650 := by
  simp only [expanded1650, amplitude1650, table1650_exponent00, table1650_exponent01, table1650_exponent02, table1650_exponent03, table1650_exponent04, table1650_exponent05]

theorem premiseCheck090 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude1650)) p090 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
