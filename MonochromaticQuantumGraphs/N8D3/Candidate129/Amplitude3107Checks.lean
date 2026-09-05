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

def coloring3107 : Fin 8 → Fin 3 := ![2, 0, 0, 1, 2, 0, 1, 1]

def table3107 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [6, 58, 104, 138] else
    if m.val = 6 then some [6, 69, 87, 138] else
    if m.val = 21 then some [15, 38, 87, 138] else
    if m.val = 24 then some [15, 48, 87, 126] else
    if m.val = 26 then some [15, 48, 97, 104] else
    if m.val = 40 then some [25, 48, 69, 122] else none

theorem table3107_entry000 :
    matchingVariables coloring3107 0 = table3107 0 := by rfl

theorem table3107_entry001 :
    matchingVariables coloring3107 1 = table3107 1 := by rfl

theorem table3107_entry002 :
    matchingVariables coloring3107 2 = table3107 2 := by rfl

theorem table3107_entry003 :
    matchingVariables coloring3107 3 = table3107 3 := by rfl

theorem table3107_entry004 :
    matchingVariables coloring3107 4 = table3107 4 := by rfl

theorem table3107_entry005 :
    matchingVariables coloring3107 5 = table3107 5 := by rfl

theorem table3107_entry006 :
    matchingVariables coloring3107 6 = table3107 6 := by rfl

theorem table3107_entry007 :
    matchingVariables coloring3107 7 = table3107 7 := by rfl

theorem table3107_entry008 :
    matchingVariables coloring3107 8 = table3107 8 := by rfl

theorem table3107_entry009 :
    matchingVariables coloring3107 9 = table3107 9 := by rfl

theorem table3107_entry010 :
    matchingVariables coloring3107 10 = table3107 10 := by rfl

theorem table3107_entry011 :
    matchingVariables coloring3107 11 = table3107 11 := by rfl

theorem table3107_entry012 :
    matchingVariables coloring3107 12 = table3107 12 := by rfl

theorem table3107_entry013 :
    matchingVariables coloring3107 13 = table3107 13 := by rfl

theorem table3107_entry014 :
    matchingVariables coloring3107 14 = table3107 14 := by rfl

theorem table3107_entry015 :
    matchingVariables coloring3107 15 = table3107 15 := by rfl

theorem table3107_entry016 :
    matchingVariables coloring3107 16 = table3107 16 := by rfl

theorem table3107_entry017 :
    matchingVariables coloring3107 17 = table3107 17 := by rfl

theorem table3107_entry018 :
    matchingVariables coloring3107 18 = table3107 18 := by rfl

theorem table3107_entry019 :
    matchingVariables coloring3107 19 = table3107 19 := by rfl

theorem table3107_entry020 :
    matchingVariables coloring3107 20 = table3107 20 := by rfl

theorem table3107_entry021 :
    matchingVariables coloring3107 21 = table3107 21 := by rfl

theorem table3107_entry022 :
    matchingVariables coloring3107 22 = table3107 22 := by rfl

theorem table3107_entry023 :
    matchingVariables coloring3107 23 = table3107 23 := by rfl

theorem table3107_entry024 :
    matchingVariables coloring3107 24 = table3107 24 := by rfl

theorem table3107_entry025 :
    matchingVariables coloring3107 25 = table3107 25 := by rfl

theorem table3107_entry026 :
    matchingVariables coloring3107 26 = table3107 26 := by rfl

theorem table3107_entry027 :
    matchingVariables coloring3107 27 = table3107 27 := by rfl

theorem table3107_entry028 :
    matchingVariables coloring3107 28 = table3107 28 := by rfl

theorem table3107_entry029 :
    matchingVariables coloring3107 29 = table3107 29 := by rfl

theorem table3107_entry030 :
    matchingVariables coloring3107 30 = table3107 30 := by rfl

theorem table3107_entry031 :
    matchingVariables coloring3107 31 = table3107 31 := by rfl

theorem table3107_entry032 :
    matchingVariables coloring3107 32 = table3107 32 := by rfl

theorem table3107_entry033 :
    matchingVariables coloring3107 33 = table3107 33 := by rfl

theorem table3107_entry034 :
    matchingVariables coloring3107 34 = table3107 34 := by rfl

theorem table3107_entry035 :
    matchingVariables coloring3107 35 = table3107 35 := by rfl

theorem table3107_entry036 :
    matchingVariables coloring3107 36 = table3107 36 := by rfl

theorem table3107_entry037 :
    matchingVariables coloring3107 37 = table3107 37 := by rfl

theorem table3107_entry038 :
    matchingVariables coloring3107 38 = table3107 38 := by rfl

theorem table3107_entry039 :
    matchingVariables coloring3107 39 = table3107 39 := by rfl

theorem table3107_entry040 :
    matchingVariables coloring3107 40 = table3107 40 := by rfl

theorem table3107_entry041 :
    matchingVariables coloring3107 41 = table3107 41 := by rfl

theorem table3107_entry042 :
    matchingVariables coloring3107 42 = table3107 42 := by rfl

theorem table3107_entry043 :
    matchingVariables coloring3107 43 = table3107 43 := by rfl

theorem table3107_entry044 :
    matchingVariables coloring3107 44 = table3107 44 := by rfl

theorem table3107_entry045 :
    matchingVariables coloring3107 45 = table3107 45 := by rfl

theorem table3107_entry046 :
    matchingVariables coloring3107 46 = table3107 46 := by rfl

theorem table3107_entry047 :
    matchingVariables coloring3107 47 = table3107 47 := by rfl

theorem table3107_entry048 :
    matchingVariables coloring3107 48 = table3107 48 := by rfl

theorem table3107_entry049 :
    matchingVariables coloring3107 49 = table3107 49 := by rfl

theorem table3107_entry050 :
    matchingVariables coloring3107 50 = table3107 50 := by rfl

theorem table3107_entry051 :
    matchingVariables coloring3107 51 = table3107 51 := by rfl

theorem table3107_entry052 :
    matchingVariables coloring3107 52 = table3107 52 := by rfl

theorem table3107_entry053 :
    matchingVariables coloring3107 53 = table3107 53 := by rfl

theorem table3107_entry054 :
    matchingVariables coloring3107 54 = table3107 54 := by rfl

theorem table3107_entry055 :
    matchingVariables coloring3107 55 = table3107 55 := by rfl

theorem table3107_entry056 :
    matchingVariables coloring3107 56 = table3107 56 := by rfl

theorem table3107_entry057 :
    matchingVariables coloring3107 57 = table3107 57 := by rfl

theorem table3107_entry058 :
    matchingVariables coloring3107 58 = table3107 58 := by rfl

theorem table3107_entry059 :
    matchingVariables coloring3107 59 = table3107 59 := by rfl

theorem table3107_entry060 :
    matchingVariables coloring3107 60 = table3107 60 := by rfl

theorem table3107_entry061 :
    matchingVariables coloring3107 61 = table3107 61 := by rfl

theorem table3107_entry062 :
    matchingVariables coloring3107 62 = table3107 62 := by rfl

theorem table3107_entry063 :
    matchingVariables coloring3107 63 = table3107 63 := by rfl

theorem table3107_entry064 :
    matchingVariables coloring3107 64 = table3107 64 := by rfl

theorem table3107_entry065 :
    matchingVariables coloring3107 65 = table3107 65 := by rfl

theorem table3107_entry066 :
    matchingVariables coloring3107 66 = table3107 66 := by rfl

theorem table3107_entry067 :
    matchingVariables coloring3107 67 = table3107 67 := by rfl

theorem table3107_entry068 :
    matchingVariables coloring3107 68 = table3107 68 := by rfl

theorem table3107_entry069 :
    matchingVariables coloring3107 69 = table3107 69 := by rfl

theorem table3107_entry070 :
    matchingVariables coloring3107 70 = table3107 70 := by rfl

theorem table3107_entry071 :
    matchingVariables coloring3107 71 = table3107 71 := by rfl

theorem table3107_entry072 :
    matchingVariables coloring3107 72 = table3107 72 := by rfl

theorem table3107_entry073 :
    matchingVariables coloring3107 73 = table3107 73 := by rfl

theorem table3107_entry074 :
    matchingVariables coloring3107 74 = table3107 74 := by rfl

theorem table3107_entry075 :
    matchingVariables coloring3107 75 = table3107 75 := by rfl

theorem table3107_entry076 :
    matchingVariables coloring3107 76 = table3107 76 := by rfl

theorem table3107_entry077 :
    matchingVariables coloring3107 77 = table3107 77 := by rfl

theorem table3107_entry078 :
    matchingVariables coloring3107 78 = table3107 78 := by rfl

theorem table3107_entry079 :
    matchingVariables coloring3107 79 = table3107 79 := by rfl

theorem table3107_entry080 :
    matchingVariables coloring3107 80 = table3107 80 := by rfl

theorem table3107_entry081 :
    matchingVariables coloring3107 81 = table3107 81 := by rfl

theorem table3107_entry082 :
    matchingVariables coloring3107 82 = table3107 82 := by rfl

theorem table3107_entry083 :
    matchingVariables coloring3107 83 = table3107 83 := by rfl

theorem table3107_entry084 :
    matchingVariables coloring3107 84 = table3107 84 := by rfl

theorem table3107_entry085 :
    matchingVariables coloring3107 85 = table3107 85 := by rfl

theorem table3107_entry086 :
    matchingVariables coloring3107 86 = table3107 86 := by rfl

theorem table3107_entry087 :
    matchingVariables coloring3107 87 = table3107 87 := by rfl

theorem table3107_entry088 :
    matchingVariables coloring3107 88 = table3107 88 := by rfl

theorem table3107_entry089 :
    matchingVariables coloring3107 89 = table3107 89 := by rfl

theorem table3107_entry090 :
    matchingVariables coloring3107 90 = table3107 90 := by rfl

theorem table3107_entry091 :
    matchingVariables coloring3107 91 = table3107 91 := by rfl

theorem table3107_entry092 :
    matchingVariables coloring3107 92 = table3107 92 := by rfl

theorem table3107_entry093 :
    matchingVariables coloring3107 93 = table3107 93 := by rfl

theorem table3107_entry094 :
    matchingVariables coloring3107 94 = table3107 94 := by rfl

theorem table3107_entry095 :
    matchingVariables coloring3107 95 = table3107 95 := by rfl

theorem table3107_entry096 :
    matchingVariables coloring3107 96 = table3107 96 := by rfl

theorem table3107_entry097 :
    matchingVariables coloring3107 97 = table3107 97 := by rfl

theorem table3107_entry098 :
    matchingVariables coloring3107 98 = table3107 98 := by rfl

theorem table3107_entry099 :
    matchingVariables coloring3107 99 = table3107 99 := by rfl

theorem table3107_entry100 :
    matchingVariables coloring3107 100 = table3107 100 := by rfl

theorem table3107_entry101 :
    matchingVariables coloring3107 101 = table3107 101 := by rfl

theorem table3107_entry102 :
    matchingVariables coloring3107 102 = table3107 102 := by rfl

theorem table3107_entry103 :
    matchingVariables coloring3107 103 = table3107 103 := by rfl

theorem table3107_entry104 :
    matchingVariables coloring3107 104 = table3107 104 := by rfl

theorem table3107_complete : ∀ m, matchingVariables coloring3107 m = table3107 m := by
  intro m
  fin_cases m
  · exact table3107_entry000
  · exact table3107_entry001
  · exact table3107_entry002
  · exact table3107_entry003
  · exact table3107_entry004
  · exact table3107_entry005
  · exact table3107_entry006
  · exact table3107_entry007
  · exact table3107_entry008
  · exact table3107_entry009
  · exact table3107_entry010
  · exact table3107_entry011
  · exact table3107_entry012
  · exact table3107_entry013
  · exact table3107_entry014
  · exact table3107_entry015
  · exact table3107_entry016
  · exact table3107_entry017
  · exact table3107_entry018
  · exact table3107_entry019
  · exact table3107_entry020
  · exact table3107_entry021
  · exact table3107_entry022
  · exact table3107_entry023
  · exact table3107_entry024
  · exact table3107_entry025
  · exact table3107_entry026
  · exact table3107_entry027
  · exact table3107_entry028
  · exact table3107_entry029
  · exact table3107_entry030
  · exact table3107_entry031
  · exact table3107_entry032
  · exact table3107_entry033
  · exact table3107_entry034
  · exact table3107_entry035
  · exact table3107_entry036
  · exact table3107_entry037
  · exact table3107_entry038
  · exact table3107_entry039
  · exact table3107_entry040
  · exact table3107_entry041
  · exact table3107_entry042
  · exact table3107_entry043
  · exact table3107_entry044
  · exact table3107_entry045
  · exact table3107_entry046
  · exact table3107_entry047
  · exact table3107_entry048
  · exact table3107_entry049
  · exact table3107_entry050
  · exact table3107_entry051
  · exact table3107_entry052
  · exact table3107_entry053
  · exact table3107_entry054
  · exact table3107_entry055
  · exact table3107_entry056
  · exact table3107_entry057
  · exact table3107_entry058
  · exact table3107_entry059
  · exact table3107_entry060
  · exact table3107_entry061
  · exact table3107_entry062
  · exact table3107_entry063
  · exact table3107_entry064
  · exact table3107_entry065
  · exact table3107_entry066
  · exact table3107_entry067
  · exact table3107_entry068
  · exact table3107_entry069
  · exact table3107_entry070
  · exact table3107_entry071
  · exact table3107_entry072
  · exact table3107_entry073
  · exact table3107_entry074
  · exact table3107_entry075
  · exact table3107_entry076
  · exact table3107_entry077
  · exact table3107_entry078
  · exact table3107_entry079
  · exact table3107_entry080
  · exact table3107_entry081
  · exact table3107_entry082
  · exact table3107_entry083
  · exact table3107_entry084
  · exact table3107_entry085
  · exact table3107_entry086
  · exact table3107_entry087
  · exact table3107_entry088
  · exact table3107_entry089
  · exact table3107_entry090
  · exact table3107_entry091
  · exact table3107_entry092
  · exact table3107_entry093
  · exact table3107_entry094
  · exact table3107_entry095
  · exact table3107_entry096
  · exact table3107_entry097
  · exact table3107_entry098
  · exact table3107_entry099
  · exact table3107_entry100
  · exact table3107_entry101
  · exact table3107_entry102
  · exact table3107_entry103
  · exact table3107_entry104

#print axioms table3107_complete

def expanded3107 : Polynomial 143 := [(1, exponentOfVariables [6, 58, 104, 138]),
  (1, exponentOfVariables [6, 69, 87, 138]),
  (1, exponentOfVariables [15, 38, 87, 138]),
  (1, exponentOfVariables [15, 48, 87, 126]),
  (1, exponentOfVariables [15, 48, 97, 104]),
  (1, exponentOfVariables [25, 48, 69, 122])]

theorem table3107_expanded : tablePolynomial table3107 = expanded3107 := by
  rfl

theorem table3107_exponent00 :
    exponentOfVariables (n := 143) [6, 58, 104, 138] =
      (fun i => if i.val = 6 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3107_exponent01 :
    exponentOfVariables (n := 143) [6, 69, 87, 138] =
      (fun i => if i.val = 6 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3107_exponent02 :
    exponentOfVariables (n := 143) [15, 38, 87, 138] =
      (fun i => if i.val = 15 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3107_exponent03 :
    exponentOfVariables (n := 143) [15, 48, 87, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3107_exponent04 :
    exponentOfVariables (n := 143) [15, 48, 97, 104] =
      (fun i => if i.val = 15 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3107_exponent05 :
    exponentOfVariables (n := 143) [25, 48, 69, 122] =
      (fun i => if i.val = 25 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3107_polynomial : expanded3107 = amplitude3107 := by
  simp only [expanded3107, amplitude3107, table3107_exponent00, table3107_exponent01, table3107_exponent02, table3107_exponent03, table3107_exponent04, table3107_exponent05]

theorem premiseCheck116 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3107)) p116 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
