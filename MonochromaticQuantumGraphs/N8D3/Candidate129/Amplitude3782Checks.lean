import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3782 : Fin 8 → Fin 3 := ![2, 0, 0, 2, 1, 0, 2, 1]

def table3782 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [6, 59, 101, 141] else
    if m.val = 1 then some [6, 59, 112, 126] else
    if m.val = 6 then some [6, 69, 89, 141] else
    if m.val = 21 then some [15, 38, 89, 141] else
    if m.val = 24 then some [15, 49, 89, 126] else
    if m.val = 40 then some [26, 49, 69, 119] else none

theorem table3782_entry000 :
    matchingVariables coloring3782 0 = table3782 0 := by rfl

theorem table3782_entry001 :
    matchingVariables coloring3782 1 = table3782 1 := by rfl

theorem table3782_entry002 :
    matchingVariables coloring3782 2 = table3782 2 := by rfl

theorem table3782_entry003 :
    matchingVariables coloring3782 3 = table3782 3 := by rfl

theorem table3782_entry004 :
    matchingVariables coloring3782 4 = table3782 4 := by rfl

theorem table3782_entry005 :
    matchingVariables coloring3782 5 = table3782 5 := by rfl

theorem table3782_entry006 :
    matchingVariables coloring3782 6 = table3782 6 := by rfl

theorem table3782_entry007 :
    matchingVariables coloring3782 7 = table3782 7 := by rfl

theorem table3782_entry008 :
    matchingVariables coloring3782 8 = table3782 8 := by rfl

theorem table3782_entry009 :
    matchingVariables coloring3782 9 = table3782 9 := by rfl

theorem table3782_entry010 :
    matchingVariables coloring3782 10 = table3782 10 := by rfl

theorem table3782_entry011 :
    matchingVariables coloring3782 11 = table3782 11 := by rfl

theorem table3782_entry012 :
    matchingVariables coloring3782 12 = table3782 12 := by rfl

theorem table3782_entry013 :
    matchingVariables coloring3782 13 = table3782 13 := by rfl

theorem table3782_entry014 :
    matchingVariables coloring3782 14 = table3782 14 := by rfl

theorem table3782_entry015 :
    matchingVariables coloring3782 15 = table3782 15 := by rfl

theorem table3782_entry016 :
    matchingVariables coloring3782 16 = table3782 16 := by rfl

theorem table3782_entry017 :
    matchingVariables coloring3782 17 = table3782 17 := by rfl

theorem table3782_entry018 :
    matchingVariables coloring3782 18 = table3782 18 := by rfl

theorem table3782_entry019 :
    matchingVariables coloring3782 19 = table3782 19 := by rfl

theorem table3782_entry020 :
    matchingVariables coloring3782 20 = table3782 20 := by rfl

theorem table3782_entry021 :
    matchingVariables coloring3782 21 = table3782 21 := by rfl

theorem table3782_entry022 :
    matchingVariables coloring3782 22 = table3782 22 := by rfl

theorem table3782_entry023 :
    matchingVariables coloring3782 23 = table3782 23 := by rfl

theorem table3782_entry024 :
    matchingVariables coloring3782 24 = table3782 24 := by rfl

theorem table3782_entry025 :
    matchingVariables coloring3782 25 = table3782 25 := by rfl

theorem table3782_entry026 :
    matchingVariables coloring3782 26 = table3782 26 := by rfl

theorem table3782_entry027 :
    matchingVariables coloring3782 27 = table3782 27 := by rfl

theorem table3782_entry028 :
    matchingVariables coloring3782 28 = table3782 28 := by rfl

theorem table3782_entry029 :
    matchingVariables coloring3782 29 = table3782 29 := by rfl

theorem table3782_entry030 :
    matchingVariables coloring3782 30 = table3782 30 := by rfl

theorem table3782_entry031 :
    matchingVariables coloring3782 31 = table3782 31 := by rfl

theorem table3782_entry032 :
    matchingVariables coloring3782 32 = table3782 32 := by rfl

theorem table3782_entry033 :
    matchingVariables coloring3782 33 = table3782 33 := by rfl

theorem table3782_entry034 :
    matchingVariables coloring3782 34 = table3782 34 := by rfl

theorem table3782_entry035 :
    matchingVariables coloring3782 35 = table3782 35 := by rfl

theorem table3782_entry036 :
    matchingVariables coloring3782 36 = table3782 36 := by rfl

theorem table3782_entry037 :
    matchingVariables coloring3782 37 = table3782 37 := by rfl

theorem table3782_entry038 :
    matchingVariables coloring3782 38 = table3782 38 := by rfl

theorem table3782_entry039 :
    matchingVariables coloring3782 39 = table3782 39 := by rfl

theorem table3782_entry040 :
    matchingVariables coloring3782 40 = table3782 40 := by rfl

theorem table3782_entry041 :
    matchingVariables coloring3782 41 = table3782 41 := by rfl

theorem table3782_entry042 :
    matchingVariables coloring3782 42 = table3782 42 := by rfl

theorem table3782_entry043 :
    matchingVariables coloring3782 43 = table3782 43 := by rfl

theorem table3782_entry044 :
    matchingVariables coloring3782 44 = table3782 44 := by rfl

theorem table3782_entry045 :
    matchingVariables coloring3782 45 = table3782 45 := by rfl

theorem table3782_entry046 :
    matchingVariables coloring3782 46 = table3782 46 := by rfl

theorem table3782_entry047 :
    matchingVariables coloring3782 47 = table3782 47 := by rfl

theorem table3782_entry048 :
    matchingVariables coloring3782 48 = table3782 48 := by rfl

theorem table3782_entry049 :
    matchingVariables coloring3782 49 = table3782 49 := by rfl

theorem table3782_entry050 :
    matchingVariables coloring3782 50 = table3782 50 := by rfl

theorem table3782_entry051 :
    matchingVariables coloring3782 51 = table3782 51 := by rfl

theorem table3782_entry052 :
    matchingVariables coloring3782 52 = table3782 52 := by rfl

theorem table3782_entry053 :
    matchingVariables coloring3782 53 = table3782 53 := by rfl

theorem table3782_entry054 :
    matchingVariables coloring3782 54 = table3782 54 := by rfl

theorem table3782_entry055 :
    matchingVariables coloring3782 55 = table3782 55 := by rfl

theorem table3782_entry056 :
    matchingVariables coloring3782 56 = table3782 56 := by rfl

theorem table3782_entry057 :
    matchingVariables coloring3782 57 = table3782 57 := by rfl

theorem table3782_entry058 :
    matchingVariables coloring3782 58 = table3782 58 := by rfl

theorem table3782_entry059 :
    matchingVariables coloring3782 59 = table3782 59 := by rfl

theorem table3782_entry060 :
    matchingVariables coloring3782 60 = table3782 60 := by rfl

theorem table3782_entry061 :
    matchingVariables coloring3782 61 = table3782 61 := by rfl

theorem table3782_entry062 :
    matchingVariables coloring3782 62 = table3782 62 := by rfl

theorem table3782_entry063 :
    matchingVariables coloring3782 63 = table3782 63 := by rfl

theorem table3782_entry064 :
    matchingVariables coloring3782 64 = table3782 64 := by rfl

theorem table3782_entry065 :
    matchingVariables coloring3782 65 = table3782 65 := by rfl

theorem table3782_entry066 :
    matchingVariables coloring3782 66 = table3782 66 := by rfl

theorem table3782_entry067 :
    matchingVariables coloring3782 67 = table3782 67 := by rfl

theorem table3782_entry068 :
    matchingVariables coloring3782 68 = table3782 68 := by rfl

theorem table3782_entry069 :
    matchingVariables coloring3782 69 = table3782 69 := by rfl

theorem table3782_entry070 :
    matchingVariables coloring3782 70 = table3782 70 := by rfl

theorem table3782_entry071 :
    matchingVariables coloring3782 71 = table3782 71 := by rfl

theorem table3782_entry072 :
    matchingVariables coloring3782 72 = table3782 72 := by rfl

theorem table3782_entry073 :
    matchingVariables coloring3782 73 = table3782 73 := by rfl

theorem table3782_entry074 :
    matchingVariables coloring3782 74 = table3782 74 := by rfl

theorem table3782_entry075 :
    matchingVariables coloring3782 75 = table3782 75 := by rfl

theorem table3782_entry076 :
    matchingVariables coloring3782 76 = table3782 76 := by rfl

theorem table3782_entry077 :
    matchingVariables coloring3782 77 = table3782 77 := by rfl

theorem table3782_entry078 :
    matchingVariables coloring3782 78 = table3782 78 := by rfl

theorem table3782_entry079 :
    matchingVariables coloring3782 79 = table3782 79 := by rfl

theorem table3782_entry080 :
    matchingVariables coloring3782 80 = table3782 80 := by rfl

theorem table3782_entry081 :
    matchingVariables coloring3782 81 = table3782 81 := by rfl

theorem table3782_entry082 :
    matchingVariables coloring3782 82 = table3782 82 := by rfl

theorem table3782_entry083 :
    matchingVariables coloring3782 83 = table3782 83 := by rfl

theorem table3782_entry084 :
    matchingVariables coloring3782 84 = table3782 84 := by rfl

theorem table3782_entry085 :
    matchingVariables coloring3782 85 = table3782 85 := by rfl

theorem table3782_entry086 :
    matchingVariables coloring3782 86 = table3782 86 := by rfl

theorem table3782_entry087 :
    matchingVariables coloring3782 87 = table3782 87 := by rfl

theorem table3782_entry088 :
    matchingVariables coloring3782 88 = table3782 88 := by rfl

theorem table3782_entry089 :
    matchingVariables coloring3782 89 = table3782 89 := by rfl

theorem table3782_entry090 :
    matchingVariables coloring3782 90 = table3782 90 := by rfl

theorem table3782_entry091 :
    matchingVariables coloring3782 91 = table3782 91 := by rfl

theorem table3782_entry092 :
    matchingVariables coloring3782 92 = table3782 92 := by rfl

theorem table3782_entry093 :
    matchingVariables coloring3782 93 = table3782 93 := by rfl

theorem table3782_entry094 :
    matchingVariables coloring3782 94 = table3782 94 := by rfl

theorem table3782_entry095 :
    matchingVariables coloring3782 95 = table3782 95 := by rfl

theorem table3782_entry096 :
    matchingVariables coloring3782 96 = table3782 96 := by rfl

theorem table3782_entry097 :
    matchingVariables coloring3782 97 = table3782 97 := by rfl

theorem table3782_entry098 :
    matchingVariables coloring3782 98 = table3782 98 := by rfl

theorem table3782_entry099 :
    matchingVariables coloring3782 99 = table3782 99 := by rfl

theorem table3782_entry100 :
    matchingVariables coloring3782 100 = table3782 100 := by rfl

theorem table3782_entry101 :
    matchingVariables coloring3782 101 = table3782 101 := by rfl

theorem table3782_entry102 :
    matchingVariables coloring3782 102 = table3782 102 := by rfl

theorem table3782_entry103 :
    matchingVariables coloring3782 103 = table3782 103 := by rfl

theorem table3782_entry104 :
    matchingVariables coloring3782 104 = table3782 104 := by rfl

theorem table3782_complete : ∀ m, matchingVariables coloring3782 m = table3782 m := by
  intro m
  fin_cases m
  · exact table3782_entry000
  · exact table3782_entry001
  · exact table3782_entry002
  · exact table3782_entry003
  · exact table3782_entry004
  · exact table3782_entry005
  · exact table3782_entry006
  · exact table3782_entry007
  · exact table3782_entry008
  · exact table3782_entry009
  · exact table3782_entry010
  · exact table3782_entry011
  · exact table3782_entry012
  · exact table3782_entry013
  · exact table3782_entry014
  · exact table3782_entry015
  · exact table3782_entry016
  · exact table3782_entry017
  · exact table3782_entry018
  · exact table3782_entry019
  · exact table3782_entry020
  · exact table3782_entry021
  · exact table3782_entry022
  · exact table3782_entry023
  · exact table3782_entry024
  · exact table3782_entry025
  · exact table3782_entry026
  · exact table3782_entry027
  · exact table3782_entry028
  · exact table3782_entry029
  · exact table3782_entry030
  · exact table3782_entry031
  · exact table3782_entry032
  · exact table3782_entry033
  · exact table3782_entry034
  · exact table3782_entry035
  · exact table3782_entry036
  · exact table3782_entry037
  · exact table3782_entry038
  · exact table3782_entry039
  · exact table3782_entry040
  · exact table3782_entry041
  · exact table3782_entry042
  · exact table3782_entry043
  · exact table3782_entry044
  · exact table3782_entry045
  · exact table3782_entry046
  · exact table3782_entry047
  · exact table3782_entry048
  · exact table3782_entry049
  · exact table3782_entry050
  · exact table3782_entry051
  · exact table3782_entry052
  · exact table3782_entry053
  · exact table3782_entry054
  · exact table3782_entry055
  · exact table3782_entry056
  · exact table3782_entry057
  · exact table3782_entry058
  · exact table3782_entry059
  · exact table3782_entry060
  · exact table3782_entry061
  · exact table3782_entry062
  · exact table3782_entry063
  · exact table3782_entry064
  · exact table3782_entry065
  · exact table3782_entry066
  · exact table3782_entry067
  · exact table3782_entry068
  · exact table3782_entry069
  · exact table3782_entry070
  · exact table3782_entry071
  · exact table3782_entry072
  · exact table3782_entry073
  · exact table3782_entry074
  · exact table3782_entry075
  · exact table3782_entry076
  · exact table3782_entry077
  · exact table3782_entry078
  · exact table3782_entry079
  · exact table3782_entry080
  · exact table3782_entry081
  · exact table3782_entry082
  · exact table3782_entry083
  · exact table3782_entry084
  · exact table3782_entry085
  · exact table3782_entry086
  · exact table3782_entry087
  · exact table3782_entry088
  · exact table3782_entry089
  · exact table3782_entry090
  · exact table3782_entry091
  · exact table3782_entry092
  · exact table3782_entry093
  · exact table3782_entry094
  · exact table3782_entry095
  · exact table3782_entry096
  · exact table3782_entry097
  · exact table3782_entry098
  · exact table3782_entry099
  · exact table3782_entry100
  · exact table3782_entry101
  · exact table3782_entry102
  · exact table3782_entry103
  · exact table3782_entry104

#print axioms table3782_complete

def expanded3782 : Polynomial 143 := [(1, exponentOfVariables [6, 59, 101, 141]),
  (1, exponentOfVariables [6, 59, 112, 126]),
  (1, exponentOfVariables [6, 69, 89, 141]),
  (1, exponentOfVariables [15, 38, 89, 141]),
  (1, exponentOfVariables [15, 49, 89, 126]),
  (1, exponentOfVariables [26, 49, 69, 119])]

theorem table3782_expanded : tablePolynomial table3782 = expanded3782 := by
  rfl

theorem table3782_exponent00 :
    exponentOfVariables (n := 143) [6, 59, 101, 141] =
      (fun i => if i.val = 6 then (1) else if i.val = 59 then (1) else if i.val = 101 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3782_exponent01 :
    exponentOfVariables (n := 143) [6, 59, 112, 126] =
      (fun i => if i.val = 6 then (1) else if i.val = 59 then (1) else if i.val = 112 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3782_exponent02 :
    exponentOfVariables (n := 143) [6, 69, 89, 141] =
      (fun i => if i.val = 6 then (1) else if i.val = 69 then (1) else if i.val = 89 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3782_exponent03 :
    exponentOfVariables (n := 143) [15, 38, 89, 141] =
      (fun i => if i.val = 15 then (1) else if i.val = 38 then (1) else if i.val = 89 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3782_exponent04 :
    exponentOfVariables (n := 143) [15, 49, 89, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 49 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3782_exponent05 :
    exponentOfVariables (n := 143) [26, 49, 69, 119] =
      (fun i => if i.val = 26 then (1) else if i.val = 49 then (1) else if i.val = 69 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3782_polynomial : expanded3782 = amplitude3782 := by
  simp only [expanded3782, amplitude3782, table3782_exponent00, table3782_exponent01, table3782_exponent02, table3782_exponent03, table3782_exponent04, table3782_exponent05]

theorem premiseCheck121 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3782)) p121 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
