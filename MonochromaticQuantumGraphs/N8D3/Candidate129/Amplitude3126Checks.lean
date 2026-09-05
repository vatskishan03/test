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

def coloring3126 : Fin 8 → Fin 3 := ![0, 1, 2, 1, 2, 0, 1, 1]

def table3126 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 64, 104, 138] else
    if m.val = 6 then some [1, 75, 87, 138] else
    if m.val = 21 then some [11, 41, 87, 138] else
    if m.val = 24 then some [11, 51, 87, 126] else
    if m.val = 26 then some [11, 51, 97, 104] else
    if m.val = 40 then some [19, 51, 75, 122] else none

theorem table3126_entry000 :
    matchingVariables coloring3126 0 = table3126 0 := by rfl

theorem table3126_entry001 :
    matchingVariables coloring3126 1 = table3126 1 := by rfl

theorem table3126_entry002 :
    matchingVariables coloring3126 2 = table3126 2 := by rfl

theorem table3126_entry003 :
    matchingVariables coloring3126 3 = table3126 3 := by rfl

theorem table3126_entry004 :
    matchingVariables coloring3126 4 = table3126 4 := by rfl

theorem table3126_entry005 :
    matchingVariables coloring3126 5 = table3126 5 := by rfl

theorem table3126_entry006 :
    matchingVariables coloring3126 6 = table3126 6 := by rfl

theorem table3126_entry007 :
    matchingVariables coloring3126 7 = table3126 7 := by rfl

theorem table3126_entry008 :
    matchingVariables coloring3126 8 = table3126 8 := by rfl

theorem table3126_entry009 :
    matchingVariables coloring3126 9 = table3126 9 := by rfl

theorem table3126_entry010 :
    matchingVariables coloring3126 10 = table3126 10 := by rfl

theorem table3126_entry011 :
    matchingVariables coloring3126 11 = table3126 11 := by rfl

theorem table3126_entry012 :
    matchingVariables coloring3126 12 = table3126 12 := by rfl

theorem table3126_entry013 :
    matchingVariables coloring3126 13 = table3126 13 := by rfl

theorem table3126_entry014 :
    matchingVariables coloring3126 14 = table3126 14 := by rfl

theorem table3126_entry015 :
    matchingVariables coloring3126 15 = table3126 15 := by rfl

theorem table3126_entry016 :
    matchingVariables coloring3126 16 = table3126 16 := by rfl

theorem table3126_entry017 :
    matchingVariables coloring3126 17 = table3126 17 := by rfl

theorem table3126_entry018 :
    matchingVariables coloring3126 18 = table3126 18 := by rfl

theorem table3126_entry019 :
    matchingVariables coloring3126 19 = table3126 19 := by rfl

theorem table3126_entry020 :
    matchingVariables coloring3126 20 = table3126 20 := by rfl

theorem table3126_entry021 :
    matchingVariables coloring3126 21 = table3126 21 := by rfl

theorem table3126_entry022 :
    matchingVariables coloring3126 22 = table3126 22 := by rfl

theorem table3126_entry023 :
    matchingVariables coloring3126 23 = table3126 23 := by rfl

theorem table3126_entry024 :
    matchingVariables coloring3126 24 = table3126 24 := by rfl

theorem table3126_entry025 :
    matchingVariables coloring3126 25 = table3126 25 := by rfl

theorem table3126_entry026 :
    matchingVariables coloring3126 26 = table3126 26 := by rfl

theorem table3126_entry027 :
    matchingVariables coloring3126 27 = table3126 27 := by rfl

theorem table3126_entry028 :
    matchingVariables coloring3126 28 = table3126 28 := by rfl

theorem table3126_entry029 :
    matchingVariables coloring3126 29 = table3126 29 := by rfl

theorem table3126_entry030 :
    matchingVariables coloring3126 30 = table3126 30 := by rfl

theorem table3126_entry031 :
    matchingVariables coloring3126 31 = table3126 31 := by rfl

theorem table3126_entry032 :
    matchingVariables coloring3126 32 = table3126 32 := by rfl

theorem table3126_entry033 :
    matchingVariables coloring3126 33 = table3126 33 := by rfl

theorem table3126_entry034 :
    matchingVariables coloring3126 34 = table3126 34 := by rfl

theorem table3126_entry035 :
    matchingVariables coloring3126 35 = table3126 35 := by rfl

theorem table3126_entry036 :
    matchingVariables coloring3126 36 = table3126 36 := by rfl

theorem table3126_entry037 :
    matchingVariables coloring3126 37 = table3126 37 := by rfl

theorem table3126_entry038 :
    matchingVariables coloring3126 38 = table3126 38 := by rfl

theorem table3126_entry039 :
    matchingVariables coloring3126 39 = table3126 39 := by rfl

theorem table3126_entry040 :
    matchingVariables coloring3126 40 = table3126 40 := by rfl

theorem table3126_entry041 :
    matchingVariables coloring3126 41 = table3126 41 := by rfl

theorem table3126_entry042 :
    matchingVariables coloring3126 42 = table3126 42 := by rfl

theorem table3126_entry043 :
    matchingVariables coloring3126 43 = table3126 43 := by rfl

theorem table3126_entry044 :
    matchingVariables coloring3126 44 = table3126 44 := by rfl

theorem table3126_entry045 :
    matchingVariables coloring3126 45 = table3126 45 := by rfl

theorem table3126_entry046 :
    matchingVariables coloring3126 46 = table3126 46 := by rfl

theorem table3126_entry047 :
    matchingVariables coloring3126 47 = table3126 47 := by rfl

theorem table3126_entry048 :
    matchingVariables coloring3126 48 = table3126 48 := by rfl

theorem table3126_entry049 :
    matchingVariables coloring3126 49 = table3126 49 := by rfl

theorem table3126_entry050 :
    matchingVariables coloring3126 50 = table3126 50 := by rfl

theorem table3126_entry051 :
    matchingVariables coloring3126 51 = table3126 51 := by rfl

theorem table3126_entry052 :
    matchingVariables coloring3126 52 = table3126 52 := by rfl

theorem table3126_entry053 :
    matchingVariables coloring3126 53 = table3126 53 := by rfl

theorem table3126_entry054 :
    matchingVariables coloring3126 54 = table3126 54 := by rfl

theorem table3126_entry055 :
    matchingVariables coloring3126 55 = table3126 55 := by rfl

theorem table3126_entry056 :
    matchingVariables coloring3126 56 = table3126 56 := by rfl

theorem table3126_entry057 :
    matchingVariables coloring3126 57 = table3126 57 := by rfl

theorem table3126_entry058 :
    matchingVariables coloring3126 58 = table3126 58 := by rfl

theorem table3126_entry059 :
    matchingVariables coloring3126 59 = table3126 59 := by rfl

theorem table3126_entry060 :
    matchingVariables coloring3126 60 = table3126 60 := by rfl

theorem table3126_entry061 :
    matchingVariables coloring3126 61 = table3126 61 := by rfl

theorem table3126_entry062 :
    matchingVariables coloring3126 62 = table3126 62 := by rfl

theorem table3126_entry063 :
    matchingVariables coloring3126 63 = table3126 63 := by rfl

theorem table3126_entry064 :
    matchingVariables coloring3126 64 = table3126 64 := by rfl

theorem table3126_entry065 :
    matchingVariables coloring3126 65 = table3126 65 := by rfl

theorem table3126_entry066 :
    matchingVariables coloring3126 66 = table3126 66 := by rfl

theorem table3126_entry067 :
    matchingVariables coloring3126 67 = table3126 67 := by rfl

theorem table3126_entry068 :
    matchingVariables coloring3126 68 = table3126 68 := by rfl

theorem table3126_entry069 :
    matchingVariables coloring3126 69 = table3126 69 := by rfl

theorem table3126_entry070 :
    matchingVariables coloring3126 70 = table3126 70 := by rfl

theorem table3126_entry071 :
    matchingVariables coloring3126 71 = table3126 71 := by rfl

theorem table3126_entry072 :
    matchingVariables coloring3126 72 = table3126 72 := by rfl

theorem table3126_entry073 :
    matchingVariables coloring3126 73 = table3126 73 := by rfl

theorem table3126_entry074 :
    matchingVariables coloring3126 74 = table3126 74 := by rfl

theorem table3126_entry075 :
    matchingVariables coloring3126 75 = table3126 75 := by rfl

theorem table3126_entry076 :
    matchingVariables coloring3126 76 = table3126 76 := by rfl

theorem table3126_entry077 :
    matchingVariables coloring3126 77 = table3126 77 := by rfl

theorem table3126_entry078 :
    matchingVariables coloring3126 78 = table3126 78 := by rfl

theorem table3126_entry079 :
    matchingVariables coloring3126 79 = table3126 79 := by rfl

theorem table3126_entry080 :
    matchingVariables coloring3126 80 = table3126 80 := by rfl

theorem table3126_entry081 :
    matchingVariables coloring3126 81 = table3126 81 := by rfl

theorem table3126_entry082 :
    matchingVariables coloring3126 82 = table3126 82 := by rfl

theorem table3126_entry083 :
    matchingVariables coloring3126 83 = table3126 83 := by rfl

theorem table3126_entry084 :
    matchingVariables coloring3126 84 = table3126 84 := by rfl

theorem table3126_entry085 :
    matchingVariables coloring3126 85 = table3126 85 := by rfl

theorem table3126_entry086 :
    matchingVariables coloring3126 86 = table3126 86 := by rfl

theorem table3126_entry087 :
    matchingVariables coloring3126 87 = table3126 87 := by rfl

theorem table3126_entry088 :
    matchingVariables coloring3126 88 = table3126 88 := by rfl

theorem table3126_entry089 :
    matchingVariables coloring3126 89 = table3126 89 := by rfl

theorem table3126_entry090 :
    matchingVariables coloring3126 90 = table3126 90 := by rfl

theorem table3126_entry091 :
    matchingVariables coloring3126 91 = table3126 91 := by rfl

theorem table3126_entry092 :
    matchingVariables coloring3126 92 = table3126 92 := by rfl

theorem table3126_entry093 :
    matchingVariables coloring3126 93 = table3126 93 := by rfl

theorem table3126_entry094 :
    matchingVariables coloring3126 94 = table3126 94 := by rfl

theorem table3126_entry095 :
    matchingVariables coloring3126 95 = table3126 95 := by rfl

theorem table3126_entry096 :
    matchingVariables coloring3126 96 = table3126 96 := by rfl

theorem table3126_entry097 :
    matchingVariables coloring3126 97 = table3126 97 := by rfl

theorem table3126_entry098 :
    matchingVariables coloring3126 98 = table3126 98 := by rfl

theorem table3126_entry099 :
    matchingVariables coloring3126 99 = table3126 99 := by rfl

theorem table3126_entry100 :
    matchingVariables coloring3126 100 = table3126 100 := by rfl

theorem table3126_entry101 :
    matchingVariables coloring3126 101 = table3126 101 := by rfl

theorem table3126_entry102 :
    matchingVariables coloring3126 102 = table3126 102 := by rfl

theorem table3126_entry103 :
    matchingVariables coloring3126 103 = table3126 103 := by rfl

theorem table3126_entry104 :
    matchingVariables coloring3126 104 = table3126 104 := by rfl

theorem table3126_complete : ∀ m, matchingVariables coloring3126 m = table3126 m := by
  intro m
  fin_cases m
  · exact table3126_entry000
  · exact table3126_entry001
  · exact table3126_entry002
  · exact table3126_entry003
  · exact table3126_entry004
  · exact table3126_entry005
  · exact table3126_entry006
  · exact table3126_entry007
  · exact table3126_entry008
  · exact table3126_entry009
  · exact table3126_entry010
  · exact table3126_entry011
  · exact table3126_entry012
  · exact table3126_entry013
  · exact table3126_entry014
  · exact table3126_entry015
  · exact table3126_entry016
  · exact table3126_entry017
  · exact table3126_entry018
  · exact table3126_entry019
  · exact table3126_entry020
  · exact table3126_entry021
  · exact table3126_entry022
  · exact table3126_entry023
  · exact table3126_entry024
  · exact table3126_entry025
  · exact table3126_entry026
  · exact table3126_entry027
  · exact table3126_entry028
  · exact table3126_entry029
  · exact table3126_entry030
  · exact table3126_entry031
  · exact table3126_entry032
  · exact table3126_entry033
  · exact table3126_entry034
  · exact table3126_entry035
  · exact table3126_entry036
  · exact table3126_entry037
  · exact table3126_entry038
  · exact table3126_entry039
  · exact table3126_entry040
  · exact table3126_entry041
  · exact table3126_entry042
  · exact table3126_entry043
  · exact table3126_entry044
  · exact table3126_entry045
  · exact table3126_entry046
  · exact table3126_entry047
  · exact table3126_entry048
  · exact table3126_entry049
  · exact table3126_entry050
  · exact table3126_entry051
  · exact table3126_entry052
  · exact table3126_entry053
  · exact table3126_entry054
  · exact table3126_entry055
  · exact table3126_entry056
  · exact table3126_entry057
  · exact table3126_entry058
  · exact table3126_entry059
  · exact table3126_entry060
  · exact table3126_entry061
  · exact table3126_entry062
  · exact table3126_entry063
  · exact table3126_entry064
  · exact table3126_entry065
  · exact table3126_entry066
  · exact table3126_entry067
  · exact table3126_entry068
  · exact table3126_entry069
  · exact table3126_entry070
  · exact table3126_entry071
  · exact table3126_entry072
  · exact table3126_entry073
  · exact table3126_entry074
  · exact table3126_entry075
  · exact table3126_entry076
  · exact table3126_entry077
  · exact table3126_entry078
  · exact table3126_entry079
  · exact table3126_entry080
  · exact table3126_entry081
  · exact table3126_entry082
  · exact table3126_entry083
  · exact table3126_entry084
  · exact table3126_entry085
  · exact table3126_entry086
  · exact table3126_entry087
  · exact table3126_entry088
  · exact table3126_entry089
  · exact table3126_entry090
  · exact table3126_entry091
  · exact table3126_entry092
  · exact table3126_entry093
  · exact table3126_entry094
  · exact table3126_entry095
  · exact table3126_entry096
  · exact table3126_entry097
  · exact table3126_entry098
  · exact table3126_entry099
  · exact table3126_entry100
  · exact table3126_entry101
  · exact table3126_entry102
  · exact table3126_entry103
  · exact table3126_entry104

#print axioms table3126_complete

def expanded3126 : Polynomial 143 := [(1, exponentOfVariables [1, 64, 104, 138]),
  (1, exponentOfVariables [1, 75, 87, 138]),
  (1, exponentOfVariables [11, 41, 87, 138]),
  (1, exponentOfVariables [11, 51, 87, 126]),
  (1, exponentOfVariables [11, 51, 97, 104]),
  (1, exponentOfVariables [19, 51, 75, 122])]

theorem table3126_expanded : tablePolynomial table3126 = expanded3126 := by
  rfl

theorem table3126_exponent00 :
    exponentOfVariables (n := 143) [1, 64, 104, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 64 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3126_exponent01 :
    exponentOfVariables (n := 143) [1, 75, 87, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 75 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3126_exponent02 :
    exponentOfVariables (n := 143) [11, 41, 87, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 41 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3126_exponent03 :
    exponentOfVariables (n := 143) [11, 51, 87, 126] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3126_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 97, 104] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3126_exponent05 :
    exponentOfVariables (n := 143) [19, 51, 75, 122] =
      (fun i => if i.val = 19 then (1) else if i.val = 51 then (1) else if i.val = 75 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3126_polynomial : expanded3126 = amplitude3126 := by
  simp only [expanded3126, amplitude3126, table3126_exponent00, table3126_exponent01, table3126_exponent02, table3126_exponent03, table3126_exponent04, table3126_exponent05]

theorem premiseCheck001 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3126)) p001 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
