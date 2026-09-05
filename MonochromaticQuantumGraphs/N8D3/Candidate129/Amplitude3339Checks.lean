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

def coloring3339 : Fin 8 → Fin 3 := ![0, 0, 2, 0, 2, 1, 1, 1]

def table3339 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 63, 105, 138] else
    if m.val = 6 then some [0, 76, 84, 138] else
    if m.val = 21 then some [11, 39, 84, 138] else
    if m.val = 24 then some [11, 48, 84, 129] else
    if m.val = 25 then some [11, 48, 92, 122] else
    if m.val = 40 then some [18, 48, 76, 122] else none

theorem table3339_entry000 :
    matchingVariables coloring3339 0 = table3339 0 := by rfl

theorem table3339_entry001 :
    matchingVariables coloring3339 1 = table3339 1 := by rfl

theorem table3339_entry002 :
    matchingVariables coloring3339 2 = table3339 2 := by rfl

theorem table3339_entry003 :
    matchingVariables coloring3339 3 = table3339 3 := by rfl

theorem table3339_entry004 :
    matchingVariables coloring3339 4 = table3339 4 := by rfl

theorem table3339_entry005 :
    matchingVariables coloring3339 5 = table3339 5 := by rfl

theorem table3339_entry006 :
    matchingVariables coloring3339 6 = table3339 6 := by rfl

theorem table3339_entry007 :
    matchingVariables coloring3339 7 = table3339 7 := by rfl

theorem table3339_entry008 :
    matchingVariables coloring3339 8 = table3339 8 := by rfl

theorem table3339_entry009 :
    matchingVariables coloring3339 9 = table3339 9 := by rfl

theorem table3339_entry010 :
    matchingVariables coloring3339 10 = table3339 10 := by rfl

theorem table3339_entry011 :
    matchingVariables coloring3339 11 = table3339 11 := by rfl

theorem table3339_entry012 :
    matchingVariables coloring3339 12 = table3339 12 := by rfl

theorem table3339_entry013 :
    matchingVariables coloring3339 13 = table3339 13 := by rfl

theorem table3339_entry014 :
    matchingVariables coloring3339 14 = table3339 14 := by rfl

theorem table3339_entry015 :
    matchingVariables coloring3339 15 = table3339 15 := by rfl

theorem table3339_entry016 :
    matchingVariables coloring3339 16 = table3339 16 := by rfl

theorem table3339_entry017 :
    matchingVariables coloring3339 17 = table3339 17 := by rfl

theorem table3339_entry018 :
    matchingVariables coloring3339 18 = table3339 18 := by rfl

theorem table3339_entry019 :
    matchingVariables coloring3339 19 = table3339 19 := by rfl

theorem table3339_entry020 :
    matchingVariables coloring3339 20 = table3339 20 := by rfl

theorem table3339_entry021 :
    matchingVariables coloring3339 21 = table3339 21 := by rfl

theorem table3339_entry022 :
    matchingVariables coloring3339 22 = table3339 22 := by rfl

theorem table3339_entry023 :
    matchingVariables coloring3339 23 = table3339 23 := by rfl

theorem table3339_entry024 :
    matchingVariables coloring3339 24 = table3339 24 := by rfl

theorem table3339_entry025 :
    matchingVariables coloring3339 25 = table3339 25 := by rfl

theorem table3339_entry026 :
    matchingVariables coloring3339 26 = table3339 26 := by rfl

theorem table3339_entry027 :
    matchingVariables coloring3339 27 = table3339 27 := by rfl

theorem table3339_entry028 :
    matchingVariables coloring3339 28 = table3339 28 := by rfl

theorem table3339_entry029 :
    matchingVariables coloring3339 29 = table3339 29 := by rfl

theorem table3339_entry030 :
    matchingVariables coloring3339 30 = table3339 30 := by rfl

theorem table3339_entry031 :
    matchingVariables coloring3339 31 = table3339 31 := by rfl

theorem table3339_entry032 :
    matchingVariables coloring3339 32 = table3339 32 := by rfl

theorem table3339_entry033 :
    matchingVariables coloring3339 33 = table3339 33 := by rfl

theorem table3339_entry034 :
    matchingVariables coloring3339 34 = table3339 34 := by rfl

theorem table3339_entry035 :
    matchingVariables coloring3339 35 = table3339 35 := by rfl

theorem table3339_entry036 :
    matchingVariables coloring3339 36 = table3339 36 := by rfl

theorem table3339_entry037 :
    matchingVariables coloring3339 37 = table3339 37 := by rfl

theorem table3339_entry038 :
    matchingVariables coloring3339 38 = table3339 38 := by rfl

theorem table3339_entry039 :
    matchingVariables coloring3339 39 = table3339 39 := by rfl

theorem table3339_entry040 :
    matchingVariables coloring3339 40 = table3339 40 := by rfl

theorem table3339_entry041 :
    matchingVariables coloring3339 41 = table3339 41 := by rfl

theorem table3339_entry042 :
    matchingVariables coloring3339 42 = table3339 42 := by rfl

theorem table3339_entry043 :
    matchingVariables coloring3339 43 = table3339 43 := by rfl

theorem table3339_entry044 :
    matchingVariables coloring3339 44 = table3339 44 := by rfl

theorem table3339_entry045 :
    matchingVariables coloring3339 45 = table3339 45 := by rfl

theorem table3339_entry046 :
    matchingVariables coloring3339 46 = table3339 46 := by rfl

theorem table3339_entry047 :
    matchingVariables coloring3339 47 = table3339 47 := by rfl

theorem table3339_entry048 :
    matchingVariables coloring3339 48 = table3339 48 := by rfl

theorem table3339_entry049 :
    matchingVariables coloring3339 49 = table3339 49 := by rfl

theorem table3339_entry050 :
    matchingVariables coloring3339 50 = table3339 50 := by rfl

theorem table3339_entry051 :
    matchingVariables coloring3339 51 = table3339 51 := by rfl

theorem table3339_entry052 :
    matchingVariables coloring3339 52 = table3339 52 := by rfl

theorem table3339_entry053 :
    matchingVariables coloring3339 53 = table3339 53 := by rfl

theorem table3339_entry054 :
    matchingVariables coloring3339 54 = table3339 54 := by rfl

theorem table3339_entry055 :
    matchingVariables coloring3339 55 = table3339 55 := by rfl

theorem table3339_entry056 :
    matchingVariables coloring3339 56 = table3339 56 := by rfl

theorem table3339_entry057 :
    matchingVariables coloring3339 57 = table3339 57 := by rfl

theorem table3339_entry058 :
    matchingVariables coloring3339 58 = table3339 58 := by rfl

theorem table3339_entry059 :
    matchingVariables coloring3339 59 = table3339 59 := by rfl

theorem table3339_entry060 :
    matchingVariables coloring3339 60 = table3339 60 := by rfl

theorem table3339_entry061 :
    matchingVariables coloring3339 61 = table3339 61 := by rfl

theorem table3339_entry062 :
    matchingVariables coloring3339 62 = table3339 62 := by rfl

theorem table3339_entry063 :
    matchingVariables coloring3339 63 = table3339 63 := by rfl

theorem table3339_entry064 :
    matchingVariables coloring3339 64 = table3339 64 := by rfl

theorem table3339_entry065 :
    matchingVariables coloring3339 65 = table3339 65 := by rfl

theorem table3339_entry066 :
    matchingVariables coloring3339 66 = table3339 66 := by rfl

theorem table3339_entry067 :
    matchingVariables coloring3339 67 = table3339 67 := by rfl

theorem table3339_entry068 :
    matchingVariables coloring3339 68 = table3339 68 := by rfl

theorem table3339_entry069 :
    matchingVariables coloring3339 69 = table3339 69 := by rfl

theorem table3339_entry070 :
    matchingVariables coloring3339 70 = table3339 70 := by rfl

theorem table3339_entry071 :
    matchingVariables coloring3339 71 = table3339 71 := by rfl

theorem table3339_entry072 :
    matchingVariables coloring3339 72 = table3339 72 := by rfl

theorem table3339_entry073 :
    matchingVariables coloring3339 73 = table3339 73 := by rfl

theorem table3339_entry074 :
    matchingVariables coloring3339 74 = table3339 74 := by rfl

theorem table3339_entry075 :
    matchingVariables coloring3339 75 = table3339 75 := by rfl

theorem table3339_entry076 :
    matchingVariables coloring3339 76 = table3339 76 := by rfl

theorem table3339_entry077 :
    matchingVariables coloring3339 77 = table3339 77 := by rfl

theorem table3339_entry078 :
    matchingVariables coloring3339 78 = table3339 78 := by rfl

theorem table3339_entry079 :
    matchingVariables coloring3339 79 = table3339 79 := by rfl

theorem table3339_entry080 :
    matchingVariables coloring3339 80 = table3339 80 := by rfl

theorem table3339_entry081 :
    matchingVariables coloring3339 81 = table3339 81 := by rfl

theorem table3339_entry082 :
    matchingVariables coloring3339 82 = table3339 82 := by rfl

theorem table3339_entry083 :
    matchingVariables coloring3339 83 = table3339 83 := by rfl

theorem table3339_entry084 :
    matchingVariables coloring3339 84 = table3339 84 := by rfl

theorem table3339_entry085 :
    matchingVariables coloring3339 85 = table3339 85 := by rfl

theorem table3339_entry086 :
    matchingVariables coloring3339 86 = table3339 86 := by rfl

theorem table3339_entry087 :
    matchingVariables coloring3339 87 = table3339 87 := by rfl

theorem table3339_entry088 :
    matchingVariables coloring3339 88 = table3339 88 := by rfl

theorem table3339_entry089 :
    matchingVariables coloring3339 89 = table3339 89 := by rfl

theorem table3339_entry090 :
    matchingVariables coloring3339 90 = table3339 90 := by rfl

theorem table3339_entry091 :
    matchingVariables coloring3339 91 = table3339 91 := by rfl

theorem table3339_entry092 :
    matchingVariables coloring3339 92 = table3339 92 := by rfl

theorem table3339_entry093 :
    matchingVariables coloring3339 93 = table3339 93 := by rfl

theorem table3339_entry094 :
    matchingVariables coloring3339 94 = table3339 94 := by rfl

theorem table3339_entry095 :
    matchingVariables coloring3339 95 = table3339 95 := by rfl

theorem table3339_entry096 :
    matchingVariables coloring3339 96 = table3339 96 := by rfl

theorem table3339_entry097 :
    matchingVariables coloring3339 97 = table3339 97 := by rfl

theorem table3339_entry098 :
    matchingVariables coloring3339 98 = table3339 98 := by rfl

theorem table3339_entry099 :
    matchingVariables coloring3339 99 = table3339 99 := by rfl

theorem table3339_entry100 :
    matchingVariables coloring3339 100 = table3339 100 := by rfl

theorem table3339_entry101 :
    matchingVariables coloring3339 101 = table3339 101 := by rfl

theorem table3339_entry102 :
    matchingVariables coloring3339 102 = table3339 102 := by rfl

theorem table3339_entry103 :
    matchingVariables coloring3339 103 = table3339 103 := by rfl

theorem table3339_entry104 :
    matchingVariables coloring3339 104 = table3339 104 := by rfl

theorem table3339_complete : ∀ m, matchingVariables coloring3339 m = table3339 m := by
  intro m
  fin_cases m
  · exact table3339_entry000
  · exact table3339_entry001
  · exact table3339_entry002
  · exact table3339_entry003
  · exact table3339_entry004
  · exact table3339_entry005
  · exact table3339_entry006
  · exact table3339_entry007
  · exact table3339_entry008
  · exact table3339_entry009
  · exact table3339_entry010
  · exact table3339_entry011
  · exact table3339_entry012
  · exact table3339_entry013
  · exact table3339_entry014
  · exact table3339_entry015
  · exact table3339_entry016
  · exact table3339_entry017
  · exact table3339_entry018
  · exact table3339_entry019
  · exact table3339_entry020
  · exact table3339_entry021
  · exact table3339_entry022
  · exact table3339_entry023
  · exact table3339_entry024
  · exact table3339_entry025
  · exact table3339_entry026
  · exact table3339_entry027
  · exact table3339_entry028
  · exact table3339_entry029
  · exact table3339_entry030
  · exact table3339_entry031
  · exact table3339_entry032
  · exact table3339_entry033
  · exact table3339_entry034
  · exact table3339_entry035
  · exact table3339_entry036
  · exact table3339_entry037
  · exact table3339_entry038
  · exact table3339_entry039
  · exact table3339_entry040
  · exact table3339_entry041
  · exact table3339_entry042
  · exact table3339_entry043
  · exact table3339_entry044
  · exact table3339_entry045
  · exact table3339_entry046
  · exact table3339_entry047
  · exact table3339_entry048
  · exact table3339_entry049
  · exact table3339_entry050
  · exact table3339_entry051
  · exact table3339_entry052
  · exact table3339_entry053
  · exact table3339_entry054
  · exact table3339_entry055
  · exact table3339_entry056
  · exact table3339_entry057
  · exact table3339_entry058
  · exact table3339_entry059
  · exact table3339_entry060
  · exact table3339_entry061
  · exact table3339_entry062
  · exact table3339_entry063
  · exact table3339_entry064
  · exact table3339_entry065
  · exact table3339_entry066
  · exact table3339_entry067
  · exact table3339_entry068
  · exact table3339_entry069
  · exact table3339_entry070
  · exact table3339_entry071
  · exact table3339_entry072
  · exact table3339_entry073
  · exact table3339_entry074
  · exact table3339_entry075
  · exact table3339_entry076
  · exact table3339_entry077
  · exact table3339_entry078
  · exact table3339_entry079
  · exact table3339_entry080
  · exact table3339_entry081
  · exact table3339_entry082
  · exact table3339_entry083
  · exact table3339_entry084
  · exact table3339_entry085
  · exact table3339_entry086
  · exact table3339_entry087
  · exact table3339_entry088
  · exact table3339_entry089
  · exact table3339_entry090
  · exact table3339_entry091
  · exact table3339_entry092
  · exact table3339_entry093
  · exact table3339_entry094
  · exact table3339_entry095
  · exact table3339_entry096
  · exact table3339_entry097
  · exact table3339_entry098
  · exact table3339_entry099
  · exact table3339_entry100
  · exact table3339_entry101
  · exact table3339_entry102
  · exact table3339_entry103
  · exact table3339_entry104

#print axioms table3339_complete

def expanded3339 : Polynomial 143 := [(1, exponentOfVariables [0, 63, 105, 138]),
  (1, exponentOfVariables [0, 76, 84, 138]),
  (1, exponentOfVariables [11, 39, 84, 138]),
  (1, exponentOfVariables [11, 48, 84, 129]),
  (1, exponentOfVariables [11, 48, 92, 122]),
  (1, exponentOfVariables [18, 48, 76, 122])]

theorem table3339_expanded : tablePolynomial table3339 = expanded3339 := by
  rfl

theorem table3339_exponent00 :
    exponentOfVariables (n := 143) [0, 63, 105, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 63 then (1) else if i.val = 105 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3339_exponent01 :
    exponentOfVariables (n := 143) [0, 76, 84, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 76 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3339_exponent02 :
    exponentOfVariables (n := 143) [11, 39, 84, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 39 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3339_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 84, 129] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 84 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3339_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 92, 122] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 92 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3339_exponent05 :
    exponentOfVariables (n := 143) [18, 48, 76, 122] =
      (fun i => if i.val = 18 then (1) else if i.val = 48 then (1) else if i.val = 76 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3339_polynomial : expanded3339 = amplitude3339 := by
  simp only [expanded3339, amplitude3339, table3339_exponent00, table3339_exponent01, table3339_exponent02, table3339_exponent03, table3339_exponent04, table3339_exponent05]

theorem premiseCheck076 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3339)) p076 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
