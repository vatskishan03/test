import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3558 : Fin 8 → Fin 3 := ![0, 1, 2, 2, 1, 2, 1, 1]

def table3558 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 65, 103, 138] else
    if m.val = 1 then some [1, 65, 111, 132] else
    if m.val = 6 then some [1, 77, 89, 138] else
    if m.val = 21 then some [11, 43, 89, 138] else
    if m.val = 24 then some [11, 51, 89, 132] else
    if m.val = 40 then some [20, 51, 77, 119] else none

theorem table3558_entry000 :
    matchingVariables coloring3558 0 = table3558 0 := by rfl

theorem table3558_entry001 :
    matchingVariables coloring3558 1 = table3558 1 := by rfl

theorem table3558_entry002 :
    matchingVariables coloring3558 2 = table3558 2 := by rfl

theorem table3558_entry003 :
    matchingVariables coloring3558 3 = table3558 3 := by rfl

theorem table3558_entry004 :
    matchingVariables coloring3558 4 = table3558 4 := by rfl

theorem table3558_entry005 :
    matchingVariables coloring3558 5 = table3558 5 := by rfl

theorem table3558_entry006 :
    matchingVariables coloring3558 6 = table3558 6 := by rfl

theorem table3558_entry007 :
    matchingVariables coloring3558 7 = table3558 7 := by rfl

theorem table3558_entry008 :
    matchingVariables coloring3558 8 = table3558 8 := by rfl

theorem table3558_entry009 :
    matchingVariables coloring3558 9 = table3558 9 := by rfl

theorem table3558_entry010 :
    matchingVariables coloring3558 10 = table3558 10 := by rfl

theorem table3558_entry011 :
    matchingVariables coloring3558 11 = table3558 11 := by rfl

theorem table3558_entry012 :
    matchingVariables coloring3558 12 = table3558 12 := by rfl

theorem table3558_entry013 :
    matchingVariables coloring3558 13 = table3558 13 := by rfl

theorem table3558_entry014 :
    matchingVariables coloring3558 14 = table3558 14 := by rfl

theorem table3558_entry015 :
    matchingVariables coloring3558 15 = table3558 15 := by rfl

theorem table3558_entry016 :
    matchingVariables coloring3558 16 = table3558 16 := by rfl

theorem table3558_entry017 :
    matchingVariables coloring3558 17 = table3558 17 := by rfl

theorem table3558_entry018 :
    matchingVariables coloring3558 18 = table3558 18 := by rfl

theorem table3558_entry019 :
    matchingVariables coloring3558 19 = table3558 19 := by rfl

theorem table3558_entry020 :
    matchingVariables coloring3558 20 = table3558 20 := by rfl

theorem table3558_entry021 :
    matchingVariables coloring3558 21 = table3558 21 := by rfl

theorem table3558_entry022 :
    matchingVariables coloring3558 22 = table3558 22 := by rfl

theorem table3558_entry023 :
    matchingVariables coloring3558 23 = table3558 23 := by rfl

theorem table3558_entry024 :
    matchingVariables coloring3558 24 = table3558 24 := by rfl

theorem table3558_entry025 :
    matchingVariables coloring3558 25 = table3558 25 := by rfl

theorem table3558_entry026 :
    matchingVariables coloring3558 26 = table3558 26 := by rfl

theorem table3558_entry027 :
    matchingVariables coloring3558 27 = table3558 27 := by rfl

theorem table3558_entry028 :
    matchingVariables coloring3558 28 = table3558 28 := by rfl

theorem table3558_entry029 :
    matchingVariables coloring3558 29 = table3558 29 := by rfl

theorem table3558_entry030 :
    matchingVariables coloring3558 30 = table3558 30 := by rfl

theorem table3558_entry031 :
    matchingVariables coloring3558 31 = table3558 31 := by rfl

theorem table3558_entry032 :
    matchingVariables coloring3558 32 = table3558 32 := by rfl

theorem table3558_entry033 :
    matchingVariables coloring3558 33 = table3558 33 := by rfl

theorem table3558_entry034 :
    matchingVariables coloring3558 34 = table3558 34 := by rfl

theorem table3558_entry035 :
    matchingVariables coloring3558 35 = table3558 35 := by rfl

theorem table3558_entry036 :
    matchingVariables coloring3558 36 = table3558 36 := by rfl

theorem table3558_entry037 :
    matchingVariables coloring3558 37 = table3558 37 := by rfl

theorem table3558_entry038 :
    matchingVariables coloring3558 38 = table3558 38 := by rfl

theorem table3558_entry039 :
    matchingVariables coloring3558 39 = table3558 39 := by rfl

theorem table3558_entry040 :
    matchingVariables coloring3558 40 = table3558 40 := by rfl

theorem table3558_entry041 :
    matchingVariables coloring3558 41 = table3558 41 := by rfl

theorem table3558_entry042 :
    matchingVariables coloring3558 42 = table3558 42 := by rfl

theorem table3558_entry043 :
    matchingVariables coloring3558 43 = table3558 43 := by rfl

theorem table3558_entry044 :
    matchingVariables coloring3558 44 = table3558 44 := by rfl

theorem table3558_entry045 :
    matchingVariables coloring3558 45 = table3558 45 := by rfl

theorem table3558_entry046 :
    matchingVariables coloring3558 46 = table3558 46 := by rfl

theorem table3558_entry047 :
    matchingVariables coloring3558 47 = table3558 47 := by rfl

theorem table3558_entry048 :
    matchingVariables coloring3558 48 = table3558 48 := by rfl

theorem table3558_entry049 :
    matchingVariables coloring3558 49 = table3558 49 := by rfl

theorem table3558_entry050 :
    matchingVariables coloring3558 50 = table3558 50 := by rfl

theorem table3558_entry051 :
    matchingVariables coloring3558 51 = table3558 51 := by rfl

theorem table3558_entry052 :
    matchingVariables coloring3558 52 = table3558 52 := by rfl

theorem table3558_entry053 :
    matchingVariables coloring3558 53 = table3558 53 := by rfl

theorem table3558_entry054 :
    matchingVariables coloring3558 54 = table3558 54 := by rfl

theorem table3558_entry055 :
    matchingVariables coloring3558 55 = table3558 55 := by rfl

theorem table3558_entry056 :
    matchingVariables coloring3558 56 = table3558 56 := by rfl

theorem table3558_entry057 :
    matchingVariables coloring3558 57 = table3558 57 := by rfl

theorem table3558_entry058 :
    matchingVariables coloring3558 58 = table3558 58 := by rfl

theorem table3558_entry059 :
    matchingVariables coloring3558 59 = table3558 59 := by rfl

theorem table3558_entry060 :
    matchingVariables coloring3558 60 = table3558 60 := by rfl

theorem table3558_entry061 :
    matchingVariables coloring3558 61 = table3558 61 := by rfl

theorem table3558_entry062 :
    matchingVariables coloring3558 62 = table3558 62 := by rfl

theorem table3558_entry063 :
    matchingVariables coloring3558 63 = table3558 63 := by rfl

theorem table3558_entry064 :
    matchingVariables coloring3558 64 = table3558 64 := by rfl

theorem table3558_entry065 :
    matchingVariables coloring3558 65 = table3558 65 := by rfl

theorem table3558_entry066 :
    matchingVariables coloring3558 66 = table3558 66 := by rfl

theorem table3558_entry067 :
    matchingVariables coloring3558 67 = table3558 67 := by rfl

theorem table3558_entry068 :
    matchingVariables coloring3558 68 = table3558 68 := by rfl

theorem table3558_entry069 :
    matchingVariables coloring3558 69 = table3558 69 := by rfl

theorem table3558_entry070 :
    matchingVariables coloring3558 70 = table3558 70 := by rfl

theorem table3558_entry071 :
    matchingVariables coloring3558 71 = table3558 71 := by rfl

theorem table3558_entry072 :
    matchingVariables coloring3558 72 = table3558 72 := by rfl

theorem table3558_entry073 :
    matchingVariables coloring3558 73 = table3558 73 := by rfl

theorem table3558_entry074 :
    matchingVariables coloring3558 74 = table3558 74 := by rfl

theorem table3558_entry075 :
    matchingVariables coloring3558 75 = table3558 75 := by rfl

theorem table3558_entry076 :
    matchingVariables coloring3558 76 = table3558 76 := by rfl

theorem table3558_entry077 :
    matchingVariables coloring3558 77 = table3558 77 := by rfl

theorem table3558_entry078 :
    matchingVariables coloring3558 78 = table3558 78 := by rfl

theorem table3558_entry079 :
    matchingVariables coloring3558 79 = table3558 79 := by rfl

theorem table3558_entry080 :
    matchingVariables coloring3558 80 = table3558 80 := by rfl

theorem table3558_entry081 :
    matchingVariables coloring3558 81 = table3558 81 := by rfl

theorem table3558_entry082 :
    matchingVariables coloring3558 82 = table3558 82 := by rfl

theorem table3558_entry083 :
    matchingVariables coloring3558 83 = table3558 83 := by rfl

theorem table3558_entry084 :
    matchingVariables coloring3558 84 = table3558 84 := by rfl

theorem table3558_entry085 :
    matchingVariables coloring3558 85 = table3558 85 := by rfl

theorem table3558_entry086 :
    matchingVariables coloring3558 86 = table3558 86 := by rfl

theorem table3558_entry087 :
    matchingVariables coloring3558 87 = table3558 87 := by rfl

theorem table3558_entry088 :
    matchingVariables coloring3558 88 = table3558 88 := by rfl

theorem table3558_entry089 :
    matchingVariables coloring3558 89 = table3558 89 := by rfl

theorem table3558_entry090 :
    matchingVariables coloring3558 90 = table3558 90 := by rfl

theorem table3558_entry091 :
    matchingVariables coloring3558 91 = table3558 91 := by rfl

theorem table3558_entry092 :
    matchingVariables coloring3558 92 = table3558 92 := by rfl

theorem table3558_entry093 :
    matchingVariables coloring3558 93 = table3558 93 := by rfl

theorem table3558_entry094 :
    matchingVariables coloring3558 94 = table3558 94 := by rfl

theorem table3558_entry095 :
    matchingVariables coloring3558 95 = table3558 95 := by rfl

theorem table3558_entry096 :
    matchingVariables coloring3558 96 = table3558 96 := by rfl

theorem table3558_entry097 :
    matchingVariables coloring3558 97 = table3558 97 := by rfl

theorem table3558_entry098 :
    matchingVariables coloring3558 98 = table3558 98 := by rfl

theorem table3558_entry099 :
    matchingVariables coloring3558 99 = table3558 99 := by rfl

theorem table3558_entry100 :
    matchingVariables coloring3558 100 = table3558 100 := by rfl

theorem table3558_entry101 :
    matchingVariables coloring3558 101 = table3558 101 := by rfl

theorem table3558_entry102 :
    matchingVariables coloring3558 102 = table3558 102 := by rfl

theorem table3558_entry103 :
    matchingVariables coloring3558 103 = table3558 103 := by rfl

theorem table3558_entry104 :
    matchingVariables coloring3558 104 = table3558 104 := by rfl

theorem table3558_complete : ∀ m, matchingVariables coloring3558 m = table3558 m := by
  intro m
  fin_cases m
  · exact table3558_entry000
  · exact table3558_entry001
  · exact table3558_entry002
  · exact table3558_entry003
  · exact table3558_entry004
  · exact table3558_entry005
  · exact table3558_entry006
  · exact table3558_entry007
  · exact table3558_entry008
  · exact table3558_entry009
  · exact table3558_entry010
  · exact table3558_entry011
  · exact table3558_entry012
  · exact table3558_entry013
  · exact table3558_entry014
  · exact table3558_entry015
  · exact table3558_entry016
  · exact table3558_entry017
  · exact table3558_entry018
  · exact table3558_entry019
  · exact table3558_entry020
  · exact table3558_entry021
  · exact table3558_entry022
  · exact table3558_entry023
  · exact table3558_entry024
  · exact table3558_entry025
  · exact table3558_entry026
  · exact table3558_entry027
  · exact table3558_entry028
  · exact table3558_entry029
  · exact table3558_entry030
  · exact table3558_entry031
  · exact table3558_entry032
  · exact table3558_entry033
  · exact table3558_entry034
  · exact table3558_entry035
  · exact table3558_entry036
  · exact table3558_entry037
  · exact table3558_entry038
  · exact table3558_entry039
  · exact table3558_entry040
  · exact table3558_entry041
  · exact table3558_entry042
  · exact table3558_entry043
  · exact table3558_entry044
  · exact table3558_entry045
  · exact table3558_entry046
  · exact table3558_entry047
  · exact table3558_entry048
  · exact table3558_entry049
  · exact table3558_entry050
  · exact table3558_entry051
  · exact table3558_entry052
  · exact table3558_entry053
  · exact table3558_entry054
  · exact table3558_entry055
  · exact table3558_entry056
  · exact table3558_entry057
  · exact table3558_entry058
  · exact table3558_entry059
  · exact table3558_entry060
  · exact table3558_entry061
  · exact table3558_entry062
  · exact table3558_entry063
  · exact table3558_entry064
  · exact table3558_entry065
  · exact table3558_entry066
  · exact table3558_entry067
  · exact table3558_entry068
  · exact table3558_entry069
  · exact table3558_entry070
  · exact table3558_entry071
  · exact table3558_entry072
  · exact table3558_entry073
  · exact table3558_entry074
  · exact table3558_entry075
  · exact table3558_entry076
  · exact table3558_entry077
  · exact table3558_entry078
  · exact table3558_entry079
  · exact table3558_entry080
  · exact table3558_entry081
  · exact table3558_entry082
  · exact table3558_entry083
  · exact table3558_entry084
  · exact table3558_entry085
  · exact table3558_entry086
  · exact table3558_entry087
  · exact table3558_entry088
  · exact table3558_entry089
  · exact table3558_entry090
  · exact table3558_entry091
  · exact table3558_entry092
  · exact table3558_entry093
  · exact table3558_entry094
  · exact table3558_entry095
  · exact table3558_entry096
  · exact table3558_entry097
  · exact table3558_entry098
  · exact table3558_entry099
  · exact table3558_entry100
  · exact table3558_entry101
  · exact table3558_entry102
  · exact table3558_entry103
  · exact table3558_entry104

#print axioms table3558_complete

def expanded3558 : Polynomial 143 := [(1, exponentOfVariables [1, 65, 103, 138]),
  (1, exponentOfVariables [1, 65, 111, 132]),
  (1, exponentOfVariables [1, 77, 89, 138]),
  (1, exponentOfVariables [11, 43, 89, 138]),
  (1, exponentOfVariables [11, 51, 89, 132]),
  (1, exponentOfVariables [20, 51, 77, 119])]

theorem table3558_expanded : tablePolynomial table3558 = expanded3558 := by
  rfl

theorem table3558_exponent00 :
    exponentOfVariables (n := 143) [1, 65, 103, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 65 then (1) else if i.val = 103 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3558_exponent01 :
    exponentOfVariables (n := 143) [1, 65, 111, 132] =
      (fun i => if i.val = 1 then (1) else if i.val = 65 then (1) else if i.val = 111 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3558_exponent02 :
    exponentOfVariables (n := 143) [1, 77, 89, 138] =
      (fun i => if i.val = 1 then (1) else if i.val = 77 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3558_exponent03 :
    exponentOfVariables (n := 143) [11, 43, 89, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 43 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3558_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 89, 132] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 89 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3558_exponent05 :
    exponentOfVariables (n := 143) [20, 51, 77, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 77 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3558_polynomial : expanded3558 = amplitude3558 := by
  simp only [expanded3558, amplitude3558, table3558_exponent00, table3558_exponent01, table3558_exponent02, table3558_exponent03, table3558_exponent04, table3558_exponent05]

theorem premiseCheck046 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3558)) p046 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
