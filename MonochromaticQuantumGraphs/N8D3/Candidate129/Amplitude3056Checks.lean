import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3056 : Fin 8 → Fin 3 := ![2, 1, 0, 2, 1, 0, 1, 1]

def table3056 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [7, 59, 101, 138] else
    if m.val = 1 then some [7, 59, 111, 126] else
    if m.val = 6 then some [7, 69, 89, 138] else
    if m.val = 21 then some [15, 41, 89, 138] else
    if m.val = 24 then some [15, 51, 89, 126] else
    if m.val = 40 then some [26, 51, 69, 119] else none

theorem table3056_entry000 :
    matchingVariables coloring3056 0 = table3056 0 := by rfl

theorem table3056_entry001 :
    matchingVariables coloring3056 1 = table3056 1 := by rfl

theorem table3056_entry002 :
    matchingVariables coloring3056 2 = table3056 2 := by rfl

theorem table3056_entry003 :
    matchingVariables coloring3056 3 = table3056 3 := by rfl

theorem table3056_entry004 :
    matchingVariables coloring3056 4 = table3056 4 := by rfl

theorem table3056_entry005 :
    matchingVariables coloring3056 5 = table3056 5 := by rfl

theorem table3056_entry006 :
    matchingVariables coloring3056 6 = table3056 6 := by rfl

theorem table3056_entry007 :
    matchingVariables coloring3056 7 = table3056 7 := by rfl

theorem table3056_entry008 :
    matchingVariables coloring3056 8 = table3056 8 := by rfl

theorem table3056_entry009 :
    matchingVariables coloring3056 9 = table3056 9 := by rfl

theorem table3056_entry010 :
    matchingVariables coloring3056 10 = table3056 10 := by rfl

theorem table3056_entry011 :
    matchingVariables coloring3056 11 = table3056 11 := by rfl

theorem table3056_entry012 :
    matchingVariables coloring3056 12 = table3056 12 := by rfl

theorem table3056_entry013 :
    matchingVariables coloring3056 13 = table3056 13 := by rfl

theorem table3056_entry014 :
    matchingVariables coloring3056 14 = table3056 14 := by rfl

theorem table3056_entry015 :
    matchingVariables coloring3056 15 = table3056 15 := by rfl

theorem table3056_entry016 :
    matchingVariables coloring3056 16 = table3056 16 := by rfl

theorem table3056_entry017 :
    matchingVariables coloring3056 17 = table3056 17 := by rfl

theorem table3056_entry018 :
    matchingVariables coloring3056 18 = table3056 18 := by rfl

theorem table3056_entry019 :
    matchingVariables coloring3056 19 = table3056 19 := by rfl

theorem table3056_entry020 :
    matchingVariables coloring3056 20 = table3056 20 := by rfl

theorem table3056_entry021 :
    matchingVariables coloring3056 21 = table3056 21 := by rfl

theorem table3056_entry022 :
    matchingVariables coloring3056 22 = table3056 22 := by rfl

theorem table3056_entry023 :
    matchingVariables coloring3056 23 = table3056 23 := by rfl

theorem table3056_entry024 :
    matchingVariables coloring3056 24 = table3056 24 := by rfl

theorem table3056_entry025 :
    matchingVariables coloring3056 25 = table3056 25 := by rfl

theorem table3056_entry026 :
    matchingVariables coloring3056 26 = table3056 26 := by rfl

theorem table3056_entry027 :
    matchingVariables coloring3056 27 = table3056 27 := by rfl

theorem table3056_entry028 :
    matchingVariables coloring3056 28 = table3056 28 := by rfl

theorem table3056_entry029 :
    matchingVariables coloring3056 29 = table3056 29 := by rfl

theorem table3056_entry030 :
    matchingVariables coloring3056 30 = table3056 30 := by rfl

theorem table3056_entry031 :
    matchingVariables coloring3056 31 = table3056 31 := by rfl

theorem table3056_entry032 :
    matchingVariables coloring3056 32 = table3056 32 := by rfl

theorem table3056_entry033 :
    matchingVariables coloring3056 33 = table3056 33 := by rfl

theorem table3056_entry034 :
    matchingVariables coloring3056 34 = table3056 34 := by rfl

theorem table3056_entry035 :
    matchingVariables coloring3056 35 = table3056 35 := by rfl

theorem table3056_entry036 :
    matchingVariables coloring3056 36 = table3056 36 := by rfl

theorem table3056_entry037 :
    matchingVariables coloring3056 37 = table3056 37 := by rfl

theorem table3056_entry038 :
    matchingVariables coloring3056 38 = table3056 38 := by rfl

theorem table3056_entry039 :
    matchingVariables coloring3056 39 = table3056 39 := by rfl

theorem table3056_entry040 :
    matchingVariables coloring3056 40 = table3056 40 := by rfl

theorem table3056_entry041 :
    matchingVariables coloring3056 41 = table3056 41 := by rfl

theorem table3056_entry042 :
    matchingVariables coloring3056 42 = table3056 42 := by rfl

theorem table3056_entry043 :
    matchingVariables coloring3056 43 = table3056 43 := by rfl

theorem table3056_entry044 :
    matchingVariables coloring3056 44 = table3056 44 := by rfl

theorem table3056_entry045 :
    matchingVariables coloring3056 45 = table3056 45 := by rfl

theorem table3056_entry046 :
    matchingVariables coloring3056 46 = table3056 46 := by rfl

theorem table3056_entry047 :
    matchingVariables coloring3056 47 = table3056 47 := by rfl

theorem table3056_entry048 :
    matchingVariables coloring3056 48 = table3056 48 := by rfl

theorem table3056_entry049 :
    matchingVariables coloring3056 49 = table3056 49 := by rfl

theorem table3056_entry050 :
    matchingVariables coloring3056 50 = table3056 50 := by rfl

theorem table3056_entry051 :
    matchingVariables coloring3056 51 = table3056 51 := by rfl

theorem table3056_entry052 :
    matchingVariables coloring3056 52 = table3056 52 := by rfl

theorem table3056_entry053 :
    matchingVariables coloring3056 53 = table3056 53 := by rfl

theorem table3056_entry054 :
    matchingVariables coloring3056 54 = table3056 54 := by rfl

theorem table3056_entry055 :
    matchingVariables coloring3056 55 = table3056 55 := by rfl

theorem table3056_entry056 :
    matchingVariables coloring3056 56 = table3056 56 := by rfl

theorem table3056_entry057 :
    matchingVariables coloring3056 57 = table3056 57 := by rfl

theorem table3056_entry058 :
    matchingVariables coloring3056 58 = table3056 58 := by rfl

theorem table3056_entry059 :
    matchingVariables coloring3056 59 = table3056 59 := by rfl

theorem table3056_entry060 :
    matchingVariables coloring3056 60 = table3056 60 := by rfl

theorem table3056_entry061 :
    matchingVariables coloring3056 61 = table3056 61 := by rfl

theorem table3056_entry062 :
    matchingVariables coloring3056 62 = table3056 62 := by rfl

theorem table3056_entry063 :
    matchingVariables coloring3056 63 = table3056 63 := by rfl

theorem table3056_entry064 :
    matchingVariables coloring3056 64 = table3056 64 := by rfl

theorem table3056_entry065 :
    matchingVariables coloring3056 65 = table3056 65 := by rfl

theorem table3056_entry066 :
    matchingVariables coloring3056 66 = table3056 66 := by rfl

theorem table3056_entry067 :
    matchingVariables coloring3056 67 = table3056 67 := by rfl

theorem table3056_entry068 :
    matchingVariables coloring3056 68 = table3056 68 := by rfl

theorem table3056_entry069 :
    matchingVariables coloring3056 69 = table3056 69 := by rfl

theorem table3056_entry070 :
    matchingVariables coloring3056 70 = table3056 70 := by rfl

theorem table3056_entry071 :
    matchingVariables coloring3056 71 = table3056 71 := by rfl

theorem table3056_entry072 :
    matchingVariables coloring3056 72 = table3056 72 := by rfl

theorem table3056_entry073 :
    matchingVariables coloring3056 73 = table3056 73 := by rfl

theorem table3056_entry074 :
    matchingVariables coloring3056 74 = table3056 74 := by rfl

theorem table3056_entry075 :
    matchingVariables coloring3056 75 = table3056 75 := by rfl

theorem table3056_entry076 :
    matchingVariables coloring3056 76 = table3056 76 := by rfl

theorem table3056_entry077 :
    matchingVariables coloring3056 77 = table3056 77 := by rfl

theorem table3056_entry078 :
    matchingVariables coloring3056 78 = table3056 78 := by rfl

theorem table3056_entry079 :
    matchingVariables coloring3056 79 = table3056 79 := by rfl

theorem table3056_entry080 :
    matchingVariables coloring3056 80 = table3056 80 := by rfl

theorem table3056_entry081 :
    matchingVariables coloring3056 81 = table3056 81 := by rfl

theorem table3056_entry082 :
    matchingVariables coloring3056 82 = table3056 82 := by rfl

theorem table3056_entry083 :
    matchingVariables coloring3056 83 = table3056 83 := by rfl

theorem table3056_entry084 :
    matchingVariables coloring3056 84 = table3056 84 := by rfl

theorem table3056_entry085 :
    matchingVariables coloring3056 85 = table3056 85 := by rfl

theorem table3056_entry086 :
    matchingVariables coloring3056 86 = table3056 86 := by rfl

theorem table3056_entry087 :
    matchingVariables coloring3056 87 = table3056 87 := by rfl

theorem table3056_entry088 :
    matchingVariables coloring3056 88 = table3056 88 := by rfl

theorem table3056_entry089 :
    matchingVariables coloring3056 89 = table3056 89 := by rfl

theorem table3056_entry090 :
    matchingVariables coloring3056 90 = table3056 90 := by rfl

theorem table3056_entry091 :
    matchingVariables coloring3056 91 = table3056 91 := by rfl

theorem table3056_entry092 :
    matchingVariables coloring3056 92 = table3056 92 := by rfl

theorem table3056_entry093 :
    matchingVariables coloring3056 93 = table3056 93 := by rfl

theorem table3056_entry094 :
    matchingVariables coloring3056 94 = table3056 94 := by rfl

theorem table3056_entry095 :
    matchingVariables coloring3056 95 = table3056 95 := by rfl

theorem table3056_entry096 :
    matchingVariables coloring3056 96 = table3056 96 := by rfl

theorem table3056_entry097 :
    matchingVariables coloring3056 97 = table3056 97 := by rfl

theorem table3056_entry098 :
    matchingVariables coloring3056 98 = table3056 98 := by rfl

theorem table3056_entry099 :
    matchingVariables coloring3056 99 = table3056 99 := by rfl

theorem table3056_entry100 :
    matchingVariables coloring3056 100 = table3056 100 := by rfl

theorem table3056_entry101 :
    matchingVariables coloring3056 101 = table3056 101 := by rfl

theorem table3056_entry102 :
    matchingVariables coloring3056 102 = table3056 102 := by rfl

theorem table3056_entry103 :
    matchingVariables coloring3056 103 = table3056 103 := by rfl

theorem table3056_entry104 :
    matchingVariables coloring3056 104 = table3056 104 := by rfl

theorem table3056_complete : ∀ m, matchingVariables coloring3056 m = table3056 m := by
  intro m
  fin_cases m
  · exact table3056_entry000
  · exact table3056_entry001
  · exact table3056_entry002
  · exact table3056_entry003
  · exact table3056_entry004
  · exact table3056_entry005
  · exact table3056_entry006
  · exact table3056_entry007
  · exact table3056_entry008
  · exact table3056_entry009
  · exact table3056_entry010
  · exact table3056_entry011
  · exact table3056_entry012
  · exact table3056_entry013
  · exact table3056_entry014
  · exact table3056_entry015
  · exact table3056_entry016
  · exact table3056_entry017
  · exact table3056_entry018
  · exact table3056_entry019
  · exact table3056_entry020
  · exact table3056_entry021
  · exact table3056_entry022
  · exact table3056_entry023
  · exact table3056_entry024
  · exact table3056_entry025
  · exact table3056_entry026
  · exact table3056_entry027
  · exact table3056_entry028
  · exact table3056_entry029
  · exact table3056_entry030
  · exact table3056_entry031
  · exact table3056_entry032
  · exact table3056_entry033
  · exact table3056_entry034
  · exact table3056_entry035
  · exact table3056_entry036
  · exact table3056_entry037
  · exact table3056_entry038
  · exact table3056_entry039
  · exact table3056_entry040
  · exact table3056_entry041
  · exact table3056_entry042
  · exact table3056_entry043
  · exact table3056_entry044
  · exact table3056_entry045
  · exact table3056_entry046
  · exact table3056_entry047
  · exact table3056_entry048
  · exact table3056_entry049
  · exact table3056_entry050
  · exact table3056_entry051
  · exact table3056_entry052
  · exact table3056_entry053
  · exact table3056_entry054
  · exact table3056_entry055
  · exact table3056_entry056
  · exact table3056_entry057
  · exact table3056_entry058
  · exact table3056_entry059
  · exact table3056_entry060
  · exact table3056_entry061
  · exact table3056_entry062
  · exact table3056_entry063
  · exact table3056_entry064
  · exact table3056_entry065
  · exact table3056_entry066
  · exact table3056_entry067
  · exact table3056_entry068
  · exact table3056_entry069
  · exact table3056_entry070
  · exact table3056_entry071
  · exact table3056_entry072
  · exact table3056_entry073
  · exact table3056_entry074
  · exact table3056_entry075
  · exact table3056_entry076
  · exact table3056_entry077
  · exact table3056_entry078
  · exact table3056_entry079
  · exact table3056_entry080
  · exact table3056_entry081
  · exact table3056_entry082
  · exact table3056_entry083
  · exact table3056_entry084
  · exact table3056_entry085
  · exact table3056_entry086
  · exact table3056_entry087
  · exact table3056_entry088
  · exact table3056_entry089
  · exact table3056_entry090
  · exact table3056_entry091
  · exact table3056_entry092
  · exact table3056_entry093
  · exact table3056_entry094
  · exact table3056_entry095
  · exact table3056_entry096
  · exact table3056_entry097
  · exact table3056_entry098
  · exact table3056_entry099
  · exact table3056_entry100
  · exact table3056_entry101
  · exact table3056_entry102
  · exact table3056_entry103
  · exact table3056_entry104

#print axioms table3056_complete

def expanded3056 : Polynomial 143 := [(1, exponentOfVariables [7, 59, 101, 138]),
  (1, exponentOfVariables [7, 59, 111, 126]),
  (1, exponentOfVariables [7, 69, 89, 138]),
  (1, exponentOfVariables [15, 41, 89, 138]),
  (1, exponentOfVariables [15, 51, 89, 126]),
  (1, exponentOfVariables [26, 51, 69, 119])]

theorem table3056_expanded : tablePolynomial table3056 = expanded3056 := by
  rfl

theorem table3056_exponent00 :
    exponentOfVariables (n := 143) [7, 59, 101, 138] =
      (fun i => if i.val = 7 then (1) else if i.val = 59 then (1) else if i.val = 101 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3056_exponent01 :
    exponentOfVariables (n := 143) [7, 59, 111, 126] =
      (fun i => if i.val = 7 then (1) else if i.val = 59 then (1) else if i.val = 111 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3056_exponent02 :
    exponentOfVariables (n := 143) [7, 69, 89, 138] =
      (fun i => if i.val = 7 then (1) else if i.val = 69 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3056_exponent03 :
    exponentOfVariables (n := 143) [15, 41, 89, 138] =
      (fun i => if i.val = 15 then (1) else if i.val = 41 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3056_exponent04 :
    exponentOfVariables (n := 143) [15, 51, 89, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3056_exponent05 :
    exponentOfVariables (n := 143) [26, 51, 69, 119] =
      (fun i => if i.val = 26 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3056_polynomial : expanded3056 = amplitude3056 := by
  simp only [expanded3056, amplitude3056, table3056_exponent00, table3056_exponent01, table3056_exponent02, table3056_exponent03, table3056_exponent04, table3056_exponent05]

theorem premiseCheck107 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3056)) p107 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
