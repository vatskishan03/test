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

def coloring3864 : Fin 8 → Fin 3 := ![0, 1, 0, 2, 2, 0, 2, 1]

def table3864 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 59, 104, 141] else
    if m.val = 1 then some [1, 59, 114, 126] else
    if m.val = 6 then some [1, 69, 90, 141] else
    if m.val = 21 then some [9, 41, 90, 141] else
    if m.val = 24 then some [9, 52, 90, 126] else
    if m.val = 40 then some [20, 52, 69, 122] else none

theorem table3864_entry000 :
    matchingVariables coloring3864 0 = table3864 0 := by rfl

theorem table3864_entry001 :
    matchingVariables coloring3864 1 = table3864 1 := by rfl

theorem table3864_entry002 :
    matchingVariables coloring3864 2 = table3864 2 := by rfl

theorem table3864_entry003 :
    matchingVariables coloring3864 3 = table3864 3 := by rfl

theorem table3864_entry004 :
    matchingVariables coloring3864 4 = table3864 4 := by rfl

theorem table3864_entry005 :
    matchingVariables coloring3864 5 = table3864 5 := by rfl

theorem table3864_entry006 :
    matchingVariables coloring3864 6 = table3864 6 := by rfl

theorem table3864_entry007 :
    matchingVariables coloring3864 7 = table3864 7 := by rfl

theorem table3864_entry008 :
    matchingVariables coloring3864 8 = table3864 8 := by rfl

theorem table3864_entry009 :
    matchingVariables coloring3864 9 = table3864 9 := by rfl

theorem table3864_entry010 :
    matchingVariables coloring3864 10 = table3864 10 := by rfl

theorem table3864_entry011 :
    matchingVariables coloring3864 11 = table3864 11 := by rfl

theorem table3864_entry012 :
    matchingVariables coloring3864 12 = table3864 12 := by rfl

theorem table3864_entry013 :
    matchingVariables coloring3864 13 = table3864 13 := by rfl

theorem table3864_entry014 :
    matchingVariables coloring3864 14 = table3864 14 := by rfl

theorem table3864_entry015 :
    matchingVariables coloring3864 15 = table3864 15 := by rfl

theorem table3864_entry016 :
    matchingVariables coloring3864 16 = table3864 16 := by rfl

theorem table3864_entry017 :
    matchingVariables coloring3864 17 = table3864 17 := by rfl

theorem table3864_entry018 :
    matchingVariables coloring3864 18 = table3864 18 := by rfl

theorem table3864_entry019 :
    matchingVariables coloring3864 19 = table3864 19 := by rfl

theorem table3864_entry020 :
    matchingVariables coloring3864 20 = table3864 20 := by rfl

theorem table3864_entry021 :
    matchingVariables coloring3864 21 = table3864 21 := by rfl

theorem table3864_entry022 :
    matchingVariables coloring3864 22 = table3864 22 := by rfl

theorem table3864_entry023 :
    matchingVariables coloring3864 23 = table3864 23 := by rfl

theorem table3864_entry024 :
    matchingVariables coloring3864 24 = table3864 24 := by rfl

theorem table3864_entry025 :
    matchingVariables coloring3864 25 = table3864 25 := by rfl

theorem table3864_entry026 :
    matchingVariables coloring3864 26 = table3864 26 := by rfl

theorem table3864_entry027 :
    matchingVariables coloring3864 27 = table3864 27 := by rfl

theorem table3864_entry028 :
    matchingVariables coloring3864 28 = table3864 28 := by rfl

theorem table3864_entry029 :
    matchingVariables coloring3864 29 = table3864 29 := by rfl

theorem table3864_entry030 :
    matchingVariables coloring3864 30 = table3864 30 := by rfl

theorem table3864_entry031 :
    matchingVariables coloring3864 31 = table3864 31 := by rfl

theorem table3864_entry032 :
    matchingVariables coloring3864 32 = table3864 32 := by rfl

theorem table3864_entry033 :
    matchingVariables coloring3864 33 = table3864 33 := by rfl

theorem table3864_entry034 :
    matchingVariables coloring3864 34 = table3864 34 := by rfl

theorem table3864_entry035 :
    matchingVariables coloring3864 35 = table3864 35 := by rfl

theorem table3864_entry036 :
    matchingVariables coloring3864 36 = table3864 36 := by rfl

theorem table3864_entry037 :
    matchingVariables coloring3864 37 = table3864 37 := by rfl

theorem table3864_entry038 :
    matchingVariables coloring3864 38 = table3864 38 := by rfl

theorem table3864_entry039 :
    matchingVariables coloring3864 39 = table3864 39 := by rfl

theorem table3864_entry040 :
    matchingVariables coloring3864 40 = table3864 40 := by rfl

theorem table3864_entry041 :
    matchingVariables coloring3864 41 = table3864 41 := by rfl

theorem table3864_entry042 :
    matchingVariables coloring3864 42 = table3864 42 := by rfl

theorem table3864_entry043 :
    matchingVariables coloring3864 43 = table3864 43 := by rfl

theorem table3864_entry044 :
    matchingVariables coloring3864 44 = table3864 44 := by rfl

theorem table3864_entry045 :
    matchingVariables coloring3864 45 = table3864 45 := by rfl

theorem table3864_entry046 :
    matchingVariables coloring3864 46 = table3864 46 := by rfl

theorem table3864_entry047 :
    matchingVariables coloring3864 47 = table3864 47 := by rfl

theorem table3864_entry048 :
    matchingVariables coloring3864 48 = table3864 48 := by rfl

theorem table3864_entry049 :
    matchingVariables coloring3864 49 = table3864 49 := by rfl

theorem table3864_entry050 :
    matchingVariables coloring3864 50 = table3864 50 := by rfl

theorem table3864_entry051 :
    matchingVariables coloring3864 51 = table3864 51 := by rfl

theorem table3864_entry052 :
    matchingVariables coloring3864 52 = table3864 52 := by rfl

theorem table3864_entry053 :
    matchingVariables coloring3864 53 = table3864 53 := by rfl

theorem table3864_entry054 :
    matchingVariables coloring3864 54 = table3864 54 := by rfl

theorem table3864_entry055 :
    matchingVariables coloring3864 55 = table3864 55 := by rfl

theorem table3864_entry056 :
    matchingVariables coloring3864 56 = table3864 56 := by rfl

theorem table3864_entry057 :
    matchingVariables coloring3864 57 = table3864 57 := by rfl

theorem table3864_entry058 :
    matchingVariables coloring3864 58 = table3864 58 := by rfl

theorem table3864_entry059 :
    matchingVariables coloring3864 59 = table3864 59 := by rfl

theorem table3864_entry060 :
    matchingVariables coloring3864 60 = table3864 60 := by rfl

theorem table3864_entry061 :
    matchingVariables coloring3864 61 = table3864 61 := by rfl

theorem table3864_entry062 :
    matchingVariables coloring3864 62 = table3864 62 := by rfl

theorem table3864_entry063 :
    matchingVariables coloring3864 63 = table3864 63 := by rfl

theorem table3864_entry064 :
    matchingVariables coloring3864 64 = table3864 64 := by rfl

theorem table3864_entry065 :
    matchingVariables coloring3864 65 = table3864 65 := by rfl

theorem table3864_entry066 :
    matchingVariables coloring3864 66 = table3864 66 := by rfl

theorem table3864_entry067 :
    matchingVariables coloring3864 67 = table3864 67 := by rfl

theorem table3864_entry068 :
    matchingVariables coloring3864 68 = table3864 68 := by rfl

theorem table3864_entry069 :
    matchingVariables coloring3864 69 = table3864 69 := by rfl

theorem table3864_entry070 :
    matchingVariables coloring3864 70 = table3864 70 := by rfl

theorem table3864_entry071 :
    matchingVariables coloring3864 71 = table3864 71 := by rfl

theorem table3864_entry072 :
    matchingVariables coloring3864 72 = table3864 72 := by rfl

theorem table3864_entry073 :
    matchingVariables coloring3864 73 = table3864 73 := by rfl

theorem table3864_entry074 :
    matchingVariables coloring3864 74 = table3864 74 := by rfl

theorem table3864_entry075 :
    matchingVariables coloring3864 75 = table3864 75 := by rfl

theorem table3864_entry076 :
    matchingVariables coloring3864 76 = table3864 76 := by rfl

theorem table3864_entry077 :
    matchingVariables coloring3864 77 = table3864 77 := by rfl

theorem table3864_entry078 :
    matchingVariables coloring3864 78 = table3864 78 := by rfl

theorem table3864_entry079 :
    matchingVariables coloring3864 79 = table3864 79 := by rfl

theorem table3864_entry080 :
    matchingVariables coloring3864 80 = table3864 80 := by rfl

theorem table3864_entry081 :
    matchingVariables coloring3864 81 = table3864 81 := by rfl

theorem table3864_entry082 :
    matchingVariables coloring3864 82 = table3864 82 := by rfl

theorem table3864_entry083 :
    matchingVariables coloring3864 83 = table3864 83 := by rfl

theorem table3864_entry084 :
    matchingVariables coloring3864 84 = table3864 84 := by rfl

theorem table3864_entry085 :
    matchingVariables coloring3864 85 = table3864 85 := by rfl

theorem table3864_entry086 :
    matchingVariables coloring3864 86 = table3864 86 := by rfl

theorem table3864_entry087 :
    matchingVariables coloring3864 87 = table3864 87 := by rfl

theorem table3864_entry088 :
    matchingVariables coloring3864 88 = table3864 88 := by rfl

theorem table3864_entry089 :
    matchingVariables coloring3864 89 = table3864 89 := by rfl

theorem table3864_entry090 :
    matchingVariables coloring3864 90 = table3864 90 := by rfl

theorem table3864_entry091 :
    matchingVariables coloring3864 91 = table3864 91 := by rfl

theorem table3864_entry092 :
    matchingVariables coloring3864 92 = table3864 92 := by rfl

theorem table3864_entry093 :
    matchingVariables coloring3864 93 = table3864 93 := by rfl

theorem table3864_entry094 :
    matchingVariables coloring3864 94 = table3864 94 := by rfl

theorem table3864_entry095 :
    matchingVariables coloring3864 95 = table3864 95 := by rfl

theorem table3864_entry096 :
    matchingVariables coloring3864 96 = table3864 96 := by rfl

theorem table3864_entry097 :
    matchingVariables coloring3864 97 = table3864 97 := by rfl

theorem table3864_entry098 :
    matchingVariables coloring3864 98 = table3864 98 := by rfl

theorem table3864_entry099 :
    matchingVariables coloring3864 99 = table3864 99 := by rfl

theorem table3864_entry100 :
    matchingVariables coloring3864 100 = table3864 100 := by rfl

theorem table3864_entry101 :
    matchingVariables coloring3864 101 = table3864 101 := by rfl

theorem table3864_entry102 :
    matchingVariables coloring3864 102 = table3864 102 := by rfl

theorem table3864_entry103 :
    matchingVariables coloring3864 103 = table3864 103 := by rfl

theorem table3864_entry104 :
    matchingVariables coloring3864 104 = table3864 104 := by rfl

theorem table3864_complete : ∀ m, matchingVariables coloring3864 m = table3864 m := by
  intro m
  fin_cases m
  · exact table3864_entry000
  · exact table3864_entry001
  · exact table3864_entry002
  · exact table3864_entry003
  · exact table3864_entry004
  · exact table3864_entry005
  · exact table3864_entry006
  · exact table3864_entry007
  · exact table3864_entry008
  · exact table3864_entry009
  · exact table3864_entry010
  · exact table3864_entry011
  · exact table3864_entry012
  · exact table3864_entry013
  · exact table3864_entry014
  · exact table3864_entry015
  · exact table3864_entry016
  · exact table3864_entry017
  · exact table3864_entry018
  · exact table3864_entry019
  · exact table3864_entry020
  · exact table3864_entry021
  · exact table3864_entry022
  · exact table3864_entry023
  · exact table3864_entry024
  · exact table3864_entry025
  · exact table3864_entry026
  · exact table3864_entry027
  · exact table3864_entry028
  · exact table3864_entry029
  · exact table3864_entry030
  · exact table3864_entry031
  · exact table3864_entry032
  · exact table3864_entry033
  · exact table3864_entry034
  · exact table3864_entry035
  · exact table3864_entry036
  · exact table3864_entry037
  · exact table3864_entry038
  · exact table3864_entry039
  · exact table3864_entry040
  · exact table3864_entry041
  · exact table3864_entry042
  · exact table3864_entry043
  · exact table3864_entry044
  · exact table3864_entry045
  · exact table3864_entry046
  · exact table3864_entry047
  · exact table3864_entry048
  · exact table3864_entry049
  · exact table3864_entry050
  · exact table3864_entry051
  · exact table3864_entry052
  · exact table3864_entry053
  · exact table3864_entry054
  · exact table3864_entry055
  · exact table3864_entry056
  · exact table3864_entry057
  · exact table3864_entry058
  · exact table3864_entry059
  · exact table3864_entry060
  · exact table3864_entry061
  · exact table3864_entry062
  · exact table3864_entry063
  · exact table3864_entry064
  · exact table3864_entry065
  · exact table3864_entry066
  · exact table3864_entry067
  · exact table3864_entry068
  · exact table3864_entry069
  · exact table3864_entry070
  · exact table3864_entry071
  · exact table3864_entry072
  · exact table3864_entry073
  · exact table3864_entry074
  · exact table3864_entry075
  · exact table3864_entry076
  · exact table3864_entry077
  · exact table3864_entry078
  · exact table3864_entry079
  · exact table3864_entry080
  · exact table3864_entry081
  · exact table3864_entry082
  · exact table3864_entry083
  · exact table3864_entry084
  · exact table3864_entry085
  · exact table3864_entry086
  · exact table3864_entry087
  · exact table3864_entry088
  · exact table3864_entry089
  · exact table3864_entry090
  · exact table3864_entry091
  · exact table3864_entry092
  · exact table3864_entry093
  · exact table3864_entry094
  · exact table3864_entry095
  · exact table3864_entry096
  · exact table3864_entry097
  · exact table3864_entry098
  · exact table3864_entry099
  · exact table3864_entry100
  · exact table3864_entry101
  · exact table3864_entry102
  · exact table3864_entry103
  · exact table3864_entry104

#print axioms table3864_complete

def expanded3864 : Polynomial 143 := [(1, exponentOfVariables [1, 59, 104, 141]),
  (1, exponentOfVariables [1, 59, 114, 126]),
  (1, exponentOfVariables [1, 69, 90, 141]),
  (1, exponentOfVariables [9, 41, 90, 141]),
  (1, exponentOfVariables [9, 52, 90, 126]),
  (1, exponentOfVariables [20, 52, 69, 122])]

theorem table3864_expanded : tablePolynomial table3864 = expanded3864 := by
  rfl

theorem table3864_exponent00 :
    exponentOfVariables (n := 143) [1, 59, 104, 141] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3864_exponent01 :
    exponentOfVariables (n := 143) [1, 59, 114, 126] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 114 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3864_exponent02 :
    exponentOfVariables (n := 143) [1, 69, 90, 141] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3864_exponent03 :
    exponentOfVariables (n := 143) [9, 41, 90, 141] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 90 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3864_exponent04 :
    exponentOfVariables (n := 143) [9, 52, 90, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 52 then (1) else if i.val = 90 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3864_exponent05 :
    exponentOfVariables (n := 143) [20, 52, 69, 122] =
      (fun i => if i.val = 20 then (1) else if i.val = 52 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3864_polynomial : expanded3864 = amplitude3864 := by
  simp only [expanded3864, amplitude3864, table3864_exponent00, table3864_exponent01, table3864_exponent02, table3864_exponent03, table3864_exponent04, table3864_exponent05]

theorem premiseCheck132 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3864)) p132 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
