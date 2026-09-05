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

def coloring3537 : Fin 8 → Fin 3 := ![0, 0, 0, 2, 1, 2, 1, 1]

def table3537 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 59, 103, 138] else
    if m.val = 1 then some [0, 59, 111, 132] else
    if m.val = 6 then some [0, 71, 89, 138] else
    if m.val = 21 then some [9, 40, 89, 138] else
    if m.val = 24 then some [9, 48, 89, 132] else
    if m.val = 40 then some [20, 48, 71, 119] else none

theorem table3537_entry000 :
    matchingVariables coloring3537 0 = table3537 0 := by rfl

theorem table3537_entry001 :
    matchingVariables coloring3537 1 = table3537 1 := by rfl

theorem table3537_entry002 :
    matchingVariables coloring3537 2 = table3537 2 := by rfl

theorem table3537_entry003 :
    matchingVariables coloring3537 3 = table3537 3 := by rfl

theorem table3537_entry004 :
    matchingVariables coloring3537 4 = table3537 4 := by rfl

theorem table3537_entry005 :
    matchingVariables coloring3537 5 = table3537 5 := by rfl

theorem table3537_entry006 :
    matchingVariables coloring3537 6 = table3537 6 := by rfl

theorem table3537_entry007 :
    matchingVariables coloring3537 7 = table3537 7 := by rfl

theorem table3537_entry008 :
    matchingVariables coloring3537 8 = table3537 8 := by rfl

theorem table3537_entry009 :
    matchingVariables coloring3537 9 = table3537 9 := by rfl

theorem table3537_entry010 :
    matchingVariables coloring3537 10 = table3537 10 := by rfl

theorem table3537_entry011 :
    matchingVariables coloring3537 11 = table3537 11 := by rfl

theorem table3537_entry012 :
    matchingVariables coloring3537 12 = table3537 12 := by rfl

theorem table3537_entry013 :
    matchingVariables coloring3537 13 = table3537 13 := by rfl

theorem table3537_entry014 :
    matchingVariables coloring3537 14 = table3537 14 := by rfl

theorem table3537_entry015 :
    matchingVariables coloring3537 15 = table3537 15 := by rfl

theorem table3537_entry016 :
    matchingVariables coloring3537 16 = table3537 16 := by rfl

theorem table3537_entry017 :
    matchingVariables coloring3537 17 = table3537 17 := by rfl

theorem table3537_entry018 :
    matchingVariables coloring3537 18 = table3537 18 := by rfl

theorem table3537_entry019 :
    matchingVariables coloring3537 19 = table3537 19 := by rfl

theorem table3537_entry020 :
    matchingVariables coloring3537 20 = table3537 20 := by rfl

theorem table3537_entry021 :
    matchingVariables coloring3537 21 = table3537 21 := by rfl

theorem table3537_entry022 :
    matchingVariables coloring3537 22 = table3537 22 := by rfl

theorem table3537_entry023 :
    matchingVariables coloring3537 23 = table3537 23 := by rfl

theorem table3537_entry024 :
    matchingVariables coloring3537 24 = table3537 24 := by rfl

theorem table3537_entry025 :
    matchingVariables coloring3537 25 = table3537 25 := by rfl

theorem table3537_entry026 :
    matchingVariables coloring3537 26 = table3537 26 := by rfl

theorem table3537_entry027 :
    matchingVariables coloring3537 27 = table3537 27 := by rfl

theorem table3537_entry028 :
    matchingVariables coloring3537 28 = table3537 28 := by rfl

theorem table3537_entry029 :
    matchingVariables coloring3537 29 = table3537 29 := by rfl

theorem table3537_entry030 :
    matchingVariables coloring3537 30 = table3537 30 := by rfl

theorem table3537_entry031 :
    matchingVariables coloring3537 31 = table3537 31 := by rfl

theorem table3537_entry032 :
    matchingVariables coloring3537 32 = table3537 32 := by rfl

theorem table3537_entry033 :
    matchingVariables coloring3537 33 = table3537 33 := by rfl

theorem table3537_entry034 :
    matchingVariables coloring3537 34 = table3537 34 := by rfl

theorem table3537_entry035 :
    matchingVariables coloring3537 35 = table3537 35 := by rfl

theorem table3537_entry036 :
    matchingVariables coloring3537 36 = table3537 36 := by rfl

theorem table3537_entry037 :
    matchingVariables coloring3537 37 = table3537 37 := by rfl

theorem table3537_entry038 :
    matchingVariables coloring3537 38 = table3537 38 := by rfl

theorem table3537_entry039 :
    matchingVariables coloring3537 39 = table3537 39 := by rfl

theorem table3537_entry040 :
    matchingVariables coloring3537 40 = table3537 40 := by rfl

theorem table3537_entry041 :
    matchingVariables coloring3537 41 = table3537 41 := by rfl

theorem table3537_entry042 :
    matchingVariables coloring3537 42 = table3537 42 := by rfl

theorem table3537_entry043 :
    matchingVariables coloring3537 43 = table3537 43 := by rfl

theorem table3537_entry044 :
    matchingVariables coloring3537 44 = table3537 44 := by rfl

theorem table3537_entry045 :
    matchingVariables coloring3537 45 = table3537 45 := by rfl

theorem table3537_entry046 :
    matchingVariables coloring3537 46 = table3537 46 := by rfl

theorem table3537_entry047 :
    matchingVariables coloring3537 47 = table3537 47 := by rfl

theorem table3537_entry048 :
    matchingVariables coloring3537 48 = table3537 48 := by rfl

theorem table3537_entry049 :
    matchingVariables coloring3537 49 = table3537 49 := by rfl

theorem table3537_entry050 :
    matchingVariables coloring3537 50 = table3537 50 := by rfl

theorem table3537_entry051 :
    matchingVariables coloring3537 51 = table3537 51 := by rfl

theorem table3537_entry052 :
    matchingVariables coloring3537 52 = table3537 52 := by rfl

theorem table3537_entry053 :
    matchingVariables coloring3537 53 = table3537 53 := by rfl

theorem table3537_entry054 :
    matchingVariables coloring3537 54 = table3537 54 := by rfl

theorem table3537_entry055 :
    matchingVariables coloring3537 55 = table3537 55 := by rfl

theorem table3537_entry056 :
    matchingVariables coloring3537 56 = table3537 56 := by rfl

theorem table3537_entry057 :
    matchingVariables coloring3537 57 = table3537 57 := by rfl

theorem table3537_entry058 :
    matchingVariables coloring3537 58 = table3537 58 := by rfl

theorem table3537_entry059 :
    matchingVariables coloring3537 59 = table3537 59 := by rfl

theorem table3537_entry060 :
    matchingVariables coloring3537 60 = table3537 60 := by rfl

theorem table3537_entry061 :
    matchingVariables coloring3537 61 = table3537 61 := by rfl

theorem table3537_entry062 :
    matchingVariables coloring3537 62 = table3537 62 := by rfl

theorem table3537_entry063 :
    matchingVariables coloring3537 63 = table3537 63 := by rfl

theorem table3537_entry064 :
    matchingVariables coloring3537 64 = table3537 64 := by rfl

theorem table3537_entry065 :
    matchingVariables coloring3537 65 = table3537 65 := by rfl

theorem table3537_entry066 :
    matchingVariables coloring3537 66 = table3537 66 := by rfl

theorem table3537_entry067 :
    matchingVariables coloring3537 67 = table3537 67 := by rfl

theorem table3537_entry068 :
    matchingVariables coloring3537 68 = table3537 68 := by rfl

theorem table3537_entry069 :
    matchingVariables coloring3537 69 = table3537 69 := by rfl

theorem table3537_entry070 :
    matchingVariables coloring3537 70 = table3537 70 := by rfl

theorem table3537_entry071 :
    matchingVariables coloring3537 71 = table3537 71 := by rfl

theorem table3537_entry072 :
    matchingVariables coloring3537 72 = table3537 72 := by rfl

theorem table3537_entry073 :
    matchingVariables coloring3537 73 = table3537 73 := by rfl

theorem table3537_entry074 :
    matchingVariables coloring3537 74 = table3537 74 := by rfl

theorem table3537_entry075 :
    matchingVariables coloring3537 75 = table3537 75 := by rfl

theorem table3537_entry076 :
    matchingVariables coloring3537 76 = table3537 76 := by rfl

theorem table3537_entry077 :
    matchingVariables coloring3537 77 = table3537 77 := by rfl

theorem table3537_entry078 :
    matchingVariables coloring3537 78 = table3537 78 := by rfl

theorem table3537_entry079 :
    matchingVariables coloring3537 79 = table3537 79 := by rfl

theorem table3537_entry080 :
    matchingVariables coloring3537 80 = table3537 80 := by rfl

theorem table3537_entry081 :
    matchingVariables coloring3537 81 = table3537 81 := by rfl

theorem table3537_entry082 :
    matchingVariables coloring3537 82 = table3537 82 := by rfl

theorem table3537_entry083 :
    matchingVariables coloring3537 83 = table3537 83 := by rfl

theorem table3537_entry084 :
    matchingVariables coloring3537 84 = table3537 84 := by rfl

theorem table3537_entry085 :
    matchingVariables coloring3537 85 = table3537 85 := by rfl

theorem table3537_entry086 :
    matchingVariables coloring3537 86 = table3537 86 := by rfl

theorem table3537_entry087 :
    matchingVariables coloring3537 87 = table3537 87 := by rfl

theorem table3537_entry088 :
    matchingVariables coloring3537 88 = table3537 88 := by rfl

theorem table3537_entry089 :
    matchingVariables coloring3537 89 = table3537 89 := by rfl

theorem table3537_entry090 :
    matchingVariables coloring3537 90 = table3537 90 := by rfl

theorem table3537_entry091 :
    matchingVariables coloring3537 91 = table3537 91 := by rfl

theorem table3537_entry092 :
    matchingVariables coloring3537 92 = table3537 92 := by rfl

theorem table3537_entry093 :
    matchingVariables coloring3537 93 = table3537 93 := by rfl

theorem table3537_entry094 :
    matchingVariables coloring3537 94 = table3537 94 := by rfl

theorem table3537_entry095 :
    matchingVariables coloring3537 95 = table3537 95 := by rfl

theorem table3537_entry096 :
    matchingVariables coloring3537 96 = table3537 96 := by rfl

theorem table3537_entry097 :
    matchingVariables coloring3537 97 = table3537 97 := by rfl

theorem table3537_entry098 :
    matchingVariables coloring3537 98 = table3537 98 := by rfl

theorem table3537_entry099 :
    matchingVariables coloring3537 99 = table3537 99 := by rfl

theorem table3537_entry100 :
    matchingVariables coloring3537 100 = table3537 100 := by rfl

theorem table3537_entry101 :
    matchingVariables coloring3537 101 = table3537 101 := by rfl

theorem table3537_entry102 :
    matchingVariables coloring3537 102 = table3537 102 := by rfl

theorem table3537_entry103 :
    matchingVariables coloring3537 103 = table3537 103 := by rfl

theorem table3537_entry104 :
    matchingVariables coloring3537 104 = table3537 104 := by rfl

theorem table3537_complete : ∀ m, matchingVariables coloring3537 m = table3537 m := by
  intro m
  fin_cases m
  · exact table3537_entry000
  · exact table3537_entry001
  · exact table3537_entry002
  · exact table3537_entry003
  · exact table3537_entry004
  · exact table3537_entry005
  · exact table3537_entry006
  · exact table3537_entry007
  · exact table3537_entry008
  · exact table3537_entry009
  · exact table3537_entry010
  · exact table3537_entry011
  · exact table3537_entry012
  · exact table3537_entry013
  · exact table3537_entry014
  · exact table3537_entry015
  · exact table3537_entry016
  · exact table3537_entry017
  · exact table3537_entry018
  · exact table3537_entry019
  · exact table3537_entry020
  · exact table3537_entry021
  · exact table3537_entry022
  · exact table3537_entry023
  · exact table3537_entry024
  · exact table3537_entry025
  · exact table3537_entry026
  · exact table3537_entry027
  · exact table3537_entry028
  · exact table3537_entry029
  · exact table3537_entry030
  · exact table3537_entry031
  · exact table3537_entry032
  · exact table3537_entry033
  · exact table3537_entry034
  · exact table3537_entry035
  · exact table3537_entry036
  · exact table3537_entry037
  · exact table3537_entry038
  · exact table3537_entry039
  · exact table3537_entry040
  · exact table3537_entry041
  · exact table3537_entry042
  · exact table3537_entry043
  · exact table3537_entry044
  · exact table3537_entry045
  · exact table3537_entry046
  · exact table3537_entry047
  · exact table3537_entry048
  · exact table3537_entry049
  · exact table3537_entry050
  · exact table3537_entry051
  · exact table3537_entry052
  · exact table3537_entry053
  · exact table3537_entry054
  · exact table3537_entry055
  · exact table3537_entry056
  · exact table3537_entry057
  · exact table3537_entry058
  · exact table3537_entry059
  · exact table3537_entry060
  · exact table3537_entry061
  · exact table3537_entry062
  · exact table3537_entry063
  · exact table3537_entry064
  · exact table3537_entry065
  · exact table3537_entry066
  · exact table3537_entry067
  · exact table3537_entry068
  · exact table3537_entry069
  · exact table3537_entry070
  · exact table3537_entry071
  · exact table3537_entry072
  · exact table3537_entry073
  · exact table3537_entry074
  · exact table3537_entry075
  · exact table3537_entry076
  · exact table3537_entry077
  · exact table3537_entry078
  · exact table3537_entry079
  · exact table3537_entry080
  · exact table3537_entry081
  · exact table3537_entry082
  · exact table3537_entry083
  · exact table3537_entry084
  · exact table3537_entry085
  · exact table3537_entry086
  · exact table3537_entry087
  · exact table3537_entry088
  · exact table3537_entry089
  · exact table3537_entry090
  · exact table3537_entry091
  · exact table3537_entry092
  · exact table3537_entry093
  · exact table3537_entry094
  · exact table3537_entry095
  · exact table3537_entry096
  · exact table3537_entry097
  · exact table3537_entry098
  · exact table3537_entry099
  · exact table3537_entry100
  · exact table3537_entry101
  · exact table3537_entry102
  · exact table3537_entry103
  · exact table3537_entry104

#print axioms table3537_complete

def expanded3537 : Polynomial 143 := [(1, exponentOfVariables [0, 59, 103, 138]),
  (1, exponentOfVariables [0, 59, 111, 132]),
  (1, exponentOfVariables [0, 71, 89, 138]),
  (1, exponentOfVariables [9, 40, 89, 138]),
  (1, exponentOfVariables [9, 48, 89, 132]),
  (1, exponentOfVariables [20, 48, 71, 119])]

theorem table3537_expanded : tablePolynomial table3537 = expanded3537 := by
  rfl

theorem table3537_exponent00 :
    exponentOfVariables (n := 143) [0, 59, 103, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 103 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3537_exponent01 :
    exponentOfVariables (n := 143) [0, 59, 111, 132] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 111 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3537_exponent02 :
    exponentOfVariables (n := 143) [0, 71, 89, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 71 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3537_exponent03 :
    exponentOfVariables (n := 143) [9, 40, 89, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 40 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3537_exponent04 :
    exponentOfVariables (n := 143) [9, 48, 89, 132] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 89 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3537_exponent05 :
    exponentOfVariables (n := 143) [20, 48, 71, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 71 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3537_polynomial : expanded3537 = amplitude3537 := by
  simp only [expanded3537, amplitude3537, table3537_exponent00, table3537_exponent01, table3537_exponent02, table3537_exponent03, table3537_exponent04, table3537_exponent05]

theorem premiseCheck042 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3537)) p042 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
