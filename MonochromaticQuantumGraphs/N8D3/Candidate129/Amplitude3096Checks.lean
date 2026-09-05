import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3096 : Fin 8 → Fin 3 := ![0, 0, 2, 0, 2, 0, 1, 1]

def table3096 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 63, 104, 138] else
    if m.val = 6 then some [0, 75, 84, 138] else
    if m.val = 21 then some [11, 38, 84, 138] else
    if m.val = 24 then some [11, 48, 84, 126] else
    if m.val = 25 then some [11, 48, 91, 122] else
    if m.val = 40 then some [18, 48, 75, 122] else none

theorem table3096_entry000 :
    matchingVariables coloring3096 0 = table3096 0 := by rfl

theorem table3096_entry001 :
    matchingVariables coloring3096 1 = table3096 1 := by rfl

theorem table3096_entry002 :
    matchingVariables coloring3096 2 = table3096 2 := by rfl

theorem table3096_entry003 :
    matchingVariables coloring3096 3 = table3096 3 := by rfl

theorem table3096_entry004 :
    matchingVariables coloring3096 4 = table3096 4 := by rfl

theorem table3096_entry005 :
    matchingVariables coloring3096 5 = table3096 5 := by rfl

theorem table3096_entry006 :
    matchingVariables coloring3096 6 = table3096 6 := by rfl

theorem table3096_entry007 :
    matchingVariables coloring3096 7 = table3096 7 := by rfl

theorem table3096_entry008 :
    matchingVariables coloring3096 8 = table3096 8 := by rfl

theorem table3096_entry009 :
    matchingVariables coloring3096 9 = table3096 9 := by rfl

theorem table3096_entry010 :
    matchingVariables coloring3096 10 = table3096 10 := by rfl

theorem table3096_entry011 :
    matchingVariables coloring3096 11 = table3096 11 := by rfl

theorem table3096_entry012 :
    matchingVariables coloring3096 12 = table3096 12 := by rfl

theorem table3096_entry013 :
    matchingVariables coloring3096 13 = table3096 13 := by rfl

theorem table3096_entry014 :
    matchingVariables coloring3096 14 = table3096 14 := by rfl

theorem table3096_entry015 :
    matchingVariables coloring3096 15 = table3096 15 := by rfl

theorem table3096_entry016 :
    matchingVariables coloring3096 16 = table3096 16 := by rfl

theorem table3096_entry017 :
    matchingVariables coloring3096 17 = table3096 17 := by rfl

theorem table3096_entry018 :
    matchingVariables coloring3096 18 = table3096 18 := by rfl

theorem table3096_entry019 :
    matchingVariables coloring3096 19 = table3096 19 := by rfl

theorem table3096_entry020 :
    matchingVariables coloring3096 20 = table3096 20 := by rfl

theorem table3096_entry021 :
    matchingVariables coloring3096 21 = table3096 21 := by rfl

theorem table3096_entry022 :
    matchingVariables coloring3096 22 = table3096 22 := by rfl

theorem table3096_entry023 :
    matchingVariables coloring3096 23 = table3096 23 := by rfl

theorem table3096_entry024 :
    matchingVariables coloring3096 24 = table3096 24 := by rfl

theorem table3096_entry025 :
    matchingVariables coloring3096 25 = table3096 25 := by rfl

theorem table3096_entry026 :
    matchingVariables coloring3096 26 = table3096 26 := by rfl

theorem table3096_entry027 :
    matchingVariables coloring3096 27 = table3096 27 := by rfl

theorem table3096_entry028 :
    matchingVariables coloring3096 28 = table3096 28 := by rfl

theorem table3096_entry029 :
    matchingVariables coloring3096 29 = table3096 29 := by rfl

theorem table3096_entry030 :
    matchingVariables coloring3096 30 = table3096 30 := by rfl

theorem table3096_entry031 :
    matchingVariables coloring3096 31 = table3096 31 := by rfl

theorem table3096_entry032 :
    matchingVariables coloring3096 32 = table3096 32 := by rfl

theorem table3096_entry033 :
    matchingVariables coloring3096 33 = table3096 33 := by rfl

theorem table3096_entry034 :
    matchingVariables coloring3096 34 = table3096 34 := by rfl

theorem table3096_entry035 :
    matchingVariables coloring3096 35 = table3096 35 := by rfl

theorem table3096_entry036 :
    matchingVariables coloring3096 36 = table3096 36 := by rfl

theorem table3096_entry037 :
    matchingVariables coloring3096 37 = table3096 37 := by rfl

theorem table3096_entry038 :
    matchingVariables coloring3096 38 = table3096 38 := by rfl

theorem table3096_entry039 :
    matchingVariables coloring3096 39 = table3096 39 := by rfl

theorem table3096_entry040 :
    matchingVariables coloring3096 40 = table3096 40 := by rfl

theorem table3096_entry041 :
    matchingVariables coloring3096 41 = table3096 41 := by rfl

theorem table3096_entry042 :
    matchingVariables coloring3096 42 = table3096 42 := by rfl

theorem table3096_entry043 :
    matchingVariables coloring3096 43 = table3096 43 := by rfl

theorem table3096_entry044 :
    matchingVariables coloring3096 44 = table3096 44 := by rfl

theorem table3096_entry045 :
    matchingVariables coloring3096 45 = table3096 45 := by rfl

theorem table3096_entry046 :
    matchingVariables coloring3096 46 = table3096 46 := by rfl

theorem table3096_entry047 :
    matchingVariables coloring3096 47 = table3096 47 := by rfl

theorem table3096_entry048 :
    matchingVariables coloring3096 48 = table3096 48 := by rfl

theorem table3096_entry049 :
    matchingVariables coloring3096 49 = table3096 49 := by rfl

theorem table3096_entry050 :
    matchingVariables coloring3096 50 = table3096 50 := by rfl

theorem table3096_entry051 :
    matchingVariables coloring3096 51 = table3096 51 := by rfl

theorem table3096_entry052 :
    matchingVariables coloring3096 52 = table3096 52 := by rfl

theorem table3096_entry053 :
    matchingVariables coloring3096 53 = table3096 53 := by rfl

theorem table3096_entry054 :
    matchingVariables coloring3096 54 = table3096 54 := by rfl

theorem table3096_entry055 :
    matchingVariables coloring3096 55 = table3096 55 := by rfl

theorem table3096_entry056 :
    matchingVariables coloring3096 56 = table3096 56 := by rfl

theorem table3096_entry057 :
    matchingVariables coloring3096 57 = table3096 57 := by rfl

theorem table3096_entry058 :
    matchingVariables coloring3096 58 = table3096 58 := by rfl

theorem table3096_entry059 :
    matchingVariables coloring3096 59 = table3096 59 := by rfl

theorem table3096_entry060 :
    matchingVariables coloring3096 60 = table3096 60 := by rfl

theorem table3096_entry061 :
    matchingVariables coloring3096 61 = table3096 61 := by rfl

theorem table3096_entry062 :
    matchingVariables coloring3096 62 = table3096 62 := by rfl

theorem table3096_entry063 :
    matchingVariables coloring3096 63 = table3096 63 := by rfl

theorem table3096_entry064 :
    matchingVariables coloring3096 64 = table3096 64 := by rfl

theorem table3096_entry065 :
    matchingVariables coloring3096 65 = table3096 65 := by rfl

theorem table3096_entry066 :
    matchingVariables coloring3096 66 = table3096 66 := by rfl

theorem table3096_entry067 :
    matchingVariables coloring3096 67 = table3096 67 := by rfl

theorem table3096_entry068 :
    matchingVariables coloring3096 68 = table3096 68 := by rfl

theorem table3096_entry069 :
    matchingVariables coloring3096 69 = table3096 69 := by rfl

theorem table3096_entry070 :
    matchingVariables coloring3096 70 = table3096 70 := by rfl

theorem table3096_entry071 :
    matchingVariables coloring3096 71 = table3096 71 := by rfl

theorem table3096_entry072 :
    matchingVariables coloring3096 72 = table3096 72 := by rfl

theorem table3096_entry073 :
    matchingVariables coloring3096 73 = table3096 73 := by rfl

theorem table3096_entry074 :
    matchingVariables coloring3096 74 = table3096 74 := by rfl

theorem table3096_entry075 :
    matchingVariables coloring3096 75 = table3096 75 := by rfl

theorem table3096_entry076 :
    matchingVariables coloring3096 76 = table3096 76 := by rfl

theorem table3096_entry077 :
    matchingVariables coloring3096 77 = table3096 77 := by rfl

theorem table3096_entry078 :
    matchingVariables coloring3096 78 = table3096 78 := by rfl

theorem table3096_entry079 :
    matchingVariables coloring3096 79 = table3096 79 := by rfl

theorem table3096_entry080 :
    matchingVariables coloring3096 80 = table3096 80 := by rfl

theorem table3096_entry081 :
    matchingVariables coloring3096 81 = table3096 81 := by rfl

theorem table3096_entry082 :
    matchingVariables coloring3096 82 = table3096 82 := by rfl

theorem table3096_entry083 :
    matchingVariables coloring3096 83 = table3096 83 := by rfl

theorem table3096_entry084 :
    matchingVariables coloring3096 84 = table3096 84 := by rfl

theorem table3096_entry085 :
    matchingVariables coloring3096 85 = table3096 85 := by rfl

theorem table3096_entry086 :
    matchingVariables coloring3096 86 = table3096 86 := by rfl

theorem table3096_entry087 :
    matchingVariables coloring3096 87 = table3096 87 := by rfl

theorem table3096_entry088 :
    matchingVariables coloring3096 88 = table3096 88 := by rfl

theorem table3096_entry089 :
    matchingVariables coloring3096 89 = table3096 89 := by rfl

theorem table3096_entry090 :
    matchingVariables coloring3096 90 = table3096 90 := by rfl

theorem table3096_entry091 :
    matchingVariables coloring3096 91 = table3096 91 := by rfl

theorem table3096_entry092 :
    matchingVariables coloring3096 92 = table3096 92 := by rfl

theorem table3096_entry093 :
    matchingVariables coloring3096 93 = table3096 93 := by rfl

theorem table3096_entry094 :
    matchingVariables coloring3096 94 = table3096 94 := by rfl

theorem table3096_entry095 :
    matchingVariables coloring3096 95 = table3096 95 := by rfl

theorem table3096_entry096 :
    matchingVariables coloring3096 96 = table3096 96 := by rfl

theorem table3096_entry097 :
    matchingVariables coloring3096 97 = table3096 97 := by rfl

theorem table3096_entry098 :
    matchingVariables coloring3096 98 = table3096 98 := by rfl

theorem table3096_entry099 :
    matchingVariables coloring3096 99 = table3096 99 := by rfl

theorem table3096_entry100 :
    matchingVariables coloring3096 100 = table3096 100 := by rfl

theorem table3096_entry101 :
    matchingVariables coloring3096 101 = table3096 101 := by rfl

theorem table3096_entry102 :
    matchingVariables coloring3096 102 = table3096 102 := by rfl

theorem table3096_entry103 :
    matchingVariables coloring3096 103 = table3096 103 := by rfl

theorem table3096_entry104 :
    matchingVariables coloring3096 104 = table3096 104 := by rfl

theorem table3096_complete : ∀ m, matchingVariables coloring3096 m = table3096 m := by
  intro m
  fin_cases m
  · exact table3096_entry000
  · exact table3096_entry001
  · exact table3096_entry002
  · exact table3096_entry003
  · exact table3096_entry004
  · exact table3096_entry005
  · exact table3096_entry006
  · exact table3096_entry007
  · exact table3096_entry008
  · exact table3096_entry009
  · exact table3096_entry010
  · exact table3096_entry011
  · exact table3096_entry012
  · exact table3096_entry013
  · exact table3096_entry014
  · exact table3096_entry015
  · exact table3096_entry016
  · exact table3096_entry017
  · exact table3096_entry018
  · exact table3096_entry019
  · exact table3096_entry020
  · exact table3096_entry021
  · exact table3096_entry022
  · exact table3096_entry023
  · exact table3096_entry024
  · exact table3096_entry025
  · exact table3096_entry026
  · exact table3096_entry027
  · exact table3096_entry028
  · exact table3096_entry029
  · exact table3096_entry030
  · exact table3096_entry031
  · exact table3096_entry032
  · exact table3096_entry033
  · exact table3096_entry034
  · exact table3096_entry035
  · exact table3096_entry036
  · exact table3096_entry037
  · exact table3096_entry038
  · exact table3096_entry039
  · exact table3096_entry040
  · exact table3096_entry041
  · exact table3096_entry042
  · exact table3096_entry043
  · exact table3096_entry044
  · exact table3096_entry045
  · exact table3096_entry046
  · exact table3096_entry047
  · exact table3096_entry048
  · exact table3096_entry049
  · exact table3096_entry050
  · exact table3096_entry051
  · exact table3096_entry052
  · exact table3096_entry053
  · exact table3096_entry054
  · exact table3096_entry055
  · exact table3096_entry056
  · exact table3096_entry057
  · exact table3096_entry058
  · exact table3096_entry059
  · exact table3096_entry060
  · exact table3096_entry061
  · exact table3096_entry062
  · exact table3096_entry063
  · exact table3096_entry064
  · exact table3096_entry065
  · exact table3096_entry066
  · exact table3096_entry067
  · exact table3096_entry068
  · exact table3096_entry069
  · exact table3096_entry070
  · exact table3096_entry071
  · exact table3096_entry072
  · exact table3096_entry073
  · exact table3096_entry074
  · exact table3096_entry075
  · exact table3096_entry076
  · exact table3096_entry077
  · exact table3096_entry078
  · exact table3096_entry079
  · exact table3096_entry080
  · exact table3096_entry081
  · exact table3096_entry082
  · exact table3096_entry083
  · exact table3096_entry084
  · exact table3096_entry085
  · exact table3096_entry086
  · exact table3096_entry087
  · exact table3096_entry088
  · exact table3096_entry089
  · exact table3096_entry090
  · exact table3096_entry091
  · exact table3096_entry092
  · exact table3096_entry093
  · exact table3096_entry094
  · exact table3096_entry095
  · exact table3096_entry096
  · exact table3096_entry097
  · exact table3096_entry098
  · exact table3096_entry099
  · exact table3096_entry100
  · exact table3096_entry101
  · exact table3096_entry102
  · exact table3096_entry103
  · exact table3096_entry104

#print axioms table3096_complete

def expanded3096 : Polynomial 143 := [(1, exponentOfVariables [0, 63, 104, 138]),
  (1, exponentOfVariables [0, 75, 84, 138]),
  (1, exponentOfVariables [11, 38, 84, 138]),
  (1, exponentOfVariables [11, 48, 84, 126]),
  (1, exponentOfVariables [11, 48, 91, 122]),
  (1, exponentOfVariables [18, 48, 75, 122])]

theorem table3096_expanded : tablePolynomial table3096 = expanded3096 := by
  rfl

theorem table3096_exponent00 :
    exponentOfVariables (n := 143) [0, 63, 104, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 63 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3096_exponent01 :
    exponentOfVariables (n := 143) [0, 75, 84, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 75 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3096_exponent02 :
    exponentOfVariables (n := 143) [11, 38, 84, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 38 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3096_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 84, 126] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 84 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3096_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 91, 122] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 91 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3096_exponent05 :
    exponentOfVariables (n := 143) [18, 48, 75, 122] =
      (fun i => if i.val = 18 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3096_polynomial : expanded3096 = amplitude3096 := by
  simp only [expanded3096, amplitude3096, table3096_exponent00, table3096_exponent01, table3096_exponent02, table3096_exponent03, table3096_exponent04, table3096_exponent05]

theorem premiseCheck085 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3096)) p085 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
