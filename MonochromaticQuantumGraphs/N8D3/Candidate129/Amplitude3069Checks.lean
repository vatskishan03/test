import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3069 : Fin 8 → Fin 3 := ![0, 0, 2, 2, 1, 0, 1, 1]

def table3069 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 65, 101, 138] else
    if m.val = 1 then some [0, 65, 111, 126] else
    if m.val = 6 then some [0, 75, 89, 138] else
    if m.val = 21 then some [11, 38, 89, 138] else
    if m.val = 24 then some [11, 48, 89, 126] else
    if m.val = 40 then some [20, 48, 75, 119] else none

theorem table3069_entry000 :
    matchingVariables coloring3069 0 = table3069 0 := by rfl

theorem table3069_entry001 :
    matchingVariables coloring3069 1 = table3069 1 := by rfl

theorem table3069_entry002 :
    matchingVariables coloring3069 2 = table3069 2 := by rfl

theorem table3069_entry003 :
    matchingVariables coloring3069 3 = table3069 3 := by rfl

theorem table3069_entry004 :
    matchingVariables coloring3069 4 = table3069 4 := by rfl

theorem table3069_entry005 :
    matchingVariables coloring3069 5 = table3069 5 := by rfl

theorem table3069_entry006 :
    matchingVariables coloring3069 6 = table3069 6 := by rfl

theorem table3069_entry007 :
    matchingVariables coloring3069 7 = table3069 7 := by rfl

theorem table3069_entry008 :
    matchingVariables coloring3069 8 = table3069 8 := by rfl

theorem table3069_entry009 :
    matchingVariables coloring3069 9 = table3069 9 := by rfl

theorem table3069_entry010 :
    matchingVariables coloring3069 10 = table3069 10 := by rfl

theorem table3069_entry011 :
    matchingVariables coloring3069 11 = table3069 11 := by rfl

theorem table3069_entry012 :
    matchingVariables coloring3069 12 = table3069 12 := by rfl

theorem table3069_entry013 :
    matchingVariables coloring3069 13 = table3069 13 := by rfl

theorem table3069_entry014 :
    matchingVariables coloring3069 14 = table3069 14 := by rfl

theorem table3069_entry015 :
    matchingVariables coloring3069 15 = table3069 15 := by rfl

theorem table3069_entry016 :
    matchingVariables coloring3069 16 = table3069 16 := by rfl

theorem table3069_entry017 :
    matchingVariables coloring3069 17 = table3069 17 := by rfl

theorem table3069_entry018 :
    matchingVariables coloring3069 18 = table3069 18 := by rfl

theorem table3069_entry019 :
    matchingVariables coloring3069 19 = table3069 19 := by rfl

theorem table3069_entry020 :
    matchingVariables coloring3069 20 = table3069 20 := by rfl

theorem table3069_entry021 :
    matchingVariables coloring3069 21 = table3069 21 := by rfl

theorem table3069_entry022 :
    matchingVariables coloring3069 22 = table3069 22 := by rfl

theorem table3069_entry023 :
    matchingVariables coloring3069 23 = table3069 23 := by rfl

theorem table3069_entry024 :
    matchingVariables coloring3069 24 = table3069 24 := by rfl

theorem table3069_entry025 :
    matchingVariables coloring3069 25 = table3069 25 := by rfl

theorem table3069_entry026 :
    matchingVariables coloring3069 26 = table3069 26 := by rfl

theorem table3069_entry027 :
    matchingVariables coloring3069 27 = table3069 27 := by rfl

theorem table3069_entry028 :
    matchingVariables coloring3069 28 = table3069 28 := by rfl

theorem table3069_entry029 :
    matchingVariables coloring3069 29 = table3069 29 := by rfl

theorem table3069_entry030 :
    matchingVariables coloring3069 30 = table3069 30 := by rfl

theorem table3069_entry031 :
    matchingVariables coloring3069 31 = table3069 31 := by rfl

theorem table3069_entry032 :
    matchingVariables coloring3069 32 = table3069 32 := by rfl

theorem table3069_entry033 :
    matchingVariables coloring3069 33 = table3069 33 := by rfl

theorem table3069_entry034 :
    matchingVariables coloring3069 34 = table3069 34 := by rfl

theorem table3069_entry035 :
    matchingVariables coloring3069 35 = table3069 35 := by rfl

theorem table3069_entry036 :
    matchingVariables coloring3069 36 = table3069 36 := by rfl

theorem table3069_entry037 :
    matchingVariables coloring3069 37 = table3069 37 := by rfl

theorem table3069_entry038 :
    matchingVariables coloring3069 38 = table3069 38 := by rfl

theorem table3069_entry039 :
    matchingVariables coloring3069 39 = table3069 39 := by rfl

theorem table3069_entry040 :
    matchingVariables coloring3069 40 = table3069 40 := by rfl

theorem table3069_entry041 :
    matchingVariables coloring3069 41 = table3069 41 := by rfl

theorem table3069_entry042 :
    matchingVariables coloring3069 42 = table3069 42 := by rfl

theorem table3069_entry043 :
    matchingVariables coloring3069 43 = table3069 43 := by rfl

theorem table3069_entry044 :
    matchingVariables coloring3069 44 = table3069 44 := by rfl

theorem table3069_entry045 :
    matchingVariables coloring3069 45 = table3069 45 := by rfl

theorem table3069_entry046 :
    matchingVariables coloring3069 46 = table3069 46 := by rfl

theorem table3069_entry047 :
    matchingVariables coloring3069 47 = table3069 47 := by rfl

theorem table3069_entry048 :
    matchingVariables coloring3069 48 = table3069 48 := by rfl

theorem table3069_entry049 :
    matchingVariables coloring3069 49 = table3069 49 := by rfl

theorem table3069_entry050 :
    matchingVariables coloring3069 50 = table3069 50 := by rfl

theorem table3069_entry051 :
    matchingVariables coloring3069 51 = table3069 51 := by rfl

theorem table3069_entry052 :
    matchingVariables coloring3069 52 = table3069 52 := by rfl

theorem table3069_entry053 :
    matchingVariables coloring3069 53 = table3069 53 := by rfl

theorem table3069_entry054 :
    matchingVariables coloring3069 54 = table3069 54 := by rfl

theorem table3069_entry055 :
    matchingVariables coloring3069 55 = table3069 55 := by rfl

theorem table3069_entry056 :
    matchingVariables coloring3069 56 = table3069 56 := by rfl

theorem table3069_entry057 :
    matchingVariables coloring3069 57 = table3069 57 := by rfl

theorem table3069_entry058 :
    matchingVariables coloring3069 58 = table3069 58 := by rfl

theorem table3069_entry059 :
    matchingVariables coloring3069 59 = table3069 59 := by rfl

theorem table3069_entry060 :
    matchingVariables coloring3069 60 = table3069 60 := by rfl

theorem table3069_entry061 :
    matchingVariables coloring3069 61 = table3069 61 := by rfl

theorem table3069_entry062 :
    matchingVariables coloring3069 62 = table3069 62 := by rfl

theorem table3069_entry063 :
    matchingVariables coloring3069 63 = table3069 63 := by rfl

theorem table3069_entry064 :
    matchingVariables coloring3069 64 = table3069 64 := by rfl

theorem table3069_entry065 :
    matchingVariables coloring3069 65 = table3069 65 := by rfl

theorem table3069_entry066 :
    matchingVariables coloring3069 66 = table3069 66 := by rfl

theorem table3069_entry067 :
    matchingVariables coloring3069 67 = table3069 67 := by rfl

theorem table3069_entry068 :
    matchingVariables coloring3069 68 = table3069 68 := by rfl

theorem table3069_entry069 :
    matchingVariables coloring3069 69 = table3069 69 := by rfl

theorem table3069_entry070 :
    matchingVariables coloring3069 70 = table3069 70 := by rfl

theorem table3069_entry071 :
    matchingVariables coloring3069 71 = table3069 71 := by rfl

theorem table3069_entry072 :
    matchingVariables coloring3069 72 = table3069 72 := by rfl

theorem table3069_entry073 :
    matchingVariables coloring3069 73 = table3069 73 := by rfl

theorem table3069_entry074 :
    matchingVariables coloring3069 74 = table3069 74 := by rfl

theorem table3069_entry075 :
    matchingVariables coloring3069 75 = table3069 75 := by rfl

theorem table3069_entry076 :
    matchingVariables coloring3069 76 = table3069 76 := by rfl

theorem table3069_entry077 :
    matchingVariables coloring3069 77 = table3069 77 := by rfl

theorem table3069_entry078 :
    matchingVariables coloring3069 78 = table3069 78 := by rfl

theorem table3069_entry079 :
    matchingVariables coloring3069 79 = table3069 79 := by rfl

theorem table3069_entry080 :
    matchingVariables coloring3069 80 = table3069 80 := by rfl

theorem table3069_entry081 :
    matchingVariables coloring3069 81 = table3069 81 := by rfl

theorem table3069_entry082 :
    matchingVariables coloring3069 82 = table3069 82 := by rfl

theorem table3069_entry083 :
    matchingVariables coloring3069 83 = table3069 83 := by rfl

theorem table3069_entry084 :
    matchingVariables coloring3069 84 = table3069 84 := by rfl

theorem table3069_entry085 :
    matchingVariables coloring3069 85 = table3069 85 := by rfl

theorem table3069_entry086 :
    matchingVariables coloring3069 86 = table3069 86 := by rfl

theorem table3069_entry087 :
    matchingVariables coloring3069 87 = table3069 87 := by rfl

theorem table3069_entry088 :
    matchingVariables coloring3069 88 = table3069 88 := by rfl

theorem table3069_entry089 :
    matchingVariables coloring3069 89 = table3069 89 := by rfl

theorem table3069_entry090 :
    matchingVariables coloring3069 90 = table3069 90 := by rfl

theorem table3069_entry091 :
    matchingVariables coloring3069 91 = table3069 91 := by rfl

theorem table3069_entry092 :
    matchingVariables coloring3069 92 = table3069 92 := by rfl

theorem table3069_entry093 :
    matchingVariables coloring3069 93 = table3069 93 := by rfl

theorem table3069_entry094 :
    matchingVariables coloring3069 94 = table3069 94 := by rfl

theorem table3069_entry095 :
    matchingVariables coloring3069 95 = table3069 95 := by rfl

theorem table3069_entry096 :
    matchingVariables coloring3069 96 = table3069 96 := by rfl

theorem table3069_entry097 :
    matchingVariables coloring3069 97 = table3069 97 := by rfl

theorem table3069_entry098 :
    matchingVariables coloring3069 98 = table3069 98 := by rfl

theorem table3069_entry099 :
    matchingVariables coloring3069 99 = table3069 99 := by rfl

theorem table3069_entry100 :
    matchingVariables coloring3069 100 = table3069 100 := by rfl

theorem table3069_entry101 :
    matchingVariables coloring3069 101 = table3069 101 := by rfl

theorem table3069_entry102 :
    matchingVariables coloring3069 102 = table3069 102 := by rfl

theorem table3069_entry103 :
    matchingVariables coloring3069 103 = table3069 103 := by rfl

theorem table3069_entry104 :
    matchingVariables coloring3069 104 = table3069 104 := by rfl

theorem table3069_complete : ∀ m, matchingVariables coloring3069 m = table3069 m := by
  intro m
  fin_cases m
  · exact table3069_entry000
  · exact table3069_entry001
  · exact table3069_entry002
  · exact table3069_entry003
  · exact table3069_entry004
  · exact table3069_entry005
  · exact table3069_entry006
  · exact table3069_entry007
  · exact table3069_entry008
  · exact table3069_entry009
  · exact table3069_entry010
  · exact table3069_entry011
  · exact table3069_entry012
  · exact table3069_entry013
  · exact table3069_entry014
  · exact table3069_entry015
  · exact table3069_entry016
  · exact table3069_entry017
  · exact table3069_entry018
  · exact table3069_entry019
  · exact table3069_entry020
  · exact table3069_entry021
  · exact table3069_entry022
  · exact table3069_entry023
  · exact table3069_entry024
  · exact table3069_entry025
  · exact table3069_entry026
  · exact table3069_entry027
  · exact table3069_entry028
  · exact table3069_entry029
  · exact table3069_entry030
  · exact table3069_entry031
  · exact table3069_entry032
  · exact table3069_entry033
  · exact table3069_entry034
  · exact table3069_entry035
  · exact table3069_entry036
  · exact table3069_entry037
  · exact table3069_entry038
  · exact table3069_entry039
  · exact table3069_entry040
  · exact table3069_entry041
  · exact table3069_entry042
  · exact table3069_entry043
  · exact table3069_entry044
  · exact table3069_entry045
  · exact table3069_entry046
  · exact table3069_entry047
  · exact table3069_entry048
  · exact table3069_entry049
  · exact table3069_entry050
  · exact table3069_entry051
  · exact table3069_entry052
  · exact table3069_entry053
  · exact table3069_entry054
  · exact table3069_entry055
  · exact table3069_entry056
  · exact table3069_entry057
  · exact table3069_entry058
  · exact table3069_entry059
  · exact table3069_entry060
  · exact table3069_entry061
  · exact table3069_entry062
  · exact table3069_entry063
  · exact table3069_entry064
  · exact table3069_entry065
  · exact table3069_entry066
  · exact table3069_entry067
  · exact table3069_entry068
  · exact table3069_entry069
  · exact table3069_entry070
  · exact table3069_entry071
  · exact table3069_entry072
  · exact table3069_entry073
  · exact table3069_entry074
  · exact table3069_entry075
  · exact table3069_entry076
  · exact table3069_entry077
  · exact table3069_entry078
  · exact table3069_entry079
  · exact table3069_entry080
  · exact table3069_entry081
  · exact table3069_entry082
  · exact table3069_entry083
  · exact table3069_entry084
  · exact table3069_entry085
  · exact table3069_entry086
  · exact table3069_entry087
  · exact table3069_entry088
  · exact table3069_entry089
  · exact table3069_entry090
  · exact table3069_entry091
  · exact table3069_entry092
  · exact table3069_entry093
  · exact table3069_entry094
  · exact table3069_entry095
  · exact table3069_entry096
  · exact table3069_entry097
  · exact table3069_entry098
  · exact table3069_entry099
  · exact table3069_entry100
  · exact table3069_entry101
  · exact table3069_entry102
  · exact table3069_entry103
  · exact table3069_entry104

#print axioms table3069_complete

def expanded3069 : Polynomial 143 := [(1, exponentOfVariables [0, 65, 101, 138]),
  (1, exponentOfVariables [0, 65, 111, 126]),
  (1, exponentOfVariables [0, 75, 89, 138]),
  (1, exponentOfVariables [11, 38, 89, 138]),
  (1, exponentOfVariables [11, 48, 89, 126]),
  (1, exponentOfVariables [20, 48, 75, 119])]

theorem table3069_expanded : tablePolynomial table3069 = expanded3069 := by
  rfl

theorem table3069_exponent00 :
    exponentOfVariables (n := 143) [0, 65, 101, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 65 then (1) else if i.val = 101 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3069_exponent01 :
    exponentOfVariables (n := 143) [0, 65, 111, 126] =
      (fun i => if i.val = 0 then (1) else if i.val = 65 then (1) else if i.val = 111 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3069_exponent02 :
    exponentOfVariables (n := 143) [0, 75, 89, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 75 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3069_exponent03 :
    exponentOfVariables (n := 143) [11, 38, 89, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 38 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3069_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 89, 126] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3069_exponent05 :
    exponentOfVariables (n := 143) [20, 48, 75, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3069_polynomial : expanded3069 = amplitude3069 := by
  simp only [expanded3069, amplitude3069, table3069_exponent00, table3069_exponent01, table3069_exponent02, table3069_exponent03, table3069_exponent04, table3069_exponent05]

theorem premiseCheck028 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3069)) p028 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
