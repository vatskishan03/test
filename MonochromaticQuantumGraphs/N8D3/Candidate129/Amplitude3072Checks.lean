import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3072 : Fin 8 → Fin 3 := ![0, 1, 2, 2, 1, 0, 1, 1]

def table3072 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 65, 101, 138] else
    if m.val = 1 then some [1, 65, 111, 126] else
    if m.val = 6 then some [1, 75, 89, 138] else
    if m.val = 21 then some [11, 41, 89, 138] else
    if m.val = 24 then some [11, 51, 89, 126] else
    if m.val = 40 then some [20, 51, 75, 119] else none

theorem table3072_entry000 :
    matchingVariables coloring3072 0 = table3072 0 := by rfl

theorem table3072_entry001 :
    matchingVariables coloring3072 1 = table3072 1 := by rfl

theorem table3072_entry002 :
    matchingVariables coloring3072 2 = table3072 2 := by rfl

theorem table3072_entry003 :
    matchingVariables coloring3072 3 = table3072 3 := by rfl

theorem table3072_entry004 :
    matchingVariables coloring3072 4 = table3072 4 := by rfl

theorem table3072_entry005 :
    matchingVariables coloring3072 5 = table3072 5 := by rfl

theorem table3072_entry006 :
    matchingVariables coloring3072 6 = table3072 6 := by rfl

theorem table3072_entry007 :
    matchingVariables coloring3072 7 = table3072 7 := by rfl

theorem table3072_entry008 :
    matchingVariables coloring3072 8 = table3072 8 := by rfl

theorem table3072_entry009 :
    matchingVariables coloring3072 9 = table3072 9 := by rfl

theorem table3072_entry010 :
    matchingVariables coloring3072 10 = table3072 10 := by rfl

theorem table3072_entry011 :
    matchingVariables coloring3072 11 = table3072 11 := by rfl

theorem table3072_entry012 :
    matchingVariables coloring3072 12 = table3072 12 := by rfl

theorem table3072_entry013 :
    matchingVariables coloring3072 13 = table3072 13 := by rfl

theorem table3072_entry014 :
    matchingVariables coloring3072 14 = table3072 14 := by rfl

theorem table3072_entry015 :
    matchingVariables coloring3072 15 = table3072 15 := by rfl

theorem table3072_entry016 :
    matchingVariables coloring3072 16 = table3072 16 := by rfl

theorem table3072_entry017 :
    matchingVariables coloring3072 17 = table3072 17 := by rfl

theorem table3072_entry018 :
    matchingVariables coloring3072 18 = table3072 18 := by rfl

theorem table3072_entry019 :
    matchingVariables coloring3072 19 = table3072 19 := by rfl

theorem table3072_entry020 :
    matchingVariables coloring3072 20 = table3072 20 := by rfl

theorem table3072_entry021 :
    matchingVariables coloring3072 21 = table3072 21 := by rfl

theorem table3072_entry022 :
    matchingVariables coloring3072 22 = table3072 22 := by rfl

theorem table3072_entry023 :
    matchingVariables coloring3072 23 = table3072 23 := by rfl

theorem table3072_entry024 :
    matchingVariables coloring3072 24 = table3072 24 := by rfl

theorem table3072_entry025 :
    matchingVariables coloring3072 25 = table3072 25 := by rfl

theorem table3072_entry026 :
    matchingVariables coloring3072 26 = table3072 26 := by rfl

theorem table3072_entry027 :
    matchingVariables coloring3072 27 = table3072 27 := by rfl

theorem table3072_entry028 :
    matchingVariables coloring3072 28 = table3072 28 := by rfl

theorem table3072_entry029 :
    matchingVariables coloring3072 29 = table3072 29 := by rfl

theorem table3072_entry030 :
    matchingVariables coloring3072 30 = table3072 30 := by rfl

theorem table3072_entry031 :
    matchingVariables coloring3072 31 = table3072 31 := by rfl

theorem table3072_entry032 :
    matchingVariables coloring3072 32 = table3072 32 := by rfl

theorem table3072_entry033 :
    matchingVariables coloring3072 33 = table3072 33 := by rfl

theorem table3072_entry034 :
    matchingVariables coloring3072 34 = table3072 34 := by rfl

theorem table3072_entry035 :
    matchingVariables coloring3072 35 = table3072 35 := by rfl

theorem table3072_entry036 :
    matchingVariables coloring3072 36 = table3072 36 := by rfl

theorem table3072_entry037 :
    matchingVariables coloring3072 37 = table3072 37 := by rfl

theorem table3072_entry038 :
    matchingVariables coloring3072 38 = table3072 38 := by rfl

theorem table3072_entry039 :
    matchingVariables coloring3072 39 = table3072 39 := by rfl

theorem table3072_entry040 :
    matchingVariables coloring3072 40 = table3072 40 := by rfl

theorem table3072_entry041 :
    matchingVariables coloring3072 41 = table3072 41 := by rfl

theorem table3072_entry042 :
    matchingVariables coloring3072 42 = table3072 42 := by rfl

theorem table3072_entry043 :
    matchingVariables coloring3072 43 = table3072 43 := by rfl

theorem table3072_entry044 :
    matchingVariables coloring3072 44 = table3072 44 := by rfl

theorem table3072_entry045 :
    matchingVariables coloring3072 45 = table3072 45 := by rfl

theorem table3072_entry046 :
    matchingVariables coloring3072 46 = table3072 46 := by rfl

theorem table3072_entry047 :
    matchingVariables coloring3072 47 = table3072 47 := by rfl

theorem table3072_entry048 :
    matchingVariables coloring3072 48 = table3072 48 := by rfl

theorem table3072_entry049 :
    matchingVariables coloring3072 49 = table3072 49 := by rfl

theorem table3072_entry050 :
    matchingVariables coloring3072 50 = table3072 50 := by rfl

theorem table3072_entry051 :
    matchingVariables coloring3072 51 = table3072 51 := by rfl

theorem table3072_entry052 :
    matchingVariables coloring3072 52 = table3072 52 := by rfl

theorem table3072_entry053 :
    matchingVariables coloring3072 53 = table3072 53 := by rfl

theorem table3072_entry054 :
    matchingVariables coloring3072 54 = table3072 54 := by rfl

theorem table3072_entry055 :
    matchingVariables coloring3072 55 = table3072 55 := by rfl

theorem table3072_entry056 :
    matchingVariables coloring3072 56 = table3072 56 := by rfl

theorem table3072_entry057 :
    matchingVariables coloring3072 57 = table3072 57 := by rfl

theorem table3072_entry058 :
    matchingVariables coloring3072 58 = table3072 58 := by rfl

theorem table3072_entry059 :
    matchingVariables coloring3072 59 = table3072 59 := by rfl

theorem table3072_entry060 :
    matchingVariables coloring3072 60 = table3072 60 := by rfl

theorem table3072_entry061 :
    matchingVariables coloring3072 61 = table3072 61 := by rfl

theorem table3072_entry062 :
    matchingVariables coloring3072 62 = table3072 62 := by rfl

theorem table3072_entry063 :
    matchingVariables coloring3072 63 = table3072 63 := by rfl

theorem table3072_entry064 :
    matchingVariables coloring3072 64 = table3072 64 := by rfl

theorem table3072_entry065 :
    matchingVariables coloring3072 65 = table3072 65 := by rfl

theorem table3072_entry066 :
    matchingVariables coloring3072 66 = table3072 66 := by rfl

theorem table3072_entry067 :
    matchingVariables coloring3072 67 = table3072 67 := by rfl

theorem table3072_entry068 :
    matchingVariables coloring3072 68 = table3072 68 := by rfl

theorem table3072_entry069 :
    matchingVariables coloring3072 69 = table3072 69 := by rfl

theorem table3072_entry070 :
    matchingVariables coloring3072 70 = table3072 70 := by rfl

theorem table3072_entry071 :
    matchingVariables coloring3072 71 = table3072 71 := by rfl

theorem table3072_entry072 :
    matchingVariables coloring3072 72 = table3072 72 := by rfl

theorem table3072_entry073 :
    matchingVariables coloring3072 73 = table3072 73 := by rfl

theorem table3072_entry074 :
    matchingVariables coloring3072 74 = table3072 74 := by rfl

theorem table3072_entry075 :
    matchingVariables coloring3072 75 = table3072 75 := by rfl

theorem table3072_entry076 :
    matchingVariables coloring3072 76 = table3072 76 := by rfl

theorem table3072_entry077 :
    matchingVariables coloring3072 77 = table3072 77 := by rfl

theorem table3072_entry078 :
    matchingVariables coloring3072 78 = table3072 78 := by rfl

theorem table3072_entry079 :
    matchingVariables coloring3072 79 = table3072 79 := by rfl

theorem table3072_entry080 :
    matchingVariables coloring3072 80 = table3072 80 := by rfl

theorem table3072_entry081 :
    matchingVariables coloring3072 81 = table3072 81 := by rfl

theorem table3072_entry082 :
    matchingVariables coloring3072 82 = table3072 82 := by rfl

theorem table3072_entry083 :
    matchingVariables coloring3072 83 = table3072 83 := by rfl

theorem table3072_entry084 :
    matchingVariables coloring3072 84 = table3072 84 := by rfl

theorem table3072_entry085 :
    matchingVariables coloring3072 85 = table3072 85 := by rfl

theorem table3072_entry086 :
    matchingVariables coloring3072 86 = table3072 86 := by rfl

theorem table3072_entry087 :
    matchingVariables coloring3072 87 = table3072 87 := by rfl

theorem table3072_entry088 :
    matchingVariables coloring3072 88 = table3072 88 := by rfl

theorem table3072_entry089 :
    matchingVariables coloring3072 89 = table3072 89 := by rfl

theorem table3072_entry090 :
    matchingVariables coloring3072 90 = table3072 90 := by rfl

theorem table3072_entry091 :
    matchingVariables coloring3072 91 = table3072 91 := by rfl

theorem table3072_entry092 :
    matchingVariables coloring3072 92 = table3072 92 := by rfl

theorem table3072_entry093 :
    matchingVariables coloring3072 93 = table3072 93 := by rfl

theorem table3072_entry094 :
    matchingVariables coloring3072 94 = table3072 94 := by rfl

theorem table3072_entry095 :
    matchingVariables coloring3072 95 = table3072 95 := by rfl

theorem table3072_entry096 :
    matchingVariables coloring3072 96 = table3072 96 := by rfl

theorem table3072_entry097 :
    matchingVariables coloring3072 97 = table3072 97 := by rfl

theorem table3072_entry098 :
    matchingVariables coloring3072 98 = table3072 98 := by rfl

theorem table3072_entry099 :
    matchingVariables coloring3072 99 = table3072 99 := by rfl

theorem table3072_entry100 :
    matchingVariables coloring3072 100 = table3072 100 := by rfl

theorem table3072_entry101 :
    matchingVariables coloring3072 101 = table3072 101 := by rfl

theorem table3072_entry102 :
    matchingVariables coloring3072 102 = table3072 102 := by rfl

theorem table3072_entry103 :
    matchingVariables coloring3072 103 = table3072 103 := by rfl

theorem table3072_entry104 :
    matchingVariables coloring3072 104 = table3072 104 := by rfl

theorem table3072_complete : ∀ m, matchingVariables coloring3072 m = table3072 m := by
  intro m
  fin_cases m
  · exact table3072_entry000
  · exact table3072_entry001
  · exact table3072_entry002
  · exact table3072_entry003
  · exact table3072_entry004
  · exact table3072_entry005
  · exact table3072_entry006
  · exact table3072_entry007
  · exact table3072_entry008
  · exact table3072_entry009
  · exact table3072_entry010
  · exact table3072_entry011
  · exact table3072_entry012
  · exact table3072_entry013
  · exact table3072_entry014
  · exact table3072_entry015
  · exact table3072_entry016
  · exact table3072_entry017
  · exact table3072_entry018
  · exact table3072_entry019
  · exact table3072_entry020
  · exact table3072_entry021
  · exact table3072_entry022
  · exact table3072_entry023
  · exact table3072_entry024
  · exact table3072_entry025
  · exact table3072_entry026
  · exact table3072_entry027
  · exact table3072_entry028
  · exact table3072_entry029
  · exact table3072_entry030
  · exact table3072_entry031
  · exact table3072_entry032
  · exact table3072_entry033
  · exact table3072_entry034
  · exact table3072_entry035
  · exact table3072_entry036
  · exact table3072_entry037
  · exact table3072_entry038
  · exact table3072_entry039
  · exact table3072_entry040
  · exact table3072_entry041
  · exact table3072_entry042
  · exact table3072_entry043
  · exact table3072_entry044
  · exact table3072_entry045
  · exact table3072_entry046
  · exact table3072_entry047
  · exact table3072_entry048
  · exact table3072_entry049
  · exact table3072_entry050
  · exact table3072_entry051
  · exact table3072_entry052
  · exact table3072_entry053
  · exact table3072_entry054
  · exact table3072_entry055
  · exact table3072_entry056
  · exact table3072_entry057
  · exact table3072_entry058
  · exact table3072_entry059
  · exact table3072_entry060
  · exact table3072_entry061
  · exact table3072_entry062
  · exact table3072_entry063
  · exact table3072_entry064
  · exact table3072_entry065
  · exact table3072_entry066
  · exact table3072_entry067
  · exact table3072_entry068
  · exact table3072_entry069
  · exact table3072_entry070
  · exact table3072_entry071
  · exact table3072_entry072
  · exact table3072_entry073
  · exact table3072_entry074
  · exact table3072_entry075
  · exact table3072_entry076
  · exact table3072_entry077
  · exact table3072_entry078
  · exact table3072_entry079
  · exact table3072_entry080
  · exact table3072_entry081
  · exact table3072_entry082
  · exact table3072_entry083
  · exact table3072_entry084
  · exact table3072_entry085
  · exact table3072_entry086
  · exact table3072_entry087
  · exact table3072_entry088
  · exact table3072_entry089
  · exact table3072_entry090
  · exact table3072_entry091
  · exact table3072_entry092
  · exact table3072_entry093
  · exact table3072_entry094
  · exact table3072_entry095
  · exact table3072_entry096
  · exact table3072_entry097
  · exact table3072_entry098
  · exact table3072_entry099
  · exact table3072_entry100
  · exact table3072_entry101
  · exact table3072_entry102
  · exact table3072_entry103
  · exact table3072_entry104

#print axioms table3072_complete

def expanded3072 : Polynomial 143 := [(1, exponentOfVariables [1, 65, 101, 138]),
  (1, exponentOfVariables [1, 65, 111, 126]),
  (1, exponentOfVariables [1, 75, 89, 138]),
  (1, exponentOfVariables [11, 41, 89, 138]),
  (1, exponentOfVariables [11, 51, 89, 126]),
  (1, exponentOfVariables [20, 51, 75, 119])]

theorem table3072_expanded : tablePolynomial table3072 = expanded3072 := by
  rfl

theorem table3072_exponent00 :
    exponentOfVariables (n := 143) [1, 65, 101, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 65 then (1) else if i.val = 101 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3072_exponent01 :
    exponentOfVariables (n := 143) [1, 65, 111, 126] =
      (fun i => if i.val = 1 then (1) else if i.val = 65 then (1) else if i.val = 111 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3072_exponent02 :
    exponentOfVariables (n := 143) [1, 75, 89, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 75 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3072_exponent03 :
    exponentOfVariables (n := 143) [11, 41, 89, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 41 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3072_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 89, 126] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3072_exponent05 :
    exponentOfVariables (n := 143) [20, 51, 75, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 75 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3072_polynomial : expanded3072 = amplitude3072 := by
  simp only [expanded3072, amplitude3072, table3072_exponent00, table3072_exponent01, table3072_exponent02, table3072_exponent03, table3072_exponent04, table3072_exponent05]

theorem premiseCheck029 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3072)) p029 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
