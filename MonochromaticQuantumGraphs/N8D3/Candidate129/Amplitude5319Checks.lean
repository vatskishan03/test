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

def coloring5319 : Fin 8 → Fin 3 := ![0, 0, 0, 2, 2, 0, 1, 2]

def table5319 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 59, 104, 139] else
    if m.val = 6 then some [0, 69, 90, 139] else
    if m.val = 21 then some [9, 38, 90, 139] else
    if m.val = 24 then some [9, 48, 90, 127] else
    if m.val = 40 then some [20, 48, 69, 123] else
    if m.val = 41 then some [20, 48, 79, 104] else none

theorem table5319_entry000 :
    matchingVariables coloring5319 0 = table5319 0 := by rfl

theorem table5319_entry001 :
    matchingVariables coloring5319 1 = table5319 1 := by rfl

theorem table5319_entry002 :
    matchingVariables coloring5319 2 = table5319 2 := by rfl

theorem table5319_entry003 :
    matchingVariables coloring5319 3 = table5319 3 := by rfl

theorem table5319_entry004 :
    matchingVariables coloring5319 4 = table5319 4 := by rfl

theorem table5319_entry005 :
    matchingVariables coloring5319 5 = table5319 5 := by rfl

theorem table5319_entry006 :
    matchingVariables coloring5319 6 = table5319 6 := by rfl

theorem table5319_entry007 :
    matchingVariables coloring5319 7 = table5319 7 := by rfl

theorem table5319_entry008 :
    matchingVariables coloring5319 8 = table5319 8 := by rfl

theorem table5319_entry009 :
    matchingVariables coloring5319 9 = table5319 9 := by rfl

theorem table5319_entry010 :
    matchingVariables coloring5319 10 = table5319 10 := by rfl

theorem table5319_entry011 :
    matchingVariables coloring5319 11 = table5319 11 := by rfl

theorem table5319_entry012 :
    matchingVariables coloring5319 12 = table5319 12 := by rfl

theorem table5319_entry013 :
    matchingVariables coloring5319 13 = table5319 13 := by rfl

theorem table5319_entry014 :
    matchingVariables coloring5319 14 = table5319 14 := by rfl

theorem table5319_entry015 :
    matchingVariables coloring5319 15 = table5319 15 := by rfl

theorem table5319_entry016 :
    matchingVariables coloring5319 16 = table5319 16 := by rfl

theorem table5319_entry017 :
    matchingVariables coloring5319 17 = table5319 17 := by rfl

theorem table5319_entry018 :
    matchingVariables coloring5319 18 = table5319 18 := by rfl

theorem table5319_entry019 :
    matchingVariables coloring5319 19 = table5319 19 := by rfl

theorem table5319_entry020 :
    matchingVariables coloring5319 20 = table5319 20 := by rfl

theorem table5319_entry021 :
    matchingVariables coloring5319 21 = table5319 21 := by rfl

theorem table5319_entry022 :
    matchingVariables coloring5319 22 = table5319 22 := by rfl

theorem table5319_entry023 :
    matchingVariables coloring5319 23 = table5319 23 := by rfl

theorem table5319_entry024 :
    matchingVariables coloring5319 24 = table5319 24 := by rfl

theorem table5319_entry025 :
    matchingVariables coloring5319 25 = table5319 25 := by rfl

theorem table5319_entry026 :
    matchingVariables coloring5319 26 = table5319 26 := by rfl

theorem table5319_entry027 :
    matchingVariables coloring5319 27 = table5319 27 := by rfl

theorem table5319_entry028 :
    matchingVariables coloring5319 28 = table5319 28 := by rfl

theorem table5319_entry029 :
    matchingVariables coloring5319 29 = table5319 29 := by rfl

theorem table5319_entry030 :
    matchingVariables coloring5319 30 = table5319 30 := by rfl

theorem table5319_entry031 :
    matchingVariables coloring5319 31 = table5319 31 := by rfl

theorem table5319_entry032 :
    matchingVariables coloring5319 32 = table5319 32 := by rfl

theorem table5319_entry033 :
    matchingVariables coloring5319 33 = table5319 33 := by rfl

theorem table5319_entry034 :
    matchingVariables coloring5319 34 = table5319 34 := by rfl

theorem table5319_entry035 :
    matchingVariables coloring5319 35 = table5319 35 := by rfl

theorem table5319_entry036 :
    matchingVariables coloring5319 36 = table5319 36 := by rfl

theorem table5319_entry037 :
    matchingVariables coloring5319 37 = table5319 37 := by rfl

theorem table5319_entry038 :
    matchingVariables coloring5319 38 = table5319 38 := by rfl

theorem table5319_entry039 :
    matchingVariables coloring5319 39 = table5319 39 := by rfl

theorem table5319_entry040 :
    matchingVariables coloring5319 40 = table5319 40 := by rfl

theorem table5319_entry041 :
    matchingVariables coloring5319 41 = table5319 41 := by rfl

theorem table5319_entry042 :
    matchingVariables coloring5319 42 = table5319 42 := by rfl

theorem table5319_entry043 :
    matchingVariables coloring5319 43 = table5319 43 := by rfl

theorem table5319_entry044 :
    matchingVariables coloring5319 44 = table5319 44 := by rfl

theorem table5319_entry045 :
    matchingVariables coloring5319 45 = table5319 45 := by rfl

theorem table5319_entry046 :
    matchingVariables coloring5319 46 = table5319 46 := by rfl

theorem table5319_entry047 :
    matchingVariables coloring5319 47 = table5319 47 := by rfl

theorem table5319_entry048 :
    matchingVariables coloring5319 48 = table5319 48 := by rfl

theorem table5319_entry049 :
    matchingVariables coloring5319 49 = table5319 49 := by rfl

theorem table5319_entry050 :
    matchingVariables coloring5319 50 = table5319 50 := by rfl

theorem table5319_entry051 :
    matchingVariables coloring5319 51 = table5319 51 := by rfl

theorem table5319_entry052 :
    matchingVariables coloring5319 52 = table5319 52 := by rfl

theorem table5319_entry053 :
    matchingVariables coloring5319 53 = table5319 53 := by rfl

theorem table5319_entry054 :
    matchingVariables coloring5319 54 = table5319 54 := by rfl

theorem table5319_entry055 :
    matchingVariables coloring5319 55 = table5319 55 := by rfl

theorem table5319_entry056 :
    matchingVariables coloring5319 56 = table5319 56 := by rfl

theorem table5319_entry057 :
    matchingVariables coloring5319 57 = table5319 57 := by rfl

theorem table5319_entry058 :
    matchingVariables coloring5319 58 = table5319 58 := by rfl

theorem table5319_entry059 :
    matchingVariables coloring5319 59 = table5319 59 := by rfl

theorem table5319_entry060 :
    matchingVariables coloring5319 60 = table5319 60 := by rfl

theorem table5319_entry061 :
    matchingVariables coloring5319 61 = table5319 61 := by rfl

theorem table5319_entry062 :
    matchingVariables coloring5319 62 = table5319 62 := by rfl

theorem table5319_entry063 :
    matchingVariables coloring5319 63 = table5319 63 := by rfl

theorem table5319_entry064 :
    matchingVariables coloring5319 64 = table5319 64 := by rfl

theorem table5319_entry065 :
    matchingVariables coloring5319 65 = table5319 65 := by rfl

theorem table5319_entry066 :
    matchingVariables coloring5319 66 = table5319 66 := by rfl

theorem table5319_entry067 :
    matchingVariables coloring5319 67 = table5319 67 := by rfl

theorem table5319_entry068 :
    matchingVariables coloring5319 68 = table5319 68 := by rfl

theorem table5319_entry069 :
    matchingVariables coloring5319 69 = table5319 69 := by rfl

theorem table5319_entry070 :
    matchingVariables coloring5319 70 = table5319 70 := by rfl

theorem table5319_entry071 :
    matchingVariables coloring5319 71 = table5319 71 := by rfl

theorem table5319_entry072 :
    matchingVariables coloring5319 72 = table5319 72 := by rfl

theorem table5319_entry073 :
    matchingVariables coloring5319 73 = table5319 73 := by rfl

theorem table5319_entry074 :
    matchingVariables coloring5319 74 = table5319 74 := by rfl

theorem table5319_entry075 :
    matchingVariables coloring5319 75 = table5319 75 := by rfl

theorem table5319_entry076 :
    matchingVariables coloring5319 76 = table5319 76 := by rfl

theorem table5319_entry077 :
    matchingVariables coloring5319 77 = table5319 77 := by rfl

theorem table5319_entry078 :
    matchingVariables coloring5319 78 = table5319 78 := by rfl

theorem table5319_entry079 :
    matchingVariables coloring5319 79 = table5319 79 := by rfl

theorem table5319_entry080 :
    matchingVariables coloring5319 80 = table5319 80 := by rfl

theorem table5319_entry081 :
    matchingVariables coloring5319 81 = table5319 81 := by rfl

theorem table5319_entry082 :
    matchingVariables coloring5319 82 = table5319 82 := by rfl

theorem table5319_entry083 :
    matchingVariables coloring5319 83 = table5319 83 := by rfl

theorem table5319_entry084 :
    matchingVariables coloring5319 84 = table5319 84 := by rfl

theorem table5319_entry085 :
    matchingVariables coloring5319 85 = table5319 85 := by rfl

theorem table5319_entry086 :
    matchingVariables coloring5319 86 = table5319 86 := by rfl

theorem table5319_entry087 :
    matchingVariables coloring5319 87 = table5319 87 := by rfl

theorem table5319_entry088 :
    matchingVariables coloring5319 88 = table5319 88 := by rfl

theorem table5319_entry089 :
    matchingVariables coloring5319 89 = table5319 89 := by rfl

theorem table5319_entry090 :
    matchingVariables coloring5319 90 = table5319 90 := by rfl

theorem table5319_entry091 :
    matchingVariables coloring5319 91 = table5319 91 := by rfl

theorem table5319_entry092 :
    matchingVariables coloring5319 92 = table5319 92 := by rfl

theorem table5319_entry093 :
    matchingVariables coloring5319 93 = table5319 93 := by rfl

theorem table5319_entry094 :
    matchingVariables coloring5319 94 = table5319 94 := by rfl

theorem table5319_entry095 :
    matchingVariables coloring5319 95 = table5319 95 := by rfl

theorem table5319_entry096 :
    matchingVariables coloring5319 96 = table5319 96 := by rfl

theorem table5319_entry097 :
    matchingVariables coloring5319 97 = table5319 97 := by rfl

theorem table5319_entry098 :
    matchingVariables coloring5319 98 = table5319 98 := by rfl

theorem table5319_entry099 :
    matchingVariables coloring5319 99 = table5319 99 := by rfl

theorem table5319_entry100 :
    matchingVariables coloring5319 100 = table5319 100 := by rfl

theorem table5319_entry101 :
    matchingVariables coloring5319 101 = table5319 101 := by rfl

theorem table5319_entry102 :
    matchingVariables coloring5319 102 = table5319 102 := by rfl

theorem table5319_entry103 :
    matchingVariables coloring5319 103 = table5319 103 := by rfl

theorem table5319_entry104 :
    matchingVariables coloring5319 104 = table5319 104 := by rfl

theorem table5319_complete : ∀ m, matchingVariables coloring5319 m = table5319 m := by
  intro m
  fin_cases m
  · exact table5319_entry000
  · exact table5319_entry001
  · exact table5319_entry002
  · exact table5319_entry003
  · exact table5319_entry004
  · exact table5319_entry005
  · exact table5319_entry006
  · exact table5319_entry007
  · exact table5319_entry008
  · exact table5319_entry009
  · exact table5319_entry010
  · exact table5319_entry011
  · exact table5319_entry012
  · exact table5319_entry013
  · exact table5319_entry014
  · exact table5319_entry015
  · exact table5319_entry016
  · exact table5319_entry017
  · exact table5319_entry018
  · exact table5319_entry019
  · exact table5319_entry020
  · exact table5319_entry021
  · exact table5319_entry022
  · exact table5319_entry023
  · exact table5319_entry024
  · exact table5319_entry025
  · exact table5319_entry026
  · exact table5319_entry027
  · exact table5319_entry028
  · exact table5319_entry029
  · exact table5319_entry030
  · exact table5319_entry031
  · exact table5319_entry032
  · exact table5319_entry033
  · exact table5319_entry034
  · exact table5319_entry035
  · exact table5319_entry036
  · exact table5319_entry037
  · exact table5319_entry038
  · exact table5319_entry039
  · exact table5319_entry040
  · exact table5319_entry041
  · exact table5319_entry042
  · exact table5319_entry043
  · exact table5319_entry044
  · exact table5319_entry045
  · exact table5319_entry046
  · exact table5319_entry047
  · exact table5319_entry048
  · exact table5319_entry049
  · exact table5319_entry050
  · exact table5319_entry051
  · exact table5319_entry052
  · exact table5319_entry053
  · exact table5319_entry054
  · exact table5319_entry055
  · exact table5319_entry056
  · exact table5319_entry057
  · exact table5319_entry058
  · exact table5319_entry059
  · exact table5319_entry060
  · exact table5319_entry061
  · exact table5319_entry062
  · exact table5319_entry063
  · exact table5319_entry064
  · exact table5319_entry065
  · exact table5319_entry066
  · exact table5319_entry067
  · exact table5319_entry068
  · exact table5319_entry069
  · exact table5319_entry070
  · exact table5319_entry071
  · exact table5319_entry072
  · exact table5319_entry073
  · exact table5319_entry074
  · exact table5319_entry075
  · exact table5319_entry076
  · exact table5319_entry077
  · exact table5319_entry078
  · exact table5319_entry079
  · exact table5319_entry080
  · exact table5319_entry081
  · exact table5319_entry082
  · exact table5319_entry083
  · exact table5319_entry084
  · exact table5319_entry085
  · exact table5319_entry086
  · exact table5319_entry087
  · exact table5319_entry088
  · exact table5319_entry089
  · exact table5319_entry090
  · exact table5319_entry091
  · exact table5319_entry092
  · exact table5319_entry093
  · exact table5319_entry094
  · exact table5319_entry095
  · exact table5319_entry096
  · exact table5319_entry097
  · exact table5319_entry098
  · exact table5319_entry099
  · exact table5319_entry100
  · exact table5319_entry101
  · exact table5319_entry102
  · exact table5319_entry103
  · exact table5319_entry104

#print axioms table5319_complete

def expanded5319 : Polynomial 143 := [(1, exponentOfVariables [0, 59, 104, 139]),
  (1, exponentOfVariables [0, 69, 90, 139]),
  (1, exponentOfVariables [9, 38, 90, 139]),
  (1, exponentOfVariables [9, 48, 90, 127]),
  (1, exponentOfVariables [20, 48, 69, 123]),
  (1, exponentOfVariables [20, 48, 79, 104])]

theorem table5319_expanded : tablePolynomial table5319 = expanded5319 := by
  rfl

theorem table5319_exponent00 :
    exponentOfVariables (n := 143) [0, 59, 104, 139] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5319_exponent01 :
    exponentOfVariables (n := 143) [0, 69, 90, 139] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5319_exponent02 :
    exponentOfVariables (n := 143) [9, 38, 90, 139] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 90 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5319_exponent03 :
    exponentOfVariables (n := 143) [9, 48, 90, 127] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 90 then (1) else if i.val = 127 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5319_exponent04 :
    exponentOfVariables (n := 143) [20, 48, 69, 123] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 123 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5319_exponent05 :
    exponentOfVariables (n := 143) [20, 48, 79, 104] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 79 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5319_polynomial : expanded5319 = amplitude5319 := by
  simp only [expanded5319, amplitude5319, table5319_exponent00, table5319_exponent01, table5319_exponent02, table5319_exponent03, table5319_exponent04, table5319_exponent05]

theorem premiseCheck015 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude5319)) p015 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
