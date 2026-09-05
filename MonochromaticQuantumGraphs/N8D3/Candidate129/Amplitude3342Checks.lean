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

def coloring3342 : Fin 8 → Fin 3 := ![0, 1, 2, 0, 2, 1, 1, 1]

def table3342 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 63, 105, 138] else
    if m.val = 6 then some [1, 76, 84, 138] else
    if m.val = 21 then some [11, 42, 84, 138] else
    if m.val = 24 then some [11, 51, 84, 129] else
    if m.val = 25 then some [11, 51, 92, 122] else
    if m.val = 40 then some [18, 51, 76, 122] else none

theorem table3342_entry000 :
    matchingVariables coloring3342 0 = table3342 0 := by rfl

theorem table3342_entry001 :
    matchingVariables coloring3342 1 = table3342 1 := by rfl

theorem table3342_entry002 :
    matchingVariables coloring3342 2 = table3342 2 := by rfl

theorem table3342_entry003 :
    matchingVariables coloring3342 3 = table3342 3 := by rfl

theorem table3342_entry004 :
    matchingVariables coloring3342 4 = table3342 4 := by rfl

theorem table3342_entry005 :
    matchingVariables coloring3342 5 = table3342 5 := by rfl

theorem table3342_entry006 :
    matchingVariables coloring3342 6 = table3342 6 := by rfl

theorem table3342_entry007 :
    matchingVariables coloring3342 7 = table3342 7 := by rfl

theorem table3342_entry008 :
    matchingVariables coloring3342 8 = table3342 8 := by rfl

theorem table3342_entry009 :
    matchingVariables coloring3342 9 = table3342 9 := by rfl

theorem table3342_entry010 :
    matchingVariables coloring3342 10 = table3342 10 := by rfl

theorem table3342_entry011 :
    matchingVariables coloring3342 11 = table3342 11 := by rfl

theorem table3342_entry012 :
    matchingVariables coloring3342 12 = table3342 12 := by rfl

theorem table3342_entry013 :
    matchingVariables coloring3342 13 = table3342 13 := by rfl

theorem table3342_entry014 :
    matchingVariables coloring3342 14 = table3342 14 := by rfl

theorem table3342_entry015 :
    matchingVariables coloring3342 15 = table3342 15 := by rfl

theorem table3342_entry016 :
    matchingVariables coloring3342 16 = table3342 16 := by rfl

theorem table3342_entry017 :
    matchingVariables coloring3342 17 = table3342 17 := by rfl

theorem table3342_entry018 :
    matchingVariables coloring3342 18 = table3342 18 := by rfl

theorem table3342_entry019 :
    matchingVariables coloring3342 19 = table3342 19 := by rfl

theorem table3342_entry020 :
    matchingVariables coloring3342 20 = table3342 20 := by rfl

theorem table3342_entry021 :
    matchingVariables coloring3342 21 = table3342 21 := by rfl

theorem table3342_entry022 :
    matchingVariables coloring3342 22 = table3342 22 := by rfl

theorem table3342_entry023 :
    matchingVariables coloring3342 23 = table3342 23 := by rfl

theorem table3342_entry024 :
    matchingVariables coloring3342 24 = table3342 24 := by rfl

theorem table3342_entry025 :
    matchingVariables coloring3342 25 = table3342 25 := by rfl

theorem table3342_entry026 :
    matchingVariables coloring3342 26 = table3342 26 := by rfl

theorem table3342_entry027 :
    matchingVariables coloring3342 27 = table3342 27 := by rfl

theorem table3342_entry028 :
    matchingVariables coloring3342 28 = table3342 28 := by rfl

theorem table3342_entry029 :
    matchingVariables coloring3342 29 = table3342 29 := by rfl

theorem table3342_entry030 :
    matchingVariables coloring3342 30 = table3342 30 := by rfl

theorem table3342_entry031 :
    matchingVariables coloring3342 31 = table3342 31 := by rfl

theorem table3342_entry032 :
    matchingVariables coloring3342 32 = table3342 32 := by rfl

theorem table3342_entry033 :
    matchingVariables coloring3342 33 = table3342 33 := by rfl

theorem table3342_entry034 :
    matchingVariables coloring3342 34 = table3342 34 := by rfl

theorem table3342_entry035 :
    matchingVariables coloring3342 35 = table3342 35 := by rfl

theorem table3342_entry036 :
    matchingVariables coloring3342 36 = table3342 36 := by rfl

theorem table3342_entry037 :
    matchingVariables coloring3342 37 = table3342 37 := by rfl

theorem table3342_entry038 :
    matchingVariables coloring3342 38 = table3342 38 := by rfl

theorem table3342_entry039 :
    matchingVariables coloring3342 39 = table3342 39 := by rfl

theorem table3342_entry040 :
    matchingVariables coloring3342 40 = table3342 40 := by rfl

theorem table3342_entry041 :
    matchingVariables coloring3342 41 = table3342 41 := by rfl

theorem table3342_entry042 :
    matchingVariables coloring3342 42 = table3342 42 := by rfl

theorem table3342_entry043 :
    matchingVariables coloring3342 43 = table3342 43 := by rfl

theorem table3342_entry044 :
    matchingVariables coloring3342 44 = table3342 44 := by rfl

theorem table3342_entry045 :
    matchingVariables coloring3342 45 = table3342 45 := by rfl

theorem table3342_entry046 :
    matchingVariables coloring3342 46 = table3342 46 := by rfl

theorem table3342_entry047 :
    matchingVariables coloring3342 47 = table3342 47 := by rfl

theorem table3342_entry048 :
    matchingVariables coloring3342 48 = table3342 48 := by rfl

theorem table3342_entry049 :
    matchingVariables coloring3342 49 = table3342 49 := by rfl

theorem table3342_entry050 :
    matchingVariables coloring3342 50 = table3342 50 := by rfl

theorem table3342_entry051 :
    matchingVariables coloring3342 51 = table3342 51 := by rfl

theorem table3342_entry052 :
    matchingVariables coloring3342 52 = table3342 52 := by rfl

theorem table3342_entry053 :
    matchingVariables coloring3342 53 = table3342 53 := by rfl

theorem table3342_entry054 :
    matchingVariables coloring3342 54 = table3342 54 := by rfl

theorem table3342_entry055 :
    matchingVariables coloring3342 55 = table3342 55 := by rfl

theorem table3342_entry056 :
    matchingVariables coloring3342 56 = table3342 56 := by rfl

theorem table3342_entry057 :
    matchingVariables coloring3342 57 = table3342 57 := by rfl

theorem table3342_entry058 :
    matchingVariables coloring3342 58 = table3342 58 := by rfl

theorem table3342_entry059 :
    matchingVariables coloring3342 59 = table3342 59 := by rfl

theorem table3342_entry060 :
    matchingVariables coloring3342 60 = table3342 60 := by rfl

theorem table3342_entry061 :
    matchingVariables coloring3342 61 = table3342 61 := by rfl

theorem table3342_entry062 :
    matchingVariables coloring3342 62 = table3342 62 := by rfl

theorem table3342_entry063 :
    matchingVariables coloring3342 63 = table3342 63 := by rfl

theorem table3342_entry064 :
    matchingVariables coloring3342 64 = table3342 64 := by rfl

theorem table3342_entry065 :
    matchingVariables coloring3342 65 = table3342 65 := by rfl

theorem table3342_entry066 :
    matchingVariables coloring3342 66 = table3342 66 := by rfl

theorem table3342_entry067 :
    matchingVariables coloring3342 67 = table3342 67 := by rfl

theorem table3342_entry068 :
    matchingVariables coloring3342 68 = table3342 68 := by rfl

theorem table3342_entry069 :
    matchingVariables coloring3342 69 = table3342 69 := by rfl

theorem table3342_entry070 :
    matchingVariables coloring3342 70 = table3342 70 := by rfl

theorem table3342_entry071 :
    matchingVariables coloring3342 71 = table3342 71 := by rfl

theorem table3342_entry072 :
    matchingVariables coloring3342 72 = table3342 72 := by rfl

theorem table3342_entry073 :
    matchingVariables coloring3342 73 = table3342 73 := by rfl

theorem table3342_entry074 :
    matchingVariables coloring3342 74 = table3342 74 := by rfl

theorem table3342_entry075 :
    matchingVariables coloring3342 75 = table3342 75 := by rfl

theorem table3342_entry076 :
    matchingVariables coloring3342 76 = table3342 76 := by rfl

theorem table3342_entry077 :
    matchingVariables coloring3342 77 = table3342 77 := by rfl

theorem table3342_entry078 :
    matchingVariables coloring3342 78 = table3342 78 := by rfl

theorem table3342_entry079 :
    matchingVariables coloring3342 79 = table3342 79 := by rfl

theorem table3342_entry080 :
    matchingVariables coloring3342 80 = table3342 80 := by rfl

theorem table3342_entry081 :
    matchingVariables coloring3342 81 = table3342 81 := by rfl

theorem table3342_entry082 :
    matchingVariables coloring3342 82 = table3342 82 := by rfl

theorem table3342_entry083 :
    matchingVariables coloring3342 83 = table3342 83 := by rfl

theorem table3342_entry084 :
    matchingVariables coloring3342 84 = table3342 84 := by rfl

theorem table3342_entry085 :
    matchingVariables coloring3342 85 = table3342 85 := by rfl

theorem table3342_entry086 :
    matchingVariables coloring3342 86 = table3342 86 := by rfl

theorem table3342_entry087 :
    matchingVariables coloring3342 87 = table3342 87 := by rfl

theorem table3342_entry088 :
    matchingVariables coloring3342 88 = table3342 88 := by rfl

theorem table3342_entry089 :
    matchingVariables coloring3342 89 = table3342 89 := by rfl

theorem table3342_entry090 :
    matchingVariables coloring3342 90 = table3342 90 := by rfl

theorem table3342_entry091 :
    matchingVariables coloring3342 91 = table3342 91 := by rfl

theorem table3342_entry092 :
    matchingVariables coloring3342 92 = table3342 92 := by rfl

theorem table3342_entry093 :
    matchingVariables coloring3342 93 = table3342 93 := by rfl

theorem table3342_entry094 :
    matchingVariables coloring3342 94 = table3342 94 := by rfl

theorem table3342_entry095 :
    matchingVariables coloring3342 95 = table3342 95 := by rfl

theorem table3342_entry096 :
    matchingVariables coloring3342 96 = table3342 96 := by rfl

theorem table3342_entry097 :
    matchingVariables coloring3342 97 = table3342 97 := by rfl

theorem table3342_entry098 :
    matchingVariables coloring3342 98 = table3342 98 := by rfl

theorem table3342_entry099 :
    matchingVariables coloring3342 99 = table3342 99 := by rfl

theorem table3342_entry100 :
    matchingVariables coloring3342 100 = table3342 100 := by rfl

theorem table3342_entry101 :
    matchingVariables coloring3342 101 = table3342 101 := by rfl

theorem table3342_entry102 :
    matchingVariables coloring3342 102 = table3342 102 := by rfl

theorem table3342_entry103 :
    matchingVariables coloring3342 103 = table3342 103 := by rfl

theorem table3342_entry104 :
    matchingVariables coloring3342 104 = table3342 104 := by rfl

theorem table3342_complete : ∀ m, matchingVariables coloring3342 m = table3342 m := by
  intro m
  fin_cases m
  · exact table3342_entry000
  · exact table3342_entry001
  · exact table3342_entry002
  · exact table3342_entry003
  · exact table3342_entry004
  · exact table3342_entry005
  · exact table3342_entry006
  · exact table3342_entry007
  · exact table3342_entry008
  · exact table3342_entry009
  · exact table3342_entry010
  · exact table3342_entry011
  · exact table3342_entry012
  · exact table3342_entry013
  · exact table3342_entry014
  · exact table3342_entry015
  · exact table3342_entry016
  · exact table3342_entry017
  · exact table3342_entry018
  · exact table3342_entry019
  · exact table3342_entry020
  · exact table3342_entry021
  · exact table3342_entry022
  · exact table3342_entry023
  · exact table3342_entry024
  · exact table3342_entry025
  · exact table3342_entry026
  · exact table3342_entry027
  · exact table3342_entry028
  · exact table3342_entry029
  · exact table3342_entry030
  · exact table3342_entry031
  · exact table3342_entry032
  · exact table3342_entry033
  · exact table3342_entry034
  · exact table3342_entry035
  · exact table3342_entry036
  · exact table3342_entry037
  · exact table3342_entry038
  · exact table3342_entry039
  · exact table3342_entry040
  · exact table3342_entry041
  · exact table3342_entry042
  · exact table3342_entry043
  · exact table3342_entry044
  · exact table3342_entry045
  · exact table3342_entry046
  · exact table3342_entry047
  · exact table3342_entry048
  · exact table3342_entry049
  · exact table3342_entry050
  · exact table3342_entry051
  · exact table3342_entry052
  · exact table3342_entry053
  · exact table3342_entry054
  · exact table3342_entry055
  · exact table3342_entry056
  · exact table3342_entry057
  · exact table3342_entry058
  · exact table3342_entry059
  · exact table3342_entry060
  · exact table3342_entry061
  · exact table3342_entry062
  · exact table3342_entry063
  · exact table3342_entry064
  · exact table3342_entry065
  · exact table3342_entry066
  · exact table3342_entry067
  · exact table3342_entry068
  · exact table3342_entry069
  · exact table3342_entry070
  · exact table3342_entry071
  · exact table3342_entry072
  · exact table3342_entry073
  · exact table3342_entry074
  · exact table3342_entry075
  · exact table3342_entry076
  · exact table3342_entry077
  · exact table3342_entry078
  · exact table3342_entry079
  · exact table3342_entry080
  · exact table3342_entry081
  · exact table3342_entry082
  · exact table3342_entry083
  · exact table3342_entry084
  · exact table3342_entry085
  · exact table3342_entry086
  · exact table3342_entry087
  · exact table3342_entry088
  · exact table3342_entry089
  · exact table3342_entry090
  · exact table3342_entry091
  · exact table3342_entry092
  · exact table3342_entry093
  · exact table3342_entry094
  · exact table3342_entry095
  · exact table3342_entry096
  · exact table3342_entry097
  · exact table3342_entry098
  · exact table3342_entry099
  · exact table3342_entry100
  · exact table3342_entry101
  · exact table3342_entry102
  · exact table3342_entry103
  · exact table3342_entry104

#print axioms table3342_complete

def expanded3342 : Polynomial 143 := [(1, exponentOfVariables [1, 63, 105, 138]),
  (1, exponentOfVariables [1, 76, 84, 138]),
  (1, exponentOfVariables [11, 42, 84, 138]),
  (1, exponentOfVariables [11, 51, 84, 129]),
  (1, exponentOfVariables [11, 51, 92, 122]),
  (1, exponentOfVariables [18, 51, 76, 122])]

theorem table3342_expanded : tablePolynomial table3342 = expanded3342 := by
  rfl

theorem table3342_exponent00 :
    exponentOfVariables (n := 143) [1, 63, 105, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 63 then (1) else if i.val = 105 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3342_exponent01 :
    exponentOfVariables (n := 143) [1, 76, 84, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 76 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3342_exponent02 :
    exponentOfVariables (n := 143) [11, 42, 84, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 42 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3342_exponent03 :
    exponentOfVariables (n := 143) [11, 51, 84, 129] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 84 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3342_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 92, 122] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 92 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3342_exponent05 :
    exponentOfVariables (n := 143) [18, 51, 76, 122] =
      (fun i => if i.val = 18 then (1) else if i.val = 51 then (1) else if i.val = 76 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3342_polynomial : expanded3342 = amplitude3342 := by
  simp only [expanded3342, amplitude3342, table3342_exponent00, table3342_exponent01, table3342_exponent02, table3342_exponent03, table3342_exponent04, table3342_exponent05]

theorem premiseCheck078 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3342)) p078 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
