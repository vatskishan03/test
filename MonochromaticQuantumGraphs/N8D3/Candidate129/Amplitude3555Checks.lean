import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3555 : Fin 8 → Fin 3 := ![0, 0, 2, 2, 1, 2, 1, 1]

def table3555 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 65, 103, 138] else
    if m.val = 1 then some [0, 65, 111, 132] else
    if m.val = 6 then some [0, 77, 89, 138] else
    if m.val = 21 then some [11, 40, 89, 138] else
    if m.val = 24 then some [11, 48, 89, 132] else
    if m.val = 40 then some [20, 48, 77, 119] else none

theorem table3555_entry000 :
    matchingVariables coloring3555 0 = table3555 0 := by rfl

theorem table3555_entry001 :
    matchingVariables coloring3555 1 = table3555 1 := by rfl

theorem table3555_entry002 :
    matchingVariables coloring3555 2 = table3555 2 := by rfl

theorem table3555_entry003 :
    matchingVariables coloring3555 3 = table3555 3 := by rfl

theorem table3555_entry004 :
    matchingVariables coloring3555 4 = table3555 4 := by rfl

theorem table3555_entry005 :
    matchingVariables coloring3555 5 = table3555 5 := by rfl

theorem table3555_entry006 :
    matchingVariables coloring3555 6 = table3555 6 := by rfl

theorem table3555_entry007 :
    matchingVariables coloring3555 7 = table3555 7 := by rfl

theorem table3555_entry008 :
    matchingVariables coloring3555 8 = table3555 8 := by rfl

theorem table3555_entry009 :
    matchingVariables coloring3555 9 = table3555 9 := by rfl

theorem table3555_entry010 :
    matchingVariables coloring3555 10 = table3555 10 := by rfl

theorem table3555_entry011 :
    matchingVariables coloring3555 11 = table3555 11 := by rfl

theorem table3555_entry012 :
    matchingVariables coloring3555 12 = table3555 12 := by rfl

theorem table3555_entry013 :
    matchingVariables coloring3555 13 = table3555 13 := by rfl

theorem table3555_entry014 :
    matchingVariables coloring3555 14 = table3555 14 := by rfl

theorem table3555_entry015 :
    matchingVariables coloring3555 15 = table3555 15 := by rfl

theorem table3555_entry016 :
    matchingVariables coloring3555 16 = table3555 16 := by rfl

theorem table3555_entry017 :
    matchingVariables coloring3555 17 = table3555 17 := by rfl

theorem table3555_entry018 :
    matchingVariables coloring3555 18 = table3555 18 := by rfl

theorem table3555_entry019 :
    matchingVariables coloring3555 19 = table3555 19 := by rfl

theorem table3555_entry020 :
    matchingVariables coloring3555 20 = table3555 20 := by rfl

theorem table3555_entry021 :
    matchingVariables coloring3555 21 = table3555 21 := by rfl

theorem table3555_entry022 :
    matchingVariables coloring3555 22 = table3555 22 := by rfl

theorem table3555_entry023 :
    matchingVariables coloring3555 23 = table3555 23 := by rfl

theorem table3555_entry024 :
    matchingVariables coloring3555 24 = table3555 24 := by rfl

theorem table3555_entry025 :
    matchingVariables coloring3555 25 = table3555 25 := by rfl

theorem table3555_entry026 :
    matchingVariables coloring3555 26 = table3555 26 := by rfl

theorem table3555_entry027 :
    matchingVariables coloring3555 27 = table3555 27 := by rfl

theorem table3555_entry028 :
    matchingVariables coloring3555 28 = table3555 28 := by rfl

theorem table3555_entry029 :
    matchingVariables coloring3555 29 = table3555 29 := by rfl

theorem table3555_entry030 :
    matchingVariables coloring3555 30 = table3555 30 := by rfl

theorem table3555_entry031 :
    matchingVariables coloring3555 31 = table3555 31 := by rfl

theorem table3555_entry032 :
    matchingVariables coloring3555 32 = table3555 32 := by rfl

theorem table3555_entry033 :
    matchingVariables coloring3555 33 = table3555 33 := by rfl

theorem table3555_entry034 :
    matchingVariables coloring3555 34 = table3555 34 := by rfl

theorem table3555_entry035 :
    matchingVariables coloring3555 35 = table3555 35 := by rfl

theorem table3555_entry036 :
    matchingVariables coloring3555 36 = table3555 36 := by rfl

theorem table3555_entry037 :
    matchingVariables coloring3555 37 = table3555 37 := by rfl

theorem table3555_entry038 :
    matchingVariables coloring3555 38 = table3555 38 := by rfl

theorem table3555_entry039 :
    matchingVariables coloring3555 39 = table3555 39 := by rfl

theorem table3555_entry040 :
    matchingVariables coloring3555 40 = table3555 40 := by rfl

theorem table3555_entry041 :
    matchingVariables coloring3555 41 = table3555 41 := by rfl

theorem table3555_entry042 :
    matchingVariables coloring3555 42 = table3555 42 := by rfl

theorem table3555_entry043 :
    matchingVariables coloring3555 43 = table3555 43 := by rfl

theorem table3555_entry044 :
    matchingVariables coloring3555 44 = table3555 44 := by rfl

theorem table3555_entry045 :
    matchingVariables coloring3555 45 = table3555 45 := by rfl

theorem table3555_entry046 :
    matchingVariables coloring3555 46 = table3555 46 := by rfl

theorem table3555_entry047 :
    matchingVariables coloring3555 47 = table3555 47 := by rfl

theorem table3555_entry048 :
    matchingVariables coloring3555 48 = table3555 48 := by rfl

theorem table3555_entry049 :
    matchingVariables coloring3555 49 = table3555 49 := by rfl

theorem table3555_entry050 :
    matchingVariables coloring3555 50 = table3555 50 := by rfl

theorem table3555_entry051 :
    matchingVariables coloring3555 51 = table3555 51 := by rfl

theorem table3555_entry052 :
    matchingVariables coloring3555 52 = table3555 52 := by rfl

theorem table3555_entry053 :
    matchingVariables coloring3555 53 = table3555 53 := by rfl

theorem table3555_entry054 :
    matchingVariables coloring3555 54 = table3555 54 := by rfl

theorem table3555_entry055 :
    matchingVariables coloring3555 55 = table3555 55 := by rfl

theorem table3555_entry056 :
    matchingVariables coloring3555 56 = table3555 56 := by rfl

theorem table3555_entry057 :
    matchingVariables coloring3555 57 = table3555 57 := by rfl

theorem table3555_entry058 :
    matchingVariables coloring3555 58 = table3555 58 := by rfl

theorem table3555_entry059 :
    matchingVariables coloring3555 59 = table3555 59 := by rfl

theorem table3555_entry060 :
    matchingVariables coloring3555 60 = table3555 60 := by rfl

theorem table3555_entry061 :
    matchingVariables coloring3555 61 = table3555 61 := by rfl

theorem table3555_entry062 :
    matchingVariables coloring3555 62 = table3555 62 := by rfl

theorem table3555_entry063 :
    matchingVariables coloring3555 63 = table3555 63 := by rfl

theorem table3555_entry064 :
    matchingVariables coloring3555 64 = table3555 64 := by rfl

theorem table3555_entry065 :
    matchingVariables coloring3555 65 = table3555 65 := by rfl

theorem table3555_entry066 :
    matchingVariables coloring3555 66 = table3555 66 := by rfl

theorem table3555_entry067 :
    matchingVariables coloring3555 67 = table3555 67 := by rfl

theorem table3555_entry068 :
    matchingVariables coloring3555 68 = table3555 68 := by rfl

theorem table3555_entry069 :
    matchingVariables coloring3555 69 = table3555 69 := by rfl

theorem table3555_entry070 :
    matchingVariables coloring3555 70 = table3555 70 := by rfl

theorem table3555_entry071 :
    matchingVariables coloring3555 71 = table3555 71 := by rfl

theorem table3555_entry072 :
    matchingVariables coloring3555 72 = table3555 72 := by rfl

theorem table3555_entry073 :
    matchingVariables coloring3555 73 = table3555 73 := by rfl

theorem table3555_entry074 :
    matchingVariables coloring3555 74 = table3555 74 := by rfl

theorem table3555_entry075 :
    matchingVariables coloring3555 75 = table3555 75 := by rfl

theorem table3555_entry076 :
    matchingVariables coloring3555 76 = table3555 76 := by rfl

theorem table3555_entry077 :
    matchingVariables coloring3555 77 = table3555 77 := by rfl

theorem table3555_entry078 :
    matchingVariables coloring3555 78 = table3555 78 := by rfl

theorem table3555_entry079 :
    matchingVariables coloring3555 79 = table3555 79 := by rfl

theorem table3555_entry080 :
    matchingVariables coloring3555 80 = table3555 80 := by rfl

theorem table3555_entry081 :
    matchingVariables coloring3555 81 = table3555 81 := by rfl

theorem table3555_entry082 :
    matchingVariables coloring3555 82 = table3555 82 := by rfl

theorem table3555_entry083 :
    matchingVariables coloring3555 83 = table3555 83 := by rfl

theorem table3555_entry084 :
    matchingVariables coloring3555 84 = table3555 84 := by rfl

theorem table3555_entry085 :
    matchingVariables coloring3555 85 = table3555 85 := by rfl

theorem table3555_entry086 :
    matchingVariables coloring3555 86 = table3555 86 := by rfl

theorem table3555_entry087 :
    matchingVariables coloring3555 87 = table3555 87 := by rfl

theorem table3555_entry088 :
    matchingVariables coloring3555 88 = table3555 88 := by rfl

theorem table3555_entry089 :
    matchingVariables coloring3555 89 = table3555 89 := by rfl

theorem table3555_entry090 :
    matchingVariables coloring3555 90 = table3555 90 := by rfl

theorem table3555_entry091 :
    matchingVariables coloring3555 91 = table3555 91 := by rfl

theorem table3555_entry092 :
    matchingVariables coloring3555 92 = table3555 92 := by rfl

theorem table3555_entry093 :
    matchingVariables coloring3555 93 = table3555 93 := by rfl

theorem table3555_entry094 :
    matchingVariables coloring3555 94 = table3555 94 := by rfl

theorem table3555_entry095 :
    matchingVariables coloring3555 95 = table3555 95 := by rfl

theorem table3555_entry096 :
    matchingVariables coloring3555 96 = table3555 96 := by rfl

theorem table3555_entry097 :
    matchingVariables coloring3555 97 = table3555 97 := by rfl

theorem table3555_entry098 :
    matchingVariables coloring3555 98 = table3555 98 := by rfl

theorem table3555_entry099 :
    matchingVariables coloring3555 99 = table3555 99 := by rfl

theorem table3555_entry100 :
    matchingVariables coloring3555 100 = table3555 100 := by rfl

theorem table3555_entry101 :
    matchingVariables coloring3555 101 = table3555 101 := by rfl

theorem table3555_entry102 :
    matchingVariables coloring3555 102 = table3555 102 := by rfl

theorem table3555_entry103 :
    matchingVariables coloring3555 103 = table3555 103 := by rfl

theorem table3555_entry104 :
    matchingVariables coloring3555 104 = table3555 104 := by rfl

theorem table3555_complete : ∀ m, matchingVariables coloring3555 m = table3555 m := by
  intro m
  fin_cases m
  · exact table3555_entry000
  · exact table3555_entry001
  · exact table3555_entry002
  · exact table3555_entry003
  · exact table3555_entry004
  · exact table3555_entry005
  · exact table3555_entry006
  · exact table3555_entry007
  · exact table3555_entry008
  · exact table3555_entry009
  · exact table3555_entry010
  · exact table3555_entry011
  · exact table3555_entry012
  · exact table3555_entry013
  · exact table3555_entry014
  · exact table3555_entry015
  · exact table3555_entry016
  · exact table3555_entry017
  · exact table3555_entry018
  · exact table3555_entry019
  · exact table3555_entry020
  · exact table3555_entry021
  · exact table3555_entry022
  · exact table3555_entry023
  · exact table3555_entry024
  · exact table3555_entry025
  · exact table3555_entry026
  · exact table3555_entry027
  · exact table3555_entry028
  · exact table3555_entry029
  · exact table3555_entry030
  · exact table3555_entry031
  · exact table3555_entry032
  · exact table3555_entry033
  · exact table3555_entry034
  · exact table3555_entry035
  · exact table3555_entry036
  · exact table3555_entry037
  · exact table3555_entry038
  · exact table3555_entry039
  · exact table3555_entry040
  · exact table3555_entry041
  · exact table3555_entry042
  · exact table3555_entry043
  · exact table3555_entry044
  · exact table3555_entry045
  · exact table3555_entry046
  · exact table3555_entry047
  · exact table3555_entry048
  · exact table3555_entry049
  · exact table3555_entry050
  · exact table3555_entry051
  · exact table3555_entry052
  · exact table3555_entry053
  · exact table3555_entry054
  · exact table3555_entry055
  · exact table3555_entry056
  · exact table3555_entry057
  · exact table3555_entry058
  · exact table3555_entry059
  · exact table3555_entry060
  · exact table3555_entry061
  · exact table3555_entry062
  · exact table3555_entry063
  · exact table3555_entry064
  · exact table3555_entry065
  · exact table3555_entry066
  · exact table3555_entry067
  · exact table3555_entry068
  · exact table3555_entry069
  · exact table3555_entry070
  · exact table3555_entry071
  · exact table3555_entry072
  · exact table3555_entry073
  · exact table3555_entry074
  · exact table3555_entry075
  · exact table3555_entry076
  · exact table3555_entry077
  · exact table3555_entry078
  · exact table3555_entry079
  · exact table3555_entry080
  · exact table3555_entry081
  · exact table3555_entry082
  · exact table3555_entry083
  · exact table3555_entry084
  · exact table3555_entry085
  · exact table3555_entry086
  · exact table3555_entry087
  · exact table3555_entry088
  · exact table3555_entry089
  · exact table3555_entry090
  · exact table3555_entry091
  · exact table3555_entry092
  · exact table3555_entry093
  · exact table3555_entry094
  · exact table3555_entry095
  · exact table3555_entry096
  · exact table3555_entry097
  · exact table3555_entry098
  · exact table3555_entry099
  · exact table3555_entry100
  · exact table3555_entry101
  · exact table3555_entry102
  · exact table3555_entry103
  · exact table3555_entry104

#print axioms table3555_complete

def expanded3555 : Polynomial 143 := [(1, exponentOfVariables [0, 65, 103, 138]),
  (1, exponentOfVariables [0, 65, 111, 132]),
  (1, exponentOfVariables [0, 77, 89, 138]),
  (1, exponentOfVariables [11, 40, 89, 138]),
  (1, exponentOfVariables [11, 48, 89, 132]),
  (1, exponentOfVariables [20, 48, 77, 119])]

theorem table3555_expanded : tablePolynomial table3555 = expanded3555 := by
  rfl

theorem table3555_exponent00 :
    exponentOfVariables (n := 143) [0, 65, 103, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 65 then (1) else if i.val = 103 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3555_exponent01 :
    exponentOfVariables (n := 143) [0, 65, 111, 132] =
      (fun i => if i.val = 0 then (1) else if i.val = 65 then (1) else if i.val = 111 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3555_exponent02 :
    exponentOfVariables (n := 143) [0, 77, 89, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 77 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3555_exponent03 :
    exponentOfVariables (n := 143) [11, 40, 89, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 40 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3555_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 89, 132] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 89 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3555_exponent05 :
    exponentOfVariables (n := 143) [20, 48, 77, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 77 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3555_polynomial : expanded3555 = amplitude3555 := by
  simp only [expanded3555, amplitude3555, table3555_exponent00, table3555_exponent01, table3555_exponent02, table3555_exponent03, table3555_exponent04, table3555_exponent05]

theorem premiseCheck045 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3555)) p045 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
