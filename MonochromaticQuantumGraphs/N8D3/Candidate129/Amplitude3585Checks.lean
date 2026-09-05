import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3585 : Fin 8 → Fin 3 := ![0, 1, 2, 0, 2, 2, 1, 1]

def table3585 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 63, 106, 138] else
    if m.val = 6 then some [1, 77, 84, 138] else
    if m.val = 21 then some [11, 43, 84, 138] else
    if m.val = 24 then some [11, 51, 84, 132] else
    if m.val = 25 then some [11, 51, 93, 122] else
    if m.val = 40 then some [18, 51, 77, 122] else none

theorem table3585_entry000 :
    matchingVariables coloring3585 0 = table3585 0 := by rfl

theorem table3585_entry001 :
    matchingVariables coloring3585 1 = table3585 1 := by rfl

theorem table3585_entry002 :
    matchingVariables coloring3585 2 = table3585 2 := by rfl

theorem table3585_entry003 :
    matchingVariables coloring3585 3 = table3585 3 := by rfl

theorem table3585_entry004 :
    matchingVariables coloring3585 4 = table3585 4 := by rfl

theorem table3585_entry005 :
    matchingVariables coloring3585 5 = table3585 5 := by rfl

theorem table3585_entry006 :
    matchingVariables coloring3585 6 = table3585 6 := by rfl

theorem table3585_entry007 :
    matchingVariables coloring3585 7 = table3585 7 := by rfl

theorem table3585_entry008 :
    matchingVariables coloring3585 8 = table3585 8 := by rfl

theorem table3585_entry009 :
    matchingVariables coloring3585 9 = table3585 9 := by rfl

theorem table3585_entry010 :
    matchingVariables coloring3585 10 = table3585 10 := by rfl

theorem table3585_entry011 :
    matchingVariables coloring3585 11 = table3585 11 := by rfl

theorem table3585_entry012 :
    matchingVariables coloring3585 12 = table3585 12 := by rfl

theorem table3585_entry013 :
    matchingVariables coloring3585 13 = table3585 13 := by rfl

theorem table3585_entry014 :
    matchingVariables coloring3585 14 = table3585 14 := by rfl

theorem table3585_entry015 :
    matchingVariables coloring3585 15 = table3585 15 := by rfl

theorem table3585_entry016 :
    matchingVariables coloring3585 16 = table3585 16 := by rfl

theorem table3585_entry017 :
    matchingVariables coloring3585 17 = table3585 17 := by rfl

theorem table3585_entry018 :
    matchingVariables coloring3585 18 = table3585 18 := by rfl

theorem table3585_entry019 :
    matchingVariables coloring3585 19 = table3585 19 := by rfl

theorem table3585_entry020 :
    matchingVariables coloring3585 20 = table3585 20 := by rfl

theorem table3585_entry021 :
    matchingVariables coloring3585 21 = table3585 21 := by rfl

theorem table3585_entry022 :
    matchingVariables coloring3585 22 = table3585 22 := by rfl

theorem table3585_entry023 :
    matchingVariables coloring3585 23 = table3585 23 := by rfl

theorem table3585_entry024 :
    matchingVariables coloring3585 24 = table3585 24 := by rfl

theorem table3585_entry025 :
    matchingVariables coloring3585 25 = table3585 25 := by rfl

theorem table3585_entry026 :
    matchingVariables coloring3585 26 = table3585 26 := by rfl

theorem table3585_entry027 :
    matchingVariables coloring3585 27 = table3585 27 := by rfl

theorem table3585_entry028 :
    matchingVariables coloring3585 28 = table3585 28 := by rfl

theorem table3585_entry029 :
    matchingVariables coloring3585 29 = table3585 29 := by rfl

theorem table3585_entry030 :
    matchingVariables coloring3585 30 = table3585 30 := by rfl

theorem table3585_entry031 :
    matchingVariables coloring3585 31 = table3585 31 := by rfl

theorem table3585_entry032 :
    matchingVariables coloring3585 32 = table3585 32 := by rfl

theorem table3585_entry033 :
    matchingVariables coloring3585 33 = table3585 33 := by rfl

theorem table3585_entry034 :
    matchingVariables coloring3585 34 = table3585 34 := by rfl

theorem table3585_entry035 :
    matchingVariables coloring3585 35 = table3585 35 := by rfl

theorem table3585_entry036 :
    matchingVariables coloring3585 36 = table3585 36 := by rfl

theorem table3585_entry037 :
    matchingVariables coloring3585 37 = table3585 37 := by rfl

theorem table3585_entry038 :
    matchingVariables coloring3585 38 = table3585 38 := by rfl

theorem table3585_entry039 :
    matchingVariables coloring3585 39 = table3585 39 := by rfl

theorem table3585_entry040 :
    matchingVariables coloring3585 40 = table3585 40 := by rfl

theorem table3585_entry041 :
    matchingVariables coloring3585 41 = table3585 41 := by rfl

theorem table3585_entry042 :
    matchingVariables coloring3585 42 = table3585 42 := by rfl

theorem table3585_entry043 :
    matchingVariables coloring3585 43 = table3585 43 := by rfl

theorem table3585_entry044 :
    matchingVariables coloring3585 44 = table3585 44 := by rfl

theorem table3585_entry045 :
    matchingVariables coloring3585 45 = table3585 45 := by rfl

theorem table3585_entry046 :
    matchingVariables coloring3585 46 = table3585 46 := by rfl

theorem table3585_entry047 :
    matchingVariables coloring3585 47 = table3585 47 := by rfl

theorem table3585_entry048 :
    matchingVariables coloring3585 48 = table3585 48 := by rfl

theorem table3585_entry049 :
    matchingVariables coloring3585 49 = table3585 49 := by rfl

theorem table3585_entry050 :
    matchingVariables coloring3585 50 = table3585 50 := by rfl

theorem table3585_entry051 :
    matchingVariables coloring3585 51 = table3585 51 := by rfl

theorem table3585_entry052 :
    matchingVariables coloring3585 52 = table3585 52 := by rfl

theorem table3585_entry053 :
    matchingVariables coloring3585 53 = table3585 53 := by rfl

theorem table3585_entry054 :
    matchingVariables coloring3585 54 = table3585 54 := by rfl

theorem table3585_entry055 :
    matchingVariables coloring3585 55 = table3585 55 := by rfl

theorem table3585_entry056 :
    matchingVariables coloring3585 56 = table3585 56 := by rfl

theorem table3585_entry057 :
    matchingVariables coloring3585 57 = table3585 57 := by rfl

theorem table3585_entry058 :
    matchingVariables coloring3585 58 = table3585 58 := by rfl

theorem table3585_entry059 :
    matchingVariables coloring3585 59 = table3585 59 := by rfl

theorem table3585_entry060 :
    matchingVariables coloring3585 60 = table3585 60 := by rfl

theorem table3585_entry061 :
    matchingVariables coloring3585 61 = table3585 61 := by rfl

theorem table3585_entry062 :
    matchingVariables coloring3585 62 = table3585 62 := by rfl

theorem table3585_entry063 :
    matchingVariables coloring3585 63 = table3585 63 := by rfl

theorem table3585_entry064 :
    matchingVariables coloring3585 64 = table3585 64 := by rfl

theorem table3585_entry065 :
    matchingVariables coloring3585 65 = table3585 65 := by rfl

theorem table3585_entry066 :
    matchingVariables coloring3585 66 = table3585 66 := by rfl

theorem table3585_entry067 :
    matchingVariables coloring3585 67 = table3585 67 := by rfl

theorem table3585_entry068 :
    matchingVariables coloring3585 68 = table3585 68 := by rfl

theorem table3585_entry069 :
    matchingVariables coloring3585 69 = table3585 69 := by rfl

theorem table3585_entry070 :
    matchingVariables coloring3585 70 = table3585 70 := by rfl

theorem table3585_entry071 :
    matchingVariables coloring3585 71 = table3585 71 := by rfl

theorem table3585_entry072 :
    matchingVariables coloring3585 72 = table3585 72 := by rfl

theorem table3585_entry073 :
    matchingVariables coloring3585 73 = table3585 73 := by rfl

theorem table3585_entry074 :
    matchingVariables coloring3585 74 = table3585 74 := by rfl

theorem table3585_entry075 :
    matchingVariables coloring3585 75 = table3585 75 := by rfl

theorem table3585_entry076 :
    matchingVariables coloring3585 76 = table3585 76 := by rfl

theorem table3585_entry077 :
    matchingVariables coloring3585 77 = table3585 77 := by rfl

theorem table3585_entry078 :
    matchingVariables coloring3585 78 = table3585 78 := by rfl

theorem table3585_entry079 :
    matchingVariables coloring3585 79 = table3585 79 := by rfl

theorem table3585_entry080 :
    matchingVariables coloring3585 80 = table3585 80 := by rfl

theorem table3585_entry081 :
    matchingVariables coloring3585 81 = table3585 81 := by rfl

theorem table3585_entry082 :
    matchingVariables coloring3585 82 = table3585 82 := by rfl

theorem table3585_entry083 :
    matchingVariables coloring3585 83 = table3585 83 := by rfl

theorem table3585_entry084 :
    matchingVariables coloring3585 84 = table3585 84 := by rfl

theorem table3585_entry085 :
    matchingVariables coloring3585 85 = table3585 85 := by rfl

theorem table3585_entry086 :
    matchingVariables coloring3585 86 = table3585 86 := by rfl

theorem table3585_entry087 :
    matchingVariables coloring3585 87 = table3585 87 := by rfl

theorem table3585_entry088 :
    matchingVariables coloring3585 88 = table3585 88 := by rfl

theorem table3585_entry089 :
    matchingVariables coloring3585 89 = table3585 89 := by rfl

theorem table3585_entry090 :
    matchingVariables coloring3585 90 = table3585 90 := by rfl

theorem table3585_entry091 :
    matchingVariables coloring3585 91 = table3585 91 := by rfl

theorem table3585_entry092 :
    matchingVariables coloring3585 92 = table3585 92 := by rfl

theorem table3585_entry093 :
    matchingVariables coloring3585 93 = table3585 93 := by rfl

theorem table3585_entry094 :
    matchingVariables coloring3585 94 = table3585 94 := by rfl

theorem table3585_entry095 :
    matchingVariables coloring3585 95 = table3585 95 := by rfl

theorem table3585_entry096 :
    matchingVariables coloring3585 96 = table3585 96 := by rfl

theorem table3585_entry097 :
    matchingVariables coloring3585 97 = table3585 97 := by rfl

theorem table3585_entry098 :
    matchingVariables coloring3585 98 = table3585 98 := by rfl

theorem table3585_entry099 :
    matchingVariables coloring3585 99 = table3585 99 := by rfl

theorem table3585_entry100 :
    matchingVariables coloring3585 100 = table3585 100 := by rfl

theorem table3585_entry101 :
    matchingVariables coloring3585 101 = table3585 101 := by rfl

theorem table3585_entry102 :
    matchingVariables coloring3585 102 = table3585 102 := by rfl

theorem table3585_entry103 :
    matchingVariables coloring3585 103 = table3585 103 := by rfl

theorem table3585_entry104 :
    matchingVariables coloring3585 104 = table3585 104 := by rfl

theorem table3585_complete : ∀ m, matchingVariables coloring3585 m = table3585 m := by
  intro m
  fin_cases m
  · exact table3585_entry000
  · exact table3585_entry001
  · exact table3585_entry002
  · exact table3585_entry003
  · exact table3585_entry004
  · exact table3585_entry005
  · exact table3585_entry006
  · exact table3585_entry007
  · exact table3585_entry008
  · exact table3585_entry009
  · exact table3585_entry010
  · exact table3585_entry011
  · exact table3585_entry012
  · exact table3585_entry013
  · exact table3585_entry014
  · exact table3585_entry015
  · exact table3585_entry016
  · exact table3585_entry017
  · exact table3585_entry018
  · exact table3585_entry019
  · exact table3585_entry020
  · exact table3585_entry021
  · exact table3585_entry022
  · exact table3585_entry023
  · exact table3585_entry024
  · exact table3585_entry025
  · exact table3585_entry026
  · exact table3585_entry027
  · exact table3585_entry028
  · exact table3585_entry029
  · exact table3585_entry030
  · exact table3585_entry031
  · exact table3585_entry032
  · exact table3585_entry033
  · exact table3585_entry034
  · exact table3585_entry035
  · exact table3585_entry036
  · exact table3585_entry037
  · exact table3585_entry038
  · exact table3585_entry039
  · exact table3585_entry040
  · exact table3585_entry041
  · exact table3585_entry042
  · exact table3585_entry043
  · exact table3585_entry044
  · exact table3585_entry045
  · exact table3585_entry046
  · exact table3585_entry047
  · exact table3585_entry048
  · exact table3585_entry049
  · exact table3585_entry050
  · exact table3585_entry051
  · exact table3585_entry052
  · exact table3585_entry053
  · exact table3585_entry054
  · exact table3585_entry055
  · exact table3585_entry056
  · exact table3585_entry057
  · exact table3585_entry058
  · exact table3585_entry059
  · exact table3585_entry060
  · exact table3585_entry061
  · exact table3585_entry062
  · exact table3585_entry063
  · exact table3585_entry064
  · exact table3585_entry065
  · exact table3585_entry066
  · exact table3585_entry067
  · exact table3585_entry068
  · exact table3585_entry069
  · exact table3585_entry070
  · exact table3585_entry071
  · exact table3585_entry072
  · exact table3585_entry073
  · exact table3585_entry074
  · exact table3585_entry075
  · exact table3585_entry076
  · exact table3585_entry077
  · exact table3585_entry078
  · exact table3585_entry079
  · exact table3585_entry080
  · exact table3585_entry081
  · exact table3585_entry082
  · exact table3585_entry083
  · exact table3585_entry084
  · exact table3585_entry085
  · exact table3585_entry086
  · exact table3585_entry087
  · exact table3585_entry088
  · exact table3585_entry089
  · exact table3585_entry090
  · exact table3585_entry091
  · exact table3585_entry092
  · exact table3585_entry093
  · exact table3585_entry094
  · exact table3585_entry095
  · exact table3585_entry096
  · exact table3585_entry097
  · exact table3585_entry098
  · exact table3585_entry099
  · exact table3585_entry100
  · exact table3585_entry101
  · exact table3585_entry102
  · exact table3585_entry103
  · exact table3585_entry104

#print axioms table3585_complete

def expanded3585 : Polynomial 143 := [(1, exponentOfVariables [1, 63, 106, 138]),
  (1, exponentOfVariables [1, 77, 84, 138]),
  (1, exponentOfVariables [11, 43, 84, 138]),
  (1, exponentOfVariables [11, 51, 84, 132]),
  (1, exponentOfVariables [11, 51, 93, 122]),
  (1, exponentOfVariables [18, 51, 77, 122])]

theorem table3585_expanded : tablePolynomial table3585 = expanded3585 := by
  rfl

theorem table3585_exponent00 :
    exponentOfVariables (n := 143) [1, 63, 106, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 63 then (1) else if i.val = 106 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3585_exponent01 :
    exponentOfVariables (n := 143) [1, 77, 84, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 77 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3585_exponent02 :
    exponentOfVariables (n := 143) [11, 43, 84, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 43 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3585_exponent03 :
    exponentOfVariables (n := 143) [11, 51, 84, 132] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 84 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3585_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 93, 122] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 93 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3585_exponent05 :
    exponentOfVariables (n := 143) [18, 51, 77, 122] =
      (fun i => if i.val = 18 then (1) else if i.val = 51 then (1) else if i.val = 77 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3585_polynomial : expanded3585 = amplitude3585 := by
  simp only [expanded3585, amplitude3585, table3585_exponent00, table3585_exponent01, table3585_exponent02, table3585_exponent03, table3585_exponent04, table3585_exponent05]

theorem premiseCheck066 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3585)) p066 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
