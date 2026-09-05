import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3783 : Fin 8 → Fin 3 := ![0, 1, 0, 2, 1, 0, 2, 1]

def table3783 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 59, 101, 141] else
    if m.val = 1 then some [1, 59, 112, 126] else
    if m.val = 6 then some [1, 69, 89, 141] else
    if m.val = 21 then some [9, 41, 89, 141] else
    if m.val = 24 then some [9, 52, 89, 126] else
    if m.val = 40 then some [20, 52, 69, 119] else none

theorem table3783_entry000 :
    matchingVariables coloring3783 0 = table3783 0 := by rfl

theorem table3783_entry001 :
    matchingVariables coloring3783 1 = table3783 1 := by rfl

theorem table3783_entry002 :
    matchingVariables coloring3783 2 = table3783 2 := by rfl

theorem table3783_entry003 :
    matchingVariables coloring3783 3 = table3783 3 := by rfl

theorem table3783_entry004 :
    matchingVariables coloring3783 4 = table3783 4 := by rfl

theorem table3783_entry005 :
    matchingVariables coloring3783 5 = table3783 5 := by rfl

theorem table3783_entry006 :
    matchingVariables coloring3783 6 = table3783 6 := by rfl

theorem table3783_entry007 :
    matchingVariables coloring3783 7 = table3783 7 := by rfl

theorem table3783_entry008 :
    matchingVariables coloring3783 8 = table3783 8 := by rfl

theorem table3783_entry009 :
    matchingVariables coloring3783 9 = table3783 9 := by rfl

theorem table3783_entry010 :
    matchingVariables coloring3783 10 = table3783 10 := by rfl

theorem table3783_entry011 :
    matchingVariables coloring3783 11 = table3783 11 := by rfl

theorem table3783_entry012 :
    matchingVariables coloring3783 12 = table3783 12 := by rfl

theorem table3783_entry013 :
    matchingVariables coloring3783 13 = table3783 13 := by rfl

theorem table3783_entry014 :
    matchingVariables coloring3783 14 = table3783 14 := by rfl

theorem table3783_entry015 :
    matchingVariables coloring3783 15 = table3783 15 := by rfl

theorem table3783_entry016 :
    matchingVariables coloring3783 16 = table3783 16 := by rfl

theorem table3783_entry017 :
    matchingVariables coloring3783 17 = table3783 17 := by rfl

theorem table3783_entry018 :
    matchingVariables coloring3783 18 = table3783 18 := by rfl

theorem table3783_entry019 :
    matchingVariables coloring3783 19 = table3783 19 := by rfl

theorem table3783_entry020 :
    matchingVariables coloring3783 20 = table3783 20 := by rfl

theorem table3783_entry021 :
    matchingVariables coloring3783 21 = table3783 21 := by rfl

theorem table3783_entry022 :
    matchingVariables coloring3783 22 = table3783 22 := by rfl

theorem table3783_entry023 :
    matchingVariables coloring3783 23 = table3783 23 := by rfl

theorem table3783_entry024 :
    matchingVariables coloring3783 24 = table3783 24 := by rfl

theorem table3783_entry025 :
    matchingVariables coloring3783 25 = table3783 25 := by rfl

theorem table3783_entry026 :
    matchingVariables coloring3783 26 = table3783 26 := by rfl

theorem table3783_entry027 :
    matchingVariables coloring3783 27 = table3783 27 := by rfl

theorem table3783_entry028 :
    matchingVariables coloring3783 28 = table3783 28 := by rfl

theorem table3783_entry029 :
    matchingVariables coloring3783 29 = table3783 29 := by rfl

theorem table3783_entry030 :
    matchingVariables coloring3783 30 = table3783 30 := by rfl

theorem table3783_entry031 :
    matchingVariables coloring3783 31 = table3783 31 := by rfl

theorem table3783_entry032 :
    matchingVariables coloring3783 32 = table3783 32 := by rfl

theorem table3783_entry033 :
    matchingVariables coloring3783 33 = table3783 33 := by rfl

theorem table3783_entry034 :
    matchingVariables coloring3783 34 = table3783 34 := by rfl

theorem table3783_entry035 :
    matchingVariables coloring3783 35 = table3783 35 := by rfl

theorem table3783_entry036 :
    matchingVariables coloring3783 36 = table3783 36 := by rfl

theorem table3783_entry037 :
    matchingVariables coloring3783 37 = table3783 37 := by rfl

theorem table3783_entry038 :
    matchingVariables coloring3783 38 = table3783 38 := by rfl

theorem table3783_entry039 :
    matchingVariables coloring3783 39 = table3783 39 := by rfl

theorem table3783_entry040 :
    matchingVariables coloring3783 40 = table3783 40 := by rfl

theorem table3783_entry041 :
    matchingVariables coloring3783 41 = table3783 41 := by rfl

theorem table3783_entry042 :
    matchingVariables coloring3783 42 = table3783 42 := by rfl

theorem table3783_entry043 :
    matchingVariables coloring3783 43 = table3783 43 := by rfl

theorem table3783_entry044 :
    matchingVariables coloring3783 44 = table3783 44 := by rfl

theorem table3783_entry045 :
    matchingVariables coloring3783 45 = table3783 45 := by rfl

theorem table3783_entry046 :
    matchingVariables coloring3783 46 = table3783 46 := by rfl

theorem table3783_entry047 :
    matchingVariables coloring3783 47 = table3783 47 := by rfl

theorem table3783_entry048 :
    matchingVariables coloring3783 48 = table3783 48 := by rfl

theorem table3783_entry049 :
    matchingVariables coloring3783 49 = table3783 49 := by rfl

theorem table3783_entry050 :
    matchingVariables coloring3783 50 = table3783 50 := by rfl

theorem table3783_entry051 :
    matchingVariables coloring3783 51 = table3783 51 := by rfl

theorem table3783_entry052 :
    matchingVariables coloring3783 52 = table3783 52 := by rfl

theorem table3783_entry053 :
    matchingVariables coloring3783 53 = table3783 53 := by rfl

theorem table3783_entry054 :
    matchingVariables coloring3783 54 = table3783 54 := by rfl

theorem table3783_entry055 :
    matchingVariables coloring3783 55 = table3783 55 := by rfl

theorem table3783_entry056 :
    matchingVariables coloring3783 56 = table3783 56 := by rfl

theorem table3783_entry057 :
    matchingVariables coloring3783 57 = table3783 57 := by rfl

theorem table3783_entry058 :
    matchingVariables coloring3783 58 = table3783 58 := by rfl

theorem table3783_entry059 :
    matchingVariables coloring3783 59 = table3783 59 := by rfl

theorem table3783_entry060 :
    matchingVariables coloring3783 60 = table3783 60 := by rfl

theorem table3783_entry061 :
    matchingVariables coloring3783 61 = table3783 61 := by rfl

theorem table3783_entry062 :
    matchingVariables coloring3783 62 = table3783 62 := by rfl

theorem table3783_entry063 :
    matchingVariables coloring3783 63 = table3783 63 := by rfl

theorem table3783_entry064 :
    matchingVariables coloring3783 64 = table3783 64 := by rfl

theorem table3783_entry065 :
    matchingVariables coloring3783 65 = table3783 65 := by rfl

theorem table3783_entry066 :
    matchingVariables coloring3783 66 = table3783 66 := by rfl

theorem table3783_entry067 :
    matchingVariables coloring3783 67 = table3783 67 := by rfl

theorem table3783_entry068 :
    matchingVariables coloring3783 68 = table3783 68 := by rfl

theorem table3783_entry069 :
    matchingVariables coloring3783 69 = table3783 69 := by rfl

theorem table3783_entry070 :
    matchingVariables coloring3783 70 = table3783 70 := by rfl

theorem table3783_entry071 :
    matchingVariables coloring3783 71 = table3783 71 := by rfl

theorem table3783_entry072 :
    matchingVariables coloring3783 72 = table3783 72 := by rfl

theorem table3783_entry073 :
    matchingVariables coloring3783 73 = table3783 73 := by rfl

theorem table3783_entry074 :
    matchingVariables coloring3783 74 = table3783 74 := by rfl

theorem table3783_entry075 :
    matchingVariables coloring3783 75 = table3783 75 := by rfl

theorem table3783_entry076 :
    matchingVariables coloring3783 76 = table3783 76 := by rfl

theorem table3783_entry077 :
    matchingVariables coloring3783 77 = table3783 77 := by rfl

theorem table3783_entry078 :
    matchingVariables coloring3783 78 = table3783 78 := by rfl

theorem table3783_entry079 :
    matchingVariables coloring3783 79 = table3783 79 := by rfl

theorem table3783_entry080 :
    matchingVariables coloring3783 80 = table3783 80 := by rfl

theorem table3783_entry081 :
    matchingVariables coloring3783 81 = table3783 81 := by rfl

theorem table3783_entry082 :
    matchingVariables coloring3783 82 = table3783 82 := by rfl

theorem table3783_entry083 :
    matchingVariables coloring3783 83 = table3783 83 := by rfl

theorem table3783_entry084 :
    matchingVariables coloring3783 84 = table3783 84 := by rfl

theorem table3783_entry085 :
    matchingVariables coloring3783 85 = table3783 85 := by rfl

theorem table3783_entry086 :
    matchingVariables coloring3783 86 = table3783 86 := by rfl

theorem table3783_entry087 :
    matchingVariables coloring3783 87 = table3783 87 := by rfl

theorem table3783_entry088 :
    matchingVariables coloring3783 88 = table3783 88 := by rfl

theorem table3783_entry089 :
    matchingVariables coloring3783 89 = table3783 89 := by rfl

theorem table3783_entry090 :
    matchingVariables coloring3783 90 = table3783 90 := by rfl

theorem table3783_entry091 :
    matchingVariables coloring3783 91 = table3783 91 := by rfl

theorem table3783_entry092 :
    matchingVariables coloring3783 92 = table3783 92 := by rfl

theorem table3783_entry093 :
    matchingVariables coloring3783 93 = table3783 93 := by rfl

theorem table3783_entry094 :
    matchingVariables coloring3783 94 = table3783 94 := by rfl

theorem table3783_entry095 :
    matchingVariables coloring3783 95 = table3783 95 := by rfl

theorem table3783_entry096 :
    matchingVariables coloring3783 96 = table3783 96 := by rfl

theorem table3783_entry097 :
    matchingVariables coloring3783 97 = table3783 97 := by rfl

theorem table3783_entry098 :
    matchingVariables coloring3783 98 = table3783 98 := by rfl

theorem table3783_entry099 :
    matchingVariables coloring3783 99 = table3783 99 := by rfl

theorem table3783_entry100 :
    matchingVariables coloring3783 100 = table3783 100 := by rfl

theorem table3783_entry101 :
    matchingVariables coloring3783 101 = table3783 101 := by rfl

theorem table3783_entry102 :
    matchingVariables coloring3783 102 = table3783 102 := by rfl

theorem table3783_entry103 :
    matchingVariables coloring3783 103 = table3783 103 := by rfl

theorem table3783_entry104 :
    matchingVariables coloring3783 104 = table3783 104 := by rfl

theorem table3783_complete : ∀ m, matchingVariables coloring3783 m = table3783 m := by
  intro m
  fin_cases m
  · exact table3783_entry000
  · exact table3783_entry001
  · exact table3783_entry002
  · exact table3783_entry003
  · exact table3783_entry004
  · exact table3783_entry005
  · exact table3783_entry006
  · exact table3783_entry007
  · exact table3783_entry008
  · exact table3783_entry009
  · exact table3783_entry010
  · exact table3783_entry011
  · exact table3783_entry012
  · exact table3783_entry013
  · exact table3783_entry014
  · exact table3783_entry015
  · exact table3783_entry016
  · exact table3783_entry017
  · exact table3783_entry018
  · exact table3783_entry019
  · exact table3783_entry020
  · exact table3783_entry021
  · exact table3783_entry022
  · exact table3783_entry023
  · exact table3783_entry024
  · exact table3783_entry025
  · exact table3783_entry026
  · exact table3783_entry027
  · exact table3783_entry028
  · exact table3783_entry029
  · exact table3783_entry030
  · exact table3783_entry031
  · exact table3783_entry032
  · exact table3783_entry033
  · exact table3783_entry034
  · exact table3783_entry035
  · exact table3783_entry036
  · exact table3783_entry037
  · exact table3783_entry038
  · exact table3783_entry039
  · exact table3783_entry040
  · exact table3783_entry041
  · exact table3783_entry042
  · exact table3783_entry043
  · exact table3783_entry044
  · exact table3783_entry045
  · exact table3783_entry046
  · exact table3783_entry047
  · exact table3783_entry048
  · exact table3783_entry049
  · exact table3783_entry050
  · exact table3783_entry051
  · exact table3783_entry052
  · exact table3783_entry053
  · exact table3783_entry054
  · exact table3783_entry055
  · exact table3783_entry056
  · exact table3783_entry057
  · exact table3783_entry058
  · exact table3783_entry059
  · exact table3783_entry060
  · exact table3783_entry061
  · exact table3783_entry062
  · exact table3783_entry063
  · exact table3783_entry064
  · exact table3783_entry065
  · exact table3783_entry066
  · exact table3783_entry067
  · exact table3783_entry068
  · exact table3783_entry069
  · exact table3783_entry070
  · exact table3783_entry071
  · exact table3783_entry072
  · exact table3783_entry073
  · exact table3783_entry074
  · exact table3783_entry075
  · exact table3783_entry076
  · exact table3783_entry077
  · exact table3783_entry078
  · exact table3783_entry079
  · exact table3783_entry080
  · exact table3783_entry081
  · exact table3783_entry082
  · exact table3783_entry083
  · exact table3783_entry084
  · exact table3783_entry085
  · exact table3783_entry086
  · exact table3783_entry087
  · exact table3783_entry088
  · exact table3783_entry089
  · exact table3783_entry090
  · exact table3783_entry091
  · exact table3783_entry092
  · exact table3783_entry093
  · exact table3783_entry094
  · exact table3783_entry095
  · exact table3783_entry096
  · exact table3783_entry097
  · exact table3783_entry098
  · exact table3783_entry099
  · exact table3783_entry100
  · exact table3783_entry101
  · exact table3783_entry102
  · exact table3783_entry103
  · exact table3783_entry104

#print axioms table3783_complete

def expanded3783 : Polynomial 143 := [(1, exponentOfVariables [1, 59, 101, 141]),
  (1, exponentOfVariables [1, 59, 112, 126]),
  (1, exponentOfVariables [1, 69, 89, 141]),
  (1, exponentOfVariables [9, 41, 89, 141]),
  (1, exponentOfVariables [9, 52, 89, 126]),
  (1, exponentOfVariables [20, 52, 69, 119])]

theorem table3783_expanded : tablePolynomial table3783 = expanded3783 := by
  rfl

theorem table3783_exponent00 :
    exponentOfVariables (n := 143) [1, 59, 101, 141] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 101 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3783_exponent01 :
    exponentOfVariables (n := 143) [1, 59, 112, 126] =
      (fun i => if i.val = 1 then (1) else if i.val = 59 then (1) else if i.val = 112 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3783_exponent02 :
    exponentOfVariables (n := 143) [1, 69, 89, 141] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 89 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3783_exponent03 :
    exponentOfVariables (n := 143) [9, 41, 89, 141] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 89 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3783_exponent04 :
    exponentOfVariables (n := 143) [9, 52, 89, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 52 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3783_exponent05 :
    exponentOfVariables (n := 143) [20, 52, 69, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 52 then (1) else if i.val = 69 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3783_polynomial : expanded3783 = amplitude3783 := by
  simp only [expanded3783, amplitude3783, table3783_exponent00, table3783_exponent01, table3783_exponent02, table3783_exponent03, table3783_exponent04, table3783_exponent05]

theorem premiseCheck131 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3783)) p131 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
