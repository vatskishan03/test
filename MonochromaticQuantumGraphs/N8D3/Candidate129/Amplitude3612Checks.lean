import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3612 : Fin 8 → Fin 3 := ![0, 1, 2, 1, 2, 2, 1, 1]

def table3612 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 64, 106, 138] else
    if m.val = 6 then some [1, 77, 87, 138] else
    if m.val = 21 then some [11, 43, 87, 138] else
    if m.val = 24 then some [11, 51, 87, 132] else
    if m.val = 26 then some [11, 51, 97, 106] else
    if m.val = 40 then some [19, 51, 77, 122] else none

theorem table3612_entry000 :
    matchingVariables coloring3612 0 = table3612 0 := by rfl

theorem table3612_entry001 :
    matchingVariables coloring3612 1 = table3612 1 := by rfl

theorem table3612_entry002 :
    matchingVariables coloring3612 2 = table3612 2 := by rfl

theorem table3612_entry003 :
    matchingVariables coloring3612 3 = table3612 3 := by rfl

theorem table3612_entry004 :
    matchingVariables coloring3612 4 = table3612 4 := by rfl

theorem table3612_entry005 :
    matchingVariables coloring3612 5 = table3612 5 := by rfl

theorem table3612_entry006 :
    matchingVariables coloring3612 6 = table3612 6 := by rfl

theorem table3612_entry007 :
    matchingVariables coloring3612 7 = table3612 7 := by rfl

theorem table3612_entry008 :
    matchingVariables coloring3612 8 = table3612 8 := by rfl

theorem table3612_entry009 :
    matchingVariables coloring3612 9 = table3612 9 := by rfl

theorem table3612_entry010 :
    matchingVariables coloring3612 10 = table3612 10 := by rfl

theorem table3612_entry011 :
    matchingVariables coloring3612 11 = table3612 11 := by rfl

theorem table3612_entry012 :
    matchingVariables coloring3612 12 = table3612 12 := by rfl

theorem table3612_entry013 :
    matchingVariables coloring3612 13 = table3612 13 := by rfl

theorem table3612_entry014 :
    matchingVariables coloring3612 14 = table3612 14 := by rfl

theorem table3612_entry015 :
    matchingVariables coloring3612 15 = table3612 15 := by rfl

theorem table3612_entry016 :
    matchingVariables coloring3612 16 = table3612 16 := by rfl

theorem table3612_entry017 :
    matchingVariables coloring3612 17 = table3612 17 := by rfl

theorem table3612_entry018 :
    matchingVariables coloring3612 18 = table3612 18 := by rfl

theorem table3612_entry019 :
    matchingVariables coloring3612 19 = table3612 19 := by rfl

theorem table3612_entry020 :
    matchingVariables coloring3612 20 = table3612 20 := by rfl

theorem table3612_entry021 :
    matchingVariables coloring3612 21 = table3612 21 := by rfl

theorem table3612_entry022 :
    matchingVariables coloring3612 22 = table3612 22 := by rfl

theorem table3612_entry023 :
    matchingVariables coloring3612 23 = table3612 23 := by rfl

theorem table3612_entry024 :
    matchingVariables coloring3612 24 = table3612 24 := by rfl

theorem table3612_entry025 :
    matchingVariables coloring3612 25 = table3612 25 := by rfl

theorem table3612_entry026 :
    matchingVariables coloring3612 26 = table3612 26 := by rfl

theorem table3612_entry027 :
    matchingVariables coloring3612 27 = table3612 27 := by rfl

theorem table3612_entry028 :
    matchingVariables coloring3612 28 = table3612 28 := by rfl

theorem table3612_entry029 :
    matchingVariables coloring3612 29 = table3612 29 := by rfl

theorem table3612_entry030 :
    matchingVariables coloring3612 30 = table3612 30 := by rfl

theorem table3612_entry031 :
    matchingVariables coloring3612 31 = table3612 31 := by rfl

theorem table3612_entry032 :
    matchingVariables coloring3612 32 = table3612 32 := by rfl

theorem table3612_entry033 :
    matchingVariables coloring3612 33 = table3612 33 := by rfl

theorem table3612_entry034 :
    matchingVariables coloring3612 34 = table3612 34 := by rfl

theorem table3612_entry035 :
    matchingVariables coloring3612 35 = table3612 35 := by rfl

theorem table3612_entry036 :
    matchingVariables coloring3612 36 = table3612 36 := by rfl

theorem table3612_entry037 :
    matchingVariables coloring3612 37 = table3612 37 := by rfl

theorem table3612_entry038 :
    matchingVariables coloring3612 38 = table3612 38 := by rfl

theorem table3612_entry039 :
    matchingVariables coloring3612 39 = table3612 39 := by rfl

theorem table3612_entry040 :
    matchingVariables coloring3612 40 = table3612 40 := by rfl

theorem table3612_entry041 :
    matchingVariables coloring3612 41 = table3612 41 := by rfl

theorem table3612_entry042 :
    matchingVariables coloring3612 42 = table3612 42 := by rfl

theorem table3612_entry043 :
    matchingVariables coloring3612 43 = table3612 43 := by rfl

theorem table3612_entry044 :
    matchingVariables coloring3612 44 = table3612 44 := by rfl

theorem table3612_entry045 :
    matchingVariables coloring3612 45 = table3612 45 := by rfl

theorem table3612_entry046 :
    matchingVariables coloring3612 46 = table3612 46 := by rfl

theorem table3612_entry047 :
    matchingVariables coloring3612 47 = table3612 47 := by rfl

theorem table3612_entry048 :
    matchingVariables coloring3612 48 = table3612 48 := by rfl

theorem table3612_entry049 :
    matchingVariables coloring3612 49 = table3612 49 := by rfl

theorem table3612_entry050 :
    matchingVariables coloring3612 50 = table3612 50 := by rfl

theorem table3612_entry051 :
    matchingVariables coloring3612 51 = table3612 51 := by rfl

theorem table3612_entry052 :
    matchingVariables coloring3612 52 = table3612 52 := by rfl

theorem table3612_entry053 :
    matchingVariables coloring3612 53 = table3612 53 := by rfl

theorem table3612_entry054 :
    matchingVariables coloring3612 54 = table3612 54 := by rfl

theorem table3612_entry055 :
    matchingVariables coloring3612 55 = table3612 55 := by rfl

theorem table3612_entry056 :
    matchingVariables coloring3612 56 = table3612 56 := by rfl

theorem table3612_entry057 :
    matchingVariables coloring3612 57 = table3612 57 := by rfl

theorem table3612_entry058 :
    matchingVariables coloring3612 58 = table3612 58 := by rfl

theorem table3612_entry059 :
    matchingVariables coloring3612 59 = table3612 59 := by rfl

theorem table3612_entry060 :
    matchingVariables coloring3612 60 = table3612 60 := by rfl

theorem table3612_entry061 :
    matchingVariables coloring3612 61 = table3612 61 := by rfl

theorem table3612_entry062 :
    matchingVariables coloring3612 62 = table3612 62 := by rfl

theorem table3612_entry063 :
    matchingVariables coloring3612 63 = table3612 63 := by rfl

theorem table3612_entry064 :
    matchingVariables coloring3612 64 = table3612 64 := by rfl

theorem table3612_entry065 :
    matchingVariables coloring3612 65 = table3612 65 := by rfl

theorem table3612_entry066 :
    matchingVariables coloring3612 66 = table3612 66 := by rfl

theorem table3612_entry067 :
    matchingVariables coloring3612 67 = table3612 67 := by rfl

theorem table3612_entry068 :
    matchingVariables coloring3612 68 = table3612 68 := by rfl

theorem table3612_entry069 :
    matchingVariables coloring3612 69 = table3612 69 := by rfl

theorem table3612_entry070 :
    matchingVariables coloring3612 70 = table3612 70 := by rfl

theorem table3612_entry071 :
    matchingVariables coloring3612 71 = table3612 71 := by rfl

theorem table3612_entry072 :
    matchingVariables coloring3612 72 = table3612 72 := by rfl

theorem table3612_entry073 :
    matchingVariables coloring3612 73 = table3612 73 := by rfl

theorem table3612_entry074 :
    matchingVariables coloring3612 74 = table3612 74 := by rfl

theorem table3612_entry075 :
    matchingVariables coloring3612 75 = table3612 75 := by rfl

theorem table3612_entry076 :
    matchingVariables coloring3612 76 = table3612 76 := by rfl

theorem table3612_entry077 :
    matchingVariables coloring3612 77 = table3612 77 := by rfl

theorem table3612_entry078 :
    matchingVariables coloring3612 78 = table3612 78 := by rfl

theorem table3612_entry079 :
    matchingVariables coloring3612 79 = table3612 79 := by rfl

theorem table3612_entry080 :
    matchingVariables coloring3612 80 = table3612 80 := by rfl

theorem table3612_entry081 :
    matchingVariables coloring3612 81 = table3612 81 := by rfl

theorem table3612_entry082 :
    matchingVariables coloring3612 82 = table3612 82 := by rfl

theorem table3612_entry083 :
    matchingVariables coloring3612 83 = table3612 83 := by rfl

theorem table3612_entry084 :
    matchingVariables coloring3612 84 = table3612 84 := by rfl

theorem table3612_entry085 :
    matchingVariables coloring3612 85 = table3612 85 := by rfl

theorem table3612_entry086 :
    matchingVariables coloring3612 86 = table3612 86 := by rfl

theorem table3612_entry087 :
    matchingVariables coloring3612 87 = table3612 87 := by rfl

theorem table3612_entry088 :
    matchingVariables coloring3612 88 = table3612 88 := by rfl

theorem table3612_entry089 :
    matchingVariables coloring3612 89 = table3612 89 := by rfl

theorem table3612_entry090 :
    matchingVariables coloring3612 90 = table3612 90 := by rfl

theorem table3612_entry091 :
    matchingVariables coloring3612 91 = table3612 91 := by rfl

theorem table3612_entry092 :
    matchingVariables coloring3612 92 = table3612 92 := by rfl

theorem table3612_entry093 :
    matchingVariables coloring3612 93 = table3612 93 := by rfl

theorem table3612_entry094 :
    matchingVariables coloring3612 94 = table3612 94 := by rfl

theorem table3612_entry095 :
    matchingVariables coloring3612 95 = table3612 95 := by rfl

theorem table3612_entry096 :
    matchingVariables coloring3612 96 = table3612 96 := by rfl

theorem table3612_entry097 :
    matchingVariables coloring3612 97 = table3612 97 := by rfl

theorem table3612_entry098 :
    matchingVariables coloring3612 98 = table3612 98 := by rfl

theorem table3612_entry099 :
    matchingVariables coloring3612 99 = table3612 99 := by rfl

theorem table3612_entry100 :
    matchingVariables coloring3612 100 = table3612 100 := by rfl

theorem table3612_entry101 :
    matchingVariables coloring3612 101 = table3612 101 := by rfl

theorem table3612_entry102 :
    matchingVariables coloring3612 102 = table3612 102 := by rfl

theorem table3612_entry103 :
    matchingVariables coloring3612 103 = table3612 103 := by rfl

theorem table3612_entry104 :
    matchingVariables coloring3612 104 = table3612 104 := by rfl

theorem table3612_complete : ∀ m, matchingVariables coloring3612 m = table3612 m := by
  intro m
  fin_cases m
  · exact table3612_entry000
  · exact table3612_entry001
  · exact table3612_entry002
  · exact table3612_entry003
  · exact table3612_entry004
  · exact table3612_entry005
  · exact table3612_entry006
  · exact table3612_entry007
  · exact table3612_entry008
  · exact table3612_entry009
  · exact table3612_entry010
  · exact table3612_entry011
  · exact table3612_entry012
  · exact table3612_entry013
  · exact table3612_entry014
  · exact table3612_entry015
  · exact table3612_entry016
  · exact table3612_entry017
  · exact table3612_entry018
  · exact table3612_entry019
  · exact table3612_entry020
  · exact table3612_entry021
  · exact table3612_entry022
  · exact table3612_entry023
  · exact table3612_entry024
  · exact table3612_entry025
  · exact table3612_entry026
  · exact table3612_entry027
  · exact table3612_entry028
  · exact table3612_entry029
  · exact table3612_entry030
  · exact table3612_entry031
  · exact table3612_entry032
  · exact table3612_entry033
  · exact table3612_entry034
  · exact table3612_entry035
  · exact table3612_entry036
  · exact table3612_entry037
  · exact table3612_entry038
  · exact table3612_entry039
  · exact table3612_entry040
  · exact table3612_entry041
  · exact table3612_entry042
  · exact table3612_entry043
  · exact table3612_entry044
  · exact table3612_entry045
  · exact table3612_entry046
  · exact table3612_entry047
  · exact table3612_entry048
  · exact table3612_entry049
  · exact table3612_entry050
  · exact table3612_entry051
  · exact table3612_entry052
  · exact table3612_entry053
  · exact table3612_entry054
  · exact table3612_entry055
  · exact table3612_entry056
  · exact table3612_entry057
  · exact table3612_entry058
  · exact table3612_entry059
  · exact table3612_entry060
  · exact table3612_entry061
  · exact table3612_entry062
  · exact table3612_entry063
  · exact table3612_entry064
  · exact table3612_entry065
  · exact table3612_entry066
  · exact table3612_entry067
  · exact table3612_entry068
  · exact table3612_entry069
  · exact table3612_entry070
  · exact table3612_entry071
  · exact table3612_entry072
  · exact table3612_entry073
  · exact table3612_entry074
  · exact table3612_entry075
  · exact table3612_entry076
  · exact table3612_entry077
  · exact table3612_entry078
  · exact table3612_entry079
  · exact table3612_entry080
  · exact table3612_entry081
  · exact table3612_entry082
  · exact table3612_entry083
  · exact table3612_entry084
  · exact table3612_entry085
  · exact table3612_entry086
  · exact table3612_entry087
  · exact table3612_entry088
  · exact table3612_entry089
  · exact table3612_entry090
  · exact table3612_entry091
  · exact table3612_entry092
  · exact table3612_entry093
  · exact table3612_entry094
  · exact table3612_entry095
  · exact table3612_entry096
  · exact table3612_entry097
  · exact table3612_entry098
  · exact table3612_entry099
  · exact table3612_entry100
  · exact table3612_entry101
  · exact table3612_entry102
  · exact table3612_entry103
  · exact table3612_entry104

#print axioms table3612_complete

def expanded3612 : Polynomial 143 := [(1, exponentOfVariables [1, 64, 106, 138]),
  (1, exponentOfVariables [1, 77, 87, 138]),
  (1, exponentOfVariables [11, 43, 87, 138]),
  (1, exponentOfVariables [11, 51, 87, 132]),
  (1, exponentOfVariables [11, 51, 97, 106]),
  (1, exponentOfVariables [19, 51, 77, 122])]

theorem table3612_expanded : tablePolynomial table3612 = expanded3612 := by
  rfl

theorem table3612_exponent00 :
    exponentOfVariables (n := 143) [1, 64, 106, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 64 then (1) else if i.val = 106 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3612_exponent01 :
    exponentOfVariables (n := 143) [1, 77, 87, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 77 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3612_exponent02 :
    exponentOfVariables (n := 143) [11, 43, 87, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 43 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3612_exponent03 :
    exponentOfVariables (n := 143) [11, 51, 87, 132] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 87 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3612_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 97, 106] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 97 then (1) else if i.val = 106 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3612_exponent05 :
    exponentOfVariables (n := 143) [19, 51, 77, 122] =
      (fun i => if i.val = 19 then (1) else if i.val = 51 then (1) else if i.val = 77 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3612_polynomial : expanded3612 = amplitude3612 := by
  simp only [expanded3612, amplitude3612, table3612_exponent00, table3612_exponent01, table3612_exponent02, table3612_exponent03, table3612_exponent04, table3612_exponent05]

theorem premiseCheck055 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3612)) p055 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
