import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3785 : Fin 8 → Fin 3 := ![2, 1, 0, 2, 1, 0, 2, 1]

def table3785 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [7, 59, 101, 141] else
    if m.val = 1 then some [7, 59, 112, 126] else
    if m.val = 6 then some [7, 69, 89, 141] else
    if m.val = 21 then some [15, 41, 89, 141] else
    if m.val = 24 then some [15, 52, 89, 126] else
    if m.val = 40 then some [26, 52, 69, 119] else none

theorem table3785_entry000 :
    matchingVariables coloring3785 0 = table3785 0 := by rfl

theorem table3785_entry001 :
    matchingVariables coloring3785 1 = table3785 1 := by rfl

theorem table3785_entry002 :
    matchingVariables coloring3785 2 = table3785 2 := by rfl

theorem table3785_entry003 :
    matchingVariables coloring3785 3 = table3785 3 := by rfl

theorem table3785_entry004 :
    matchingVariables coloring3785 4 = table3785 4 := by rfl

theorem table3785_entry005 :
    matchingVariables coloring3785 5 = table3785 5 := by rfl

theorem table3785_entry006 :
    matchingVariables coloring3785 6 = table3785 6 := by rfl

theorem table3785_entry007 :
    matchingVariables coloring3785 7 = table3785 7 := by rfl

theorem table3785_entry008 :
    matchingVariables coloring3785 8 = table3785 8 := by rfl

theorem table3785_entry009 :
    matchingVariables coloring3785 9 = table3785 9 := by rfl

theorem table3785_entry010 :
    matchingVariables coloring3785 10 = table3785 10 := by rfl

theorem table3785_entry011 :
    matchingVariables coloring3785 11 = table3785 11 := by rfl

theorem table3785_entry012 :
    matchingVariables coloring3785 12 = table3785 12 := by rfl

theorem table3785_entry013 :
    matchingVariables coloring3785 13 = table3785 13 := by rfl

theorem table3785_entry014 :
    matchingVariables coloring3785 14 = table3785 14 := by rfl

theorem table3785_entry015 :
    matchingVariables coloring3785 15 = table3785 15 := by rfl

theorem table3785_entry016 :
    matchingVariables coloring3785 16 = table3785 16 := by rfl

theorem table3785_entry017 :
    matchingVariables coloring3785 17 = table3785 17 := by rfl

theorem table3785_entry018 :
    matchingVariables coloring3785 18 = table3785 18 := by rfl

theorem table3785_entry019 :
    matchingVariables coloring3785 19 = table3785 19 := by rfl

theorem table3785_entry020 :
    matchingVariables coloring3785 20 = table3785 20 := by rfl

theorem table3785_entry021 :
    matchingVariables coloring3785 21 = table3785 21 := by rfl

theorem table3785_entry022 :
    matchingVariables coloring3785 22 = table3785 22 := by rfl

theorem table3785_entry023 :
    matchingVariables coloring3785 23 = table3785 23 := by rfl

theorem table3785_entry024 :
    matchingVariables coloring3785 24 = table3785 24 := by rfl

theorem table3785_entry025 :
    matchingVariables coloring3785 25 = table3785 25 := by rfl

theorem table3785_entry026 :
    matchingVariables coloring3785 26 = table3785 26 := by rfl

theorem table3785_entry027 :
    matchingVariables coloring3785 27 = table3785 27 := by rfl

theorem table3785_entry028 :
    matchingVariables coloring3785 28 = table3785 28 := by rfl

theorem table3785_entry029 :
    matchingVariables coloring3785 29 = table3785 29 := by rfl

theorem table3785_entry030 :
    matchingVariables coloring3785 30 = table3785 30 := by rfl

theorem table3785_entry031 :
    matchingVariables coloring3785 31 = table3785 31 := by rfl

theorem table3785_entry032 :
    matchingVariables coloring3785 32 = table3785 32 := by rfl

theorem table3785_entry033 :
    matchingVariables coloring3785 33 = table3785 33 := by rfl

theorem table3785_entry034 :
    matchingVariables coloring3785 34 = table3785 34 := by rfl

theorem table3785_entry035 :
    matchingVariables coloring3785 35 = table3785 35 := by rfl

theorem table3785_entry036 :
    matchingVariables coloring3785 36 = table3785 36 := by rfl

theorem table3785_entry037 :
    matchingVariables coloring3785 37 = table3785 37 := by rfl

theorem table3785_entry038 :
    matchingVariables coloring3785 38 = table3785 38 := by rfl

theorem table3785_entry039 :
    matchingVariables coloring3785 39 = table3785 39 := by rfl

theorem table3785_entry040 :
    matchingVariables coloring3785 40 = table3785 40 := by rfl

theorem table3785_entry041 :
    matchingVariables coloring3785 41 = table3785 41 := by rfl

theorem table3785_entry042 :
    matchingVariables coloring3785 42 = table3785 42 := by rfl

theorem table3785_entry043 :
    matchingVariables coloring3785 43 = table3785 43 := by rfl

theorem table3785_entry044 :
    matchingVariables coloring3785 44 = table3785 44 := by rfl

theorem table3785_entry045 :
    matchingVariables coloring3785 45 = table3785 45 := by rfl

theorem table3785_entry046 :
    matchingVariables coloring3785 46 = table3785 46 := by rfl

theorem table3785_entry047 :
    matchingVariables coloring3785 47 = table3785 47 := by rfl

theorem table3785_entry048 :
    matchingVariables coloring3785 48 = table3785 48 := by rfl

theorem table3785_entry049 :
    matchingVariables coloring3785 49 = table3785 49 := by rfl

theorem table3785_entry050 :
    matchingVariables coloring3785 50 = table3785 50 := by rfl

theorem table3785_entry051 :
    matchingVariables coloring3785 51 = table3785 51 := by rfl

theorem table3785_entry052 :
    matchingVariables coloring3785 52 = table3785 52 := by rfl

theorem table3785_entry053 :
    matchingVariables coloring3785 53 = table3785 53 := by rfl

theorem table3785_entry054 :
    matchingVariables coloring3785 54 = table3785 54 := by rfl

theorem table3785_entry055 :
    matchingVariables coloring3785 55 = table3785 55 := by rfl

theorem table3785_entry056 :
    matchingVariables coloring3785 56 = table3785 56 := by rfl

theorem table3785_entry057 :
    matchingVariables coloring3785 57 = table3785 57 := by rfl

theorem table3785_entry058 :
    matchingVariables coloring3785 58 = table3785 58 := by rfl

theorem table3785_entry059 :
    matchingVariables coloring3785 59 = table3785 59 := by rfl

theorem table3785_entry060 :
    matchingVariables coloring3785 60 = table3785 60 := by rfl

theorem table3785_entry061 :
    matchingVariables coloring3785 61 = table3785 61 := by rfl

theorem table3785_entry062 :
    matchingVariables coloring3785 62 = table3785 62 := by rfl

theorem table3785_entry063 :
    matchingVariables coloring3785 63 = table3785 63 := by rfl

theorem table3785_entry064 :
    matchingVariables coloring3785 64 = table3785 64 := by rfl

theorem table3785_entry065 :
    matchingVariables coloring3785 65 = table3785 65 := by rfl

theorem table3785_entry066 :
    matchingVariables coloring3785 66 = table3785 66 := by rfl

theorem table3785_entry067 :
    matchingVariables coloring3785 67 = table3785 67 := by rfl

theorem table3785_entry068 :
    matchingVariables coloring3785 68 = table3785 68 := by rfl

theorem table3785_entry069 :
    matchingVariables coloring3785 69 = table3785 69 := by rfl

theorem table3785_entry070 :
    matchingVariables coloring3785 70 = table3785 70 := by rfl

theorem table3785_entry071 :
    matchingVariables coloring3785 71 = table3785 71 := by rfl

theorem table3785_entry072 :
    matchingVariables coloring3785 72 = table3785 72 := by rfl

theorem table3785_entry073 :
    matchingVariables coloring3785 73 = table3785 73 := by rfl

theorem table3785_entry074 :
    matchingVariables coloring3785 74 = table3785 74 := by rfl

theorem table3785_entry075 :
    matchingVariables coloring3785 75 = table3785 75 := by rfl

theorem table3785_entry076 :
    matchingVariables coloring3785 76 = table3785 76 := by rfl

theorem table3785_entry077 :
    matchingVariables coloring3785 77 = table3785 77 := by rfl

theorem table3785_entry078 :
    matchingVariables coloring3785 78 = table3785 78 := by rfl

theorem table3785_entry079 :
    matchingVariables coloring3785 79 = table3785 79 := by rfl

theorem table3785_entry080 :
    matchingVariables coloring3785 80 = table3785 80 := by rfl

theorem table3785_entry081 :
    matchingVariables coloring3785 81 = table3785 81 := by rfl

theorem table3785_entry082 :
    matchingVariables coloring3785 82 = table3785 82 := by rfl

theorem table3785_entry083 :
    matchingVariables coloring3785 83 = table3785 83 := by rfl

theorem table3785_entry084 :
    matchingVariables coloring3785 84 = table3785 84 := by rfl

theorem table3785_entry085 :
    matchingVariables coloring3785 85 = table3785 85 := by rfl

theorem table3785_entry086 :
    matchingVariables coloring3785 86 = table3785 86 := by rfl

theorem table3785_entry087 :
    matchingVariables coloring3785 87 = table3785 87 := by rfl

theorem table3785_entry088 :
    matchingVariables coloring3785 88 = table3785 88 := by rfl

theorem table3785_entry089 :
    matchingVariables coloring3785 89 = table3785 89 := by rfl

theorem table3785_entry090 :
    matchingVariables coloring3785 90 = table3785 90 := by rfl

theorem table3785_entry091 :
    matchingVariables coloring3785 91 = table3785 91 := by rfl

theorem table3785_entry092 :
    matchingVariables coloring3785 92 = table3785 92 := by rfl

theorem table3785_entry093 :
    matchingVariables coloring3785 93 = table3785 93 := by rfl

theorem table3785_entry094 :
    matchingVariables coloring3785 94 = table3785 94 := by rfl

theorem table3785_entry095 :
    matchingVariables coloring3785 95 = table3785 95 := by rfl

theorem table3785_entry096 :
    matchingVariables coloring3785 96 = table3785 96 := by rfl

theorem table3785_entry097 :
    matchingVariables coloring3785 97 = table3785 97 := by rfl

theorem table3785_entry098 :
    matchingVariables coloring3785 98 = table3785 98 := by rfl

theorem table3785_entry099 :
    matchingVariables coloring3785 99 = table3785 99 := by rfl

theorem table3785_entry100 :
    matchingVariables coloring3785 100 = table3785 100 := by rfl

theorem table3785_entry101 :
    matchingVariables coloring3785 101 = table3785 101 := by rfl

theorem table3785_entry102 :
    matchingVariables coloring3785 102 = table3785 102 := by rfl

theorem table3785_entry103 :
    matchingVariables coloring3785 103 = table3785 103 := by rfl

theorem table3785_entry104 :
    matchingVariables coloring3785 104 = table3785 104 := by rfl

theorem table3785_complete : ∀ m, matchingVariables coloring3785 m = table3785 m := by
  intro m
  fin_cases m
  · exact table3785_entry000
  · exact table3785_entry001
  · exact table3785_entry002
  · exact table3785_entry003
  · exact table3785_entry004
  · exact table3785_entry005
  · exact table3785_entry006
  · exact table3785_entry007
  · exact table3785_entry008
  · exact table3785_entry009
  · exact table3785_entry010
  · exact table3785_entry011
  · exact table3785_entry012
  · exact table3785_entry013
  · exact table3785_entry014
  · exact table3785_entry015
  · exact table3785_entry016
  · exact table3785_entry017
  · exact table3785_entry018
  · exact table3785_entry019
  · exact table3785_entry020
  · exact table3785_entry021
  · exact table3785_entry022
  · exact table3785_entry023
  · exact table3785_entry024
  · exact table3785_entry025
  · exact table3785_entry026
  · exact table3785_entry027
  · exact table3785_entry028
  · exact table3785_entry029
  · exact table3785_entry030
  · exact table3785_entry031
  · exact table3785_entry032
  · exact table3785_entry033
  · exact table3785_entry034
  · exact table3785_entry035
  · exact table3785_entry036
  · exact table3785_entry037
  · exact table3785_entry038
  · exact table3785_entry039
  · exact table3785_entry040
  · exact table3785_entry041
  · exact table3785_entry042
  · exact table3785_entry043
  · exact table3785_entry044
  · exact table3785_entry045
  · exact table3785_entry046
  · exact table3785_entry047
  · exact table3785_entry048
  · exact table3785_entry049
  · exact table3785_entry050
  · exact table3785_entry051
  · exact table3785_entry052
  · exact table3785_entry053
  · exact table3785_entry054
  · exact table3785_entry055
  · exact table3785_entry056
  · exact table3785_entry057
  · exact table3785_entry058
  · exact table3785_entry059
  · exact table3785_entry060
  · exact table3785_entry061
  · exact table3785_entry062
  · exact table3785_entry063
  · exact table3785_entry064
  · exact table3785_entry065
  · exact table3785_entry066
  · exact table3785_entry067
  · exact table3785_entry068
  · exact table3785_entry069
  · exact table3785_entry070
  · exact table3785_entry071
  · exact table3785_entry072
  · exact table3785_entry073
  · exact table3785_entry074
  · exact table3785_entry075
  · exact table3785_entry076
  · exact table3785_entry077
  · exact table3785_entry078
  · exact table3785_entry079
  · exact table3785_entry080
  · exact table3785_entry081
  · exact table3785_entry082
  · exact table3785_entry083
  · exact table3785_entry084
  · exact table3785_entry085
  · exact table3785_entry086
  · exact table3785_entry087
  · exact table3785_entry088
  · exact table3785_entry089
  · exact table3785_entry090
  · exact table3785_entry091
  · exact table3785_entry092
  · exact table3785_entry093
  · exact table3785_entry094
  · exact table3785_entry095
  · exact table3785_entry096
  · exact table3785_entry097
  · exact table3785_entry098
  · exact table3785_entry099
  · exact table3785_entry100
  · exact table3785_entry101
  · exact table3785_entry102
  · exact table3785_entry103
  · exact table3785_entry104

#print axioms table3785_complete

def expanded3785 : Polynomial 143 := [(1, exponentOfVariables [7, 59, 101, 141]),
  (1, exponentOfVariables [7, 59, 112, 126]),
  (1, exponentOfVariables [7, 69, 89, 141]),
  (1, exponentOfVariables [15, 41, 89, 141]),
  (1, exponentOfVariables [15, 52, 89, 126]),
  (1, exponentOfVariables [26, 52, 69, 119])]

theorem table3785_expanded : tablePolynomial table3785 = expanded3785 := by
  rfl

theorem table3785_exponent00 :
    exponentOfVariables (n := 143) [7, 59, 101, 141] =
      (fun i => if i.val = 7 then (1) else if i.val = 59 then (1) else if i.val = 101 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3785_exponent01 :
    exponentOfVariables (n := 143) [7, 59, 112, 126] =
      (fun i => if i.val = 7 then (1) else if i.val = 59 then (1) else if i.val = 112 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3785_exponent02 :
    exponentOfVariables (n := 143) [7, 69, 89, 141] =
      (fun i => if i.val = 7 then (1) else if i.val = 69 then (1) else if i.val = 89 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3785_exponent03 :
    exponentOfVariables (n := 143) [15, 41, 89, 141] =
      (fun i => if i.val = 15 then (1) else if i.val = 41 then (1) else if i.val = 89 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3785_exponent04 :
    exponentOfVariables (n := 143) [15, 52, 89, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 52 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3785_exponent05 :
    exponentOfVariables (n := 143) [26, 52, 69, 119] =
      (fun i => if i.val = 26 then (1) else if i.val = 52 then (1) else if i.val = 69 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3785_polynomial : expanded3785 = amplitude3785 := by
  simp only [expanded3785, amplitude3785, table3785_exponent00, table3785_exponent01, table3785_exponent02, table3785_exponent03, table3785_exponent04, table3785_exponent05]

theorem premiseCheck134 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3785)) p134 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
