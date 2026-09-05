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

def coloring5292 : Fin 8 → Fin 3 := ![0, 0, 0, 1, 2, 0, 1, 2]

def table5292 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 58, 104, 139] else
    if m.val = 6 then some [0, 69, 87, 139] else
    if m.val = 21 then some [9, 38, 87, 139] else
    if m.val = 24 then some [9, 48, 87, 127] else
    if m.val = 40 then some [19, 48, 69, 123] else
    if m.val = 41 then some [19, 48, 79, 104] else none

theorem table5292_entry000 :
    matchingVariables coloring5292 0 = table5292 0 := by rfl

theorem table5292_entry001 :
    matchingVariables coloring5292 1 = table5292 1 := by rfl

theorem table5292_entry002 :
    matchingVariables coloring5292 2 = table5292 2 := by rfl

theorem table5292_entry003 :
    matchingVariables coloring5292 3 = table5292 3 := by rfl

theorem table5292_entry004 :
    matchingVariables coloring5292 4 = table5292 4 := by rfl

theorem table5292_entry005 :
    matchingVariables coloring5292 5 = table5292 5 := by rfl

theorem table5292_entry006 :
    matchingVariables coloring5292 6 = table5292 6 := by rfl

theorem table5292_entry007 :
    matchingVariables coloring5292 7 = table5292 7 := by rfl

theorem table5292_entry008 :
    matchingVariables coloring5292 8 = table5292 8 := by rfl

theorem table5292_entry009 :
    matchingVariables coloring5292 9 = table5292 9 := by rfl

theorem table5292_entry010 :
    matchingVariables coloring5292 10 = table5292 10 := by rfl

theorem table5292_entry011 :
    matchingVariables coloring5292 11 = table5292 11 := by rfl

theorem table5292_entry012 :
    matchingVariables coloring5292 12 = table5292 12 := by rfl

theorem table5292_entry013 :
    matchingVariables coloring5292 13 = table5292 13 := by rfl

theorem table5292_entry014 :
    matchingVariables coloring5292 14 = table5292 14 := by rfl

theorem table5292_entry015 :
    matchingVariables coloring5292 15 = table5292 15 := by rfl

theorem table5292_entry016 :
    matchingVariables coloring5292 16 = table5292 16 := by rfl

theorem table5292_entry017 :
    matchingVariables coloring5292 17 = table5292 17 := by rfl

theorem table5292_entry018 :
    matchingVariables coloring5292 18 = table5292 18 := by rfl

theorem table5292_entry019 :
    matchingVariables coloring5292 19 = table5292 19 := by rfl

theorem table5292_entry020 :
    matchingVariables coloring5292 20 = table5292 20 := by rfl

theorem table5292_entry021 :
    matchingVariables coloring5292 21 = table5292 21 := by rfl

theorem table5292_entry022 :
    matchingVariables coloring5292 22 = table5292 22 := by rfl

theorem table5292_entry023 :
    matchingVariables coloring5292 23 = table5292 23 := by rfl

theorem table5292_entry024 :
    matchingVariables coloring5292 24 = table5292 24 := by rfl

theorem table5292_entry025 :
    matchingVariables coloring5292 25 = table5292 25 := by rfl

theorem table5292_entry026 :
    matchingVariables coloring5292 26 = table5292 26 := by rfl

theorem table5292_entry027 :
    matchingVariables coloring5292 27 = table5292 27 := by rfl

theorem table5292_entry028 :
    matchingVariables coloring5292 28 = table5292 28 := by rfl

theorem table5292_entry029 :
    matchingVariables coloring5292 29 = table5292 29 := by rfl

theorem table5292_entry030 :
    matchingVariables coloring5292 30 = table5292 30 := by rfl

theorem table5292_entry031 :
    matchingVariables coloring5292 31 = table5292 31 := by rfl

theorem table5292_entry032 :
    matchingVariables coloring5292 32 = table5292 32 := by rfl

theorem table5292_entry033 :
    matchingVariables coloring5292 33 = table5292 33 := by rfl

theorem table5292_entry034 :
    matchingVariables coloring5292 34 = table5292 34 := by rfl

theorem table5292_entry035 :
    matchingVariables coloring5292 35 = table5292 35 := by rfl

theorem table5292_entry036 :
    matchingVariables coloring5292 36 = table5292 36 := by rfl

theorem table5292_entry037 :
    matchingVariables coloring5292 37 = table5292 37 := by rfl

theorem table5292_entry038 :
    matchingVariables coloring5292 38 = table5292 38 := by rfl

theorem table5292_entry039 :
    matchingVariables coloring5292 39 = table5292 39 := by rfl

theorem table5292_entry040 :
    matchingVariables coloring5292 40 = table5292 40 := by rfl

theorem table5292_entry041 :
    matchingVariables coloring5292 41 = table5292 41 := by rfl

theorem table5292_entry042 :
    matchingVariables coloring5292 42 = table5292 42 := by rfl

theorem table5292_entry043 :
    matchingVariables coloring5292 43 = table5292 43 := by rfl

theorem table5292_entry044 :
    matchingVariables coloring5292 44 = table5292 44 := by rfl

theorem table5292_entry045 :
    matchingVariables coloring5292 45 = table5292 45 := by rfl

theorem table5292_entry046 :
    matchingVariables coloring5292 46 = table5292 46 := by rfl

theorem table5292_entry047 :
    matchingVariables coloring5292 47 = table5292 47 := by rfl

theorem table5292_entry048 :
    matchingVariables coloring5292 48 = table5292 48 := by rfl

theorem table5292_entry049 :
    matchingVariables coloring5292 49 = table5292 49 := by rfl

theorem table5292_entry050 :
    matchingVariables coloring5292 50 = table5292 50 := by rfl

theorem table5292_entry051 :
    matchingVariables coloring5292 51 = table5292 51 := by rfl

theorem table5292_entry052 :
    matchingVariables coloring5292 52 = table5292 52 := by rfl

theorem table5292_entry053 :
    matchingVariables coloring5292 53 = table5292 53 := by rfl

theorem table5292_entry054 :
    matchingVariables coloring5292 54 = table5292 54 := by rfl

theorem table5292_entry055 :
    matchingVariables coloring5292 55 = table5292 55 := by rfl

theorem table5292_entry056 :
    matchingVariables coloring5292 56 = table5292 56 := by rfl

theorem table5292_entry057 :
    matchingVariables coloring5292 57 = table5292 57 := by rfl

theorem table5292_entry058 :
    matchingVariables coloring5292 58 = table5292 58 := by rfl

theorem table5292_entry059 :
    matchingVariables coloring5292 59 = table5292 59 := by rfl

theorem table5292_entry060 :
    matchingVariables coloring5292 60 = table5292 60 := by rfl

theorem table5292_entry061 :
    matchingVariables coloring5292 61 = table5292 61 := by rfl

theorem table5292_entry062 :
    matchingVariables coloring5292 62 = table5292 62 := by rfl

theorem table5292_entry063 :
    matchingVariables coloring5292 63 = table5292 63 := by rfl

theorem table5292_entry064 :
    matchingVariables coloring5292 64 = table5292 64 := by rfl

theorem table5292_entry065 :
    matchingVariables coloring5292 65 = table5292 65 := by rfl

theorem table5292_entry066 :
    matchingVariables coloring5292 66 = table5292 66 := by rfl

theorem table5292_entry067 :
    matchingVariables coloring5292 67 = table5292 67 := by rfl

theorem table5292_entry068 :
    matchingVariables coloring5292 68 = table5292 68 := by rfl

theorem table5292_entry069 :
    matchingVariables coloring5292 69 = table5292 69 := by rfl

theorem table5292_entry070 :
    matchingVariables coloring5292 70 = table5292 70 := by rfl

theorem table5292_entry071 :
    matchingVariables coloring5292 71 = table5292 71 := by rfl

theorem table5292_entry072 :
    matchingVariables coloring5292 72 = table5292 72 := by rfl

theorem table5292_entry073 :
    matchingVariables coloring5292 73 = table5292 73 := by rfl

theorem table5292_entry074 :
    matchingVariables coloring5292 74 = table5292 74 := by rfl

theorem table5292_entry075 :
    matchingVariables coloring5292 75 = table5292 75 := by rfl

theorem table5292_entry076 :
    matchingVariables coloring5292 76 = table5292 76 := by rfl

theorem table5292_entry077 :
    matchingVariables coloring5292 77 = table5292 77 := by rfl

theorem table5292_entry078 :
    matchingVariables coloring5292 78 = table5292 78 := by rfl

theorem table5292_entry079 :
    matchingVariables coloring5292 79 = table5292 79 := by rfl

theorem table5292_entry080 :
    matchingVariables coloring5292 80 = table5292 80 := by rfl

theorem table5292_entry081 :
    matchingVariables coloring5292 81 = table5292 81 := by rfl

theorem table5292_entry082 :
    matchingVariables coloring5292 82 = table5292 82 := by rfl

theorem table5292_entry083 :
    matchingVariables coloring5292 83 = table5292 83 := by rfl

theorem table5292_entry084 :
    matchingVariables coloring5292 84 = table5292 84 := by rfl

theorem table5292_entry085 :
    matchingVariables coloring5292 85 = table5292 85 := by rfl

theorem table5292_entry086 :
    matchingVariables coloring5292 86 = table5292 86 := by rfl

theorem table5292_entry087 :
    matchingVariables coloring5292 87 = table5292 87 := by rfl

theorem table5292_entry088 :
    matchingVariables coloring5292 88 = table5292 88 := by rfl

theorem table5292_entry089 :
    matchingVariables coloring5292 89 = table5292 89 := by rfl

theorem table5292_entry090 :
    matchingVariables coloring5292 90 = table5292 90 := by rfl

theorem table5292_entry091 :
    matchingVariables coloring5292 91 = table5292 91 := by rfl

theorem table5292_entry092 :
    matchingVariables coloring5292 92 = table5292 92 := by rfl

theorem table5292_entry093 :
    matchingVariables coloring5292 93 = table5292 93 := by rfl

theorem table5292_entry094 :
    matchingVariables coloring5292 94 = table5292 94 := by rfl

theorem table5292_entry095 :
    matchingVariables coloring5292 95 = table5292 95 := by rfl

theorem table5292_entry096 :
    matchingVariables coloring5292 96 = table5292 96 := by rfl

theorem table5292_entry097 :
    matchingVariables coloring5292 97 = table5292 97 := by rfl

theorem table5292_entry098 :
    matchingVariables coloring5292 98 = table5292 98 := by rfl

theorem table5292_entry099 :
    matchingVariables coloring5292 99 = table5292 99 := by rfl

theorem table5292_entry100 :
    matchingVariables coloring5292 100 = table5292 100 := by rfl

theorem table5292_entry101 :
    matchingVariables coloring5292 101 = table5292 101 := by rfl

theorem table5292_entry102 :
    matchingVariables coloring5292 102 = table5292 102 := by rfl

theorem table5292_entry103 :
    matchingVariables coloring5292 103 = table5292 103 := by rfl

theorem table5292_entry104 :
    matchingVariables coloring5292 104 = table5292 104 := by rfl

theorem table5292_complete : ∀ m, matchingVariables coloring5292 m = table5292 m := by
  intro m
  fin_cases m
  · exact table5292_entry000
  · exact table5292_entry001
  · exact table5292_entry002
  · exact table5292_entry003
  · exact table5292_entry004
  · exact table5292_entry005
  · exact table5292_entry006
  · exact table5292_entry007
  · exact table5292_entry008
  · exact table5292_entry009
  · exact table5292_entry010
  · exact table5292_entry011
  · exact table5292_entry012
  · exact table5292_entry013
  · exact table5292_entry014
  · exact table5292_entry015
  · exact table5292_entry016
  · exact table5292_entry017
  · exact table5292_entry018
  · exact table5292_entry019
  · exact table5292_entry020
  · exact table5292_entry021
  · exact table5292_entry022
  · exact table5292_entry023
  · exact table5292_entry024
  · exact table5292_entry025
  · exact table5292_entry026
  · exact table5292_entry027
  · exact table5292_entry028
  · exact table5292_entry029
  · exact table5292_entry030
  · exact table5292_entry031
  · exact table5292_entry032
  · exact table5292_entry033
  · exact table5292_entry034
  · exact table5292_entry035
  · exact table5292_entry036
  · exact table5292_entry037
  · exact table5292_entry038
  · exact table5292_entry039
  · exact table5292_entry040
  · exact table5292_entry041
  · exact table5292_entry042
  · exact table5292_entry043
  · exact table5292_entry044
  · exact table5292_entry045
  · exact table5292_entry046
  · exact table5292_entry047
  · exact table5292_entry048
  · exact table5292_entry049
  · exact table5292_entry050
  · exact table5292_entry051
  · exact table5292_entry052
  · exact table5292_entry053
  · exact table5292_entry054
  · exact table5292_entry055
  · exact table5292_entry056
  · exact table5292_entry057
  · exact table5292_entry058
  · exact table5292_entry059
  · exact table5292_entry060
  · exact table5292_entry061
  · exact table5292_entry062
  · exact table5292_entry063
  · exact table5292_entry064
  · exact table5292_entry065
  · exact table5292_entry066
  · exact table5292_entry067
  · exact table5292_entry068
  · exact table5292_entry069
  · exact table5292_entry070
  · exact table5292_entry071
  · exact table5292_entry072
  · exact table5292_entry073
  · exact table5292_entry074
  · exact table5292_entry075
  · exact table5292_entry076
  · exact table5292_entry077
  · exact table5292_entry078
  · exact table5292_entry079
  · exact table5292_entry080
  · exact table5292_entry081
  · exact table5292_entry082
  · exact table5292_entry083
  · exact table5292_entry084
  · exact table5292_entry085
  · exact table5292_entry086
  · exact table5292_entry087
  · exact table5292_entry088
  · exact table5292_entry089
  · exact table5292_entry090
  · exact table5292_entry091
  · exact table5292_entry092
  · exact table5292_entry093
  · exact table5292_entry094
  · exact table5292_entry095
  · exact table5292_entry096
  · exact table5292_entry097
  · exact table5292_entry098
  · exact table5292_entry099
  · exact table5292_entry100
  · exact table5292_entry101
  · exact table5292_entry102
  · exact table5292_entry103
  · exact table5292_entry104

#print axioms table5292_complete

def expanded5292 : Polynomial 143 := [(1, exponentOfVariables [0, 58, 104, 139]),
  (1, exponentOfVariables [0, 69, 87, 139]),
  (1, exponentOfVariables [9, 38, 87, 139]),
  (1, exponentOfVariables [9, 48, 87, 127]),
  (1, exponentOfVariables [19, 48, 69, 123]),
  (1, exponentOfVariables [19, 48, 79, 104])]

theorem table5292_expanded : tablePolynomial table5292 = expanded5292 := by
  rfl

theorem table5292_exponent00 :
    exponentOfVariables (n := 143) [0, 58, 104, 139] =
      (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5292_exponent01 :
    exponentOfVariables (n := 143) [0, 69, 87, 139] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5292_exponent02 :
    exponentOfVariables (n := 143) [9, 38, 87, 139] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5292_exponent03 :
    exponentOfVariables (n := 143) [9, 48, 87, 127] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 127 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5292_exponent04 :
    exponentOfVariables (n := 143) [19, 48, 69, 123] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 123 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5292_exponent05 :
    exponentOfVariables (n := 143) [19, 48, 79, 104] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 79 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5292_polynomial : expanded5292 = amplitude5292 := by
  simp only [expanded5292, amplitude5292, table5292_exponent00, table5292_exponent01, table5292_exponent02, table5292_exponent03, table5292_exponent04, table5292_exponent05]

theorem premiseCheck100 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude5292)) p100 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
