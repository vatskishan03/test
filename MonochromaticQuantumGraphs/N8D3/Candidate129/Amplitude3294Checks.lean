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

def coloring3294 : Fin 8 → Fin 3 := ![0, 0, 0, 2, 1, 1, 1, 1]

def table3294 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 59, 102, 138] else
    if m.val = 1 then some [0, 59, 111, 129] else
    if m.val = 6 then some [0, 70, 89, 138] else
    if m.val = 21 then some [9, 39, 89, 138] else
    if m.val = 24 then some [9, 48, 89, 129] else
    if m.val = 40 then some [20, 48, 70, 119] else none

theorem table3294_entry000 :
    matchingVariables coloring3294 0 = table3294 0 := by rfl

theorem table3294_entry001 :
    matchingVariables coloring3294 1 = table3294 1 := by rfl

theorem table3294_entry002 :
    matchingVariables coloring3294 2 = table3294 2 := by rfl

theorem table3294_entry003 :
    matchingVariables coloring3294 3 = table3294 3 := by rfl

theorem table3294_entry004 :
    matchingVariables coloring3294 4 = table3294 4 := by rfl

theorem table3294_entry005 :
    matchingVariables coloring3294 5 = table3294 5 := by rfl

theorem table3294_entry006 :
    matchingVariables coloring3294 6 = table3294 6 := by rfl

theorem table3294_entry007 :
    matchingVariables coloring3294 7 = table3294 7 := by rfl

theorem table3294_entry008 :
    matchingVariables coloring3294 8 = table3294 8 := by rfl

theorem table3294_entry009 :
    matchingVariables coloring3294 9 = table3294 9 := by rfl

theorem table3294_entry010 :
    matchingVariables coloring3294 10 = table3294 10 := by rfl

theorem table3294_entry011 :
    matchingVariables coloring3294 11 = table3294 11 := by rfl

theorem table3294_entry012 :
    matchingVariables coloring3294 12 = table3294 12 := by rfl

theorem table3294_entry013 :
    matchingVariables coloring3294 13 = table3294 13 := by rfl

theorem table3294_entry014 :
    matchingVariables coloring3294 14 = table3294 14 := by rfl

theorem table3294_entry015 :
    matchingVariables coloring3294 15 = table3294 15 := by rfl

theorem table3294_entry016 :
    matchingVariables coloring3294 16 = table3294 16 := by rfl

theorem table3294_entry017 :
    matchingVariables coloring3294 17 = table3294 17 := by rfl

theorem table3294_entry018 :
    matchingVariables coloring3294 18 = table3294 18 := by rfl

theorem table3294_entry019 :
    matchingVariables coloring3294 19 = table3294 19 := by rfl

theorem table3294_entry020 :
    matchingVariables coloring3294 20 = table3294 20 := by rfl

theorem table3294_entry021 :
    matchingVariables coloring3294 21 = table3294 21 := by rfl

theorem table3294_entry022 :
    matchingVariables coloring3294 22 = table3294 22 := by rfl

theorem table3294_entry023 :
    matchingVariables coloring3294 23 = table3294 23 := by rfl

theorem table3294_entry024 :
    matchingVariables coloring3294 24 = table3294 24 := by rfl

theorem table3294_entry025 :
    matchingVariables coloring3294 25 = table3294 25 := by rfl

theorem table3294_entry026 :
    matchingVariables coloring3294 26 = table3294 26 := by rfl

theorem table3294_entry027 :
    matchingVariables coloring3294 27 = table3294 27 := by rfl

theorem table3294_entry028 :
    matchingVariables coloring3294 28 = table3294 28 := by rfl

theorem table3294_entry029 :
    matchingVariables coloring3294 29 = table3294 29 := by rfl

theorem table3294_entry030 :
    matchingVariables coloring3294 30 = table3294 30 := by rfl

theorem table3294_entry031 :
    matchingVariables coloring3294 31 = table3294 31 := by rfl

theorem table3294_entry032 :
    matchingVariables coloring3294 32 = table3294 32 := by rfl

theorem table3294_entry033 :
    matchingVariables coloring3294 33 = table3294 33 := by rfl

theorem table3294_entry034 :
    matchingVariables coloring3294 34 = table3294 34 := by rfl

theorem table3294_entry035 :
    matchingVariables coloring3294 35 = table3294 35 := by rfl

theorem table3294_entry036 :
    matchingVariables coloring3294 36 = table3294 36 := by rfl

theorem table3294_entry037 :
    matchingVariables coloring3294 37 = table3294 37 := by rfl

theorem table3294_entry038 :
    matchingVariables coloring3294 38 = table3294 38 := by rfl

theorem table3294_entry039 :
    matchingVariables coloring3294 39 = table3294 39 := by rfl

theorem table3294_entry040 :
    matchingVariables coloring3294 40 = table3294 40 := by rfl

theorem table3294_entry041 :
    matchingVariables coloring3294 41 = table3294 41 := by rfl

theorem table3294_entry042 :
    matchingVariables coloring3294 42 = table3294 42 := by rfl

theorem table3294_entry043 :
    matchingVariables coloring3294 43 = table3294 43 := by rfl

theorem table3294_entry044 :
    matchingVariables coloring3294 44 = table3294 44 := by rfl

theorem table3294_entry045 :
    matchingVariables coloring3294 45 = table3294 45 := by rfl

theorem table3294_entry046 :
    matchingVariables coloring3294 46 = table3294 46 := by rfl

theorem table3294_entry047 :
    matchingVariables coloring3294 47 = table3294 47 := by rfl

theorem table3294_entry048 :
    matchingVariables coloring3294 48 = table3294 48 := by rfl

theorem table3294_entry049 :
    matchingVariables coloring3294 49 = table3294 49 := by rfl

theorem table3294_entry050 :
    matchingVariables coloring3294 50 = table3294 50 := by rfl

theorem table3294_entry051 :
    matchingVariables coloring3294 51 = table3294 51 := by rfl

theorem table3294_entry052 :
    matchingVariables coloring3294 52 = table3294 52 := by rfl

theorem table3294_entry053 :
    matchingVariables coloring3294 53 = table3294 53 := by rfl

theorem table3294_entry054 :
    matchingVariables coloring3294 54 = table3294 54 := by rfl

theorem table3294_entry055 :
    matchingVariables coloring3294 55 = table3294 55 := by rfl

theorem table3294_entry056 :
    matchingVariables coloring3294 56 = table3294 56 := by rfl

theorem table3294_entry057 :
    matchingVariables coloring3294 57 = table3294 57 := by rfl

theorem table3294_entry058 :
    matchingVariables coloring3294 58 = table3294 58 := by rfl

theorem table3294_entry059 :
    matchingVariables coloring3294 59 = table3294 59 := by rfl

theorem table3294_entry060 :
    matchingVariables coloring3294 60 = table3294 60 := by rfl

theorem table3294_entry061 :
    matchingVariables coloring3294 61 = table3294 61 := by rfl

theorem table3294_entry062 :
    matchingVariables coloring3294 62 = table3294 62 := by rfl

theorem table3294_entry063 :
    matchingVariables coloring3294 63 = table3294 63 := by rfl

theorem table3294_entry064 :
    matchingVariables coloring3294 64 = table3294 64 := by rfl

theorem table3294_entry065 :
    matchingVariables coloring3294 65 = table3294 65 := by rfl

theorem table3294_entry066 :
    matchingVariables coloring3294 66 = table3294 66 := by rfl

theorem table3294_entry067 :
    matchingVariables coloring3294 67 = table3294 67 := by rfl

theorem table3294_entry068 :
    matchingVariables coloring3294 68 = table3294 68 := by rfl

theorem table3294_entry069 :
    matchingVariables coloring3294 69 = table3294 69 := by rfl

theorem table3294_entry070 :
    matchingVariables coloring3294 70 = table3294 70 := by rfl

theorem table3294_entry071 :
    matchingVariables coloring3294 71 = table3294 71 := by rfl

theorem table3294_entry072 :
    matchingVariables coloring3294 72 = table3294 72 := by rfl

theorem table3294_entry073 :
    matchingVariables coloring3294 73 = table3294 73 := by rfl

theorem table3294_entry074 :
    matchingVariables coloring3294 74 = table3294 74 := by rfl

theorem table3294_entry075 :
    matchingVariables coloring3294 75 = table3294 75 := by rfl

theorem table3294_entry076 :
    matchingVariables coloring3294 76 = table3294 76 := by rfl

theorem table3294_entry077 :
    matchingVariables coloring3294 77 = table3294 77 := by rfl

theorem table3294_entry078 :
    matchingVariables coloring3294 78 = table3294 78 := by rfl

theorem table3294_entry079 :
    matchingVariables coloring3294 79 = table3294 79 := by rfl

theorem table3294_entry080 :
    matchingVariables coloring3294 80 = table3294 80 := by rfl

theorem table3294_entry081 :
    matchingVariables coloring3294 81 = table3294 81 := by rfl

theorem table3294_entry082 :
    matchingVariables coloring3294 82 = table3294 82 := by rfl

theorem table3294_entry083 :
    matchingVariables coloring3294 83 = table3294 83 := by rfl

theorem table3294_entry084 :
    matchingVariables coloring3294 84 = table3294 84 := by rfl

theorem table3294_entry085 :
    matchingVariables coloring3294 85 = table3294 85 := by rfl

theorem table3294_entry086 :
    matchingVariables coloring3294 86 = table3294 86 := by rfl

theorem table3294_entry087 :
    matchingVariables coloring3294 87 = table3294 87 := by rfl

theorem table3294_entry088 :
    matchingVariables coloring3294 88 = table3294 88 := by rfl

theorem table3294_entry089 :
    matchingVariables coloring3294 89 = table3294 89 := by rfl

theorem table3294_entry090 :
    matchingVariables coloring3294 90 = table3294 90 := by rfl

theorem table3294_entry091 :
    matchingVariables coloring3294 91 = table3294 91 := by rfl

theorem table3294_entry092 :
    matchingVariables coloring3294 92 = table3294 92 := by rfl

theorem table3294_entry093 :
    matchingVariables coloring3294 93 = table3294 93 := by rfl

theorem table3294_entry094 :
    matchingVariables coloring3294 94 = table3294 94 := by rfl

theorem table3294_entry095 :
    matchingVariables coloring3294 95 = table3294 95 := by rfl

theorem table3294_entry096 :
    matchingVariables coloring3294 96 = table3294 96 := by rfl

theorem table3294_entry097 :
    matchingVariables coloring3294 97 = table3294 97 := by rfl

theorem table3294_entry098 :
    matchingVariables coloring3294 98 = table3294 98 := by rfl

theorem table3294_entry099 :
    matchingVariables coloring3294 99 = table3294 99 := by rfl

theorem table3294_entry100 :
    matchingVariables coloring3294 100 = table3294 100 := by rfl

theorem table3294_entry101 :
    matchingVariables coloring3294 101 = table3294 101 := by rfl

theorem table3294_entry102 :
    matchingVariables coloring3294 102 = table3294 102 := by rfl

theorem table3294_entry103 :
    matchingVariables coloring3294 103 = table3294 103 := by rfl

theorem table3294_entry104 :
    matchingVariables coloring3294 104 = table3294 104 := by rfl

theorem table3294_complete : ∀ m, matchingVariables coloring3294 m = table3294 m := by
  intro m
  fin_cases m
  · exact table3294_entry000
  · exact table3294_entry001
  · exact table3294_entry002
  · exact table3294_entry003
  · exact table3294_entry004
  · exact table3294_entry005
  · exact table3294_entry006
  · exact table3294_entry007
  · exact table3294_entry008
  · exact table3294_entry009
  · exact table3294_entry010
  · exact table3294_entry011
  · exact table3294_entry012
  · exact table3294_entry013
  · exact table3294_entry014
  · exact table3294_entry015
  · exact table3294_entry016
  · exact table3294_entry017
  · exact table3294_entry018
  · exact table3294_entry019
  · exact table3294_entry020
  · exact table3294_entry021
  · exact table3294_entry022
  · exact table3294_entry023
  · exact table3294_entry024
  · exact table3294_entry025
  · exact table3294_entry026
  · exact table3294_entry027
  · exact table3294_entry028
  · exact table3294_entry029
  · exact table3294_entry030
  · exact table3294_entry031
  · exact table3294_entry032
  · exact table3294_entry033
  · exact table3294_entry034
  · exact table3294_entry035
  · exact table3294_entry036
  · exact table3294_entry037
  · exact table3294_entry038
  · exact table3294_entry039
  · exact table3294_entry040
  · exact table3294_entry041
  · exact table3294_entry042
  · exact table3294_entry043
  · exact table3294_entry044
  · exact table3294_entry045
  · exact table3294_entry046
  · exact table3294_entry047
  · exact table3294_entry048
  · exact table3294_entry049
  · exact table3294_entry050
  · exact table3294_entry051
  · exact table3294_entry052
  · exact table3294_entry053
  · exact table3294_entry054
  · exact table3294_entry055
  · exact table3294_entry056
  · exact table3294_entry057
  · exact table3294_entry058
  · exact table3294_entry059
  · exact table3294_entry060
  · exact table3294_entry061
  · exact table3294_entry062
  · exact table3294_entry063
  · exact table3294_entry064
  · exact table3294_entry065
  · exact table3294_entry066
  · exact table3294_entry067
  · exact table3294_entry068
  · exact table3294_entry069
  · exact table3294_entry070
  · exact table3294_entry071
  · exact table3294_entry072
  · exact table3294_entry073
  · exact table3294_entry074
  · exact table3294_entry075
  · exact table3294_entry076
  · exact table3294_entry077
  · exact table3294_entry078
  · exact table3294_entry079
  · exact table3294_entry080
  · exact table3294_entry081
  · exact table3294_entry082
  · exact table3294_entry083
  · exact table3294_entry084
  · exact table3294_entry085
  · exact table3294_entry086
  · exact table3294_entry087
  · exact table3294_entry088
  · exact table3294_entry089
  · exact table3294_entry090
  · exact table3294_entry091
  · exact table3294_entry092
  · exact table3294_entry093
  · exact table3294_entry094
  · exact table3294_entry095
  · exact table3294_entry096
  · exact table3294_entry097
  · exact table3294_entry098
  · exact table3294_entry099
  · exact table3294_entry100
  · exact table3294_entry101
  · exact table3294_entry102
  · exact table3294_entry103
  · exact table3294_entry104

#print axioms table3294_complete

def expanded3294 : Polynomial 143 := [(1, exponentOfVariables [0, 59, 102, 138]),
  (1, exponentOfVariables [0, 59, 111, 129]),
  (1, exponentOfVariables [0, 70, 89, 138]),
  (1, exponentOfVariables [9, 39, 89, 138]),
  (1, exponentOfVariables [9, 48, 89, 129]),
  (1, exponentOfVariables [20, 48, 70, 119])]

theorem table3294_expanded : tablePolynomial table3294 = expanded3294 := by
  rfl

theorem table3294_exponent00 :
    exponentOfVariables (n := 143) [0, 59, 102, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 102 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3294_exponent01 :
    exponentOfVariables (n := 143) [0, 59, 111, 129] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 111 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3294_exponent02 :
    exponentOfVariables (n := 143) [0, 70, 89, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 70 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3294_exponent03 :
    exponentOfVariables (n := 143) [9, 39, 89, 138] =
      (fun i => if i.val = 9 then (1) else if i.val = 39 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3294_exponent04 :
    exponentOfVariables (n := 143) [9, 48, 89, 129] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 89 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3294_exponent05 :
    exponentOfVariables (n := 143) [20, 48, 70, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 70 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3294_polynomial : expanded3294 = amplitude3294 := by
  simp only [expanded3294, amplitude3294, table3294_exponent00, table3294_exponent01, table3294_exponent02, table3294_exponent03, table3294_exponent04, table3294_exponent05]

theorem premiseCheck034 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3294)) p034 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
