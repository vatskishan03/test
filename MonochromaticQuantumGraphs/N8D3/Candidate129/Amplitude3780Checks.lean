import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring3780 : Fin 8 → Fin 3 := ![0, 0, 0, 2, 1, 0, 2, 1]

def table3780 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 59, 101, 141] else
    if m.val = 1 then some [0, 59, 112, 126] else
    if m.val = 6 then some [0, 69, 89, 141] else
    if m.val = 21 then some [9, 38, 89, 141] else
    if m.val = 24 then some [9, 49, 89, 126] else
    if m.val = 40 then some [20, 49, 69, 119] else none

theorem table3780_entry000 :
    matchingVariables coloring3780 0 = table3780 0 := by rfl

theorem table3780_entry001 :
    matchingVariables coloring3780 1 = table3780 1 := by rfl

theorem table3780_entry002 :
    matchingVariables coloring3780 2 = table3780 2 := by rfl

theorem table3780_entry003 :
    matchingVariables coloring3780 3 = table3780 3 := by rfl

theorem table3780_entry004 :
    matchingVariables coloring3780 4 = table3780 4 := by rfl

theorem table3780_entry005 :
    matchingVariables coloring3780 5 = table3780 5 := by rfl

theorem table3780_entry006 :
    matchingVariables coloring3780 6 = table3780 6 := by rfl

theorem table3780_entry007 :
    matchingVariables coloring3780 7 = table3780 7 := by rfl

theorem table3780_entry008 :
    matchingVariables coloring3780 8 = table3780 8 := by rfl

theorem table3780_entry009 :
    matchingVariables coloring3780 9 = table3780 9 := by rfl

theorem table3780_entry010 :
    matchingVariables coloring3780 10 = table3780 10 := by rfl

theorem table3780_entry011 :
    matchingVariables coloring3780 11 = table3780 11 := by rfl

theorem table3780_entry012 :
    matchingVariables coloring3780 12 = table3780 12 := by rfl

theorem table3780_entry013 :
    matchingVariables coloring3780 13 = table3780 13 := by rfl

theorem table3780_entry014 :
    matchingVariables coloring3780 14 = table3780 14 := by rfl

theorem table3780_entry015 :
    matchingVariables coloring3780 15 = table3780 15 := by rfl

theorem table3780_entry016 :
    matchingVariables coloring3780 16 = table3780 16 := by rfl

theorem table3780_entry017 :
    matchingVariables coloring3780 17 = table3780 17 := by rfl

theorem table3780_entry018 :
    matchingVariables coloring3780 18 = table3780 18 := by rfl

theorem table3780_entry019 :
    matchingVariables coloring3780 19 = table3780 19 := by rfl

theorem table3780_entry020 :
    matchingVariables coloring3780 20 = table3780 20 := by rfl

theorem table3780_entry021 :
    matchingVariables coloring3780 21 = table3780 21 := by rfl

theorem table3780_entry022 :
    matchingVariables coloring3780 22 = table3780 22 := by rfl

theorem table3780_entry023 :
    matchingVariables coloring3780 23 = table3780 23 := by rfl

theorem table3780_entry024 :
    matchingVariables coloring3780 24 = table3780 24 := by rfl

theorem table3780_entry025 :
    matchingVariables coloring3780 25 = table3780 25 := by rfl

theorem table3780_entry026 :
    matchingVariables coloring3780 26 = table3780 26 := by rfl

theorem table3780_entry027 :
    matchingVariables coloring3780 27 = table3780 27 := by rfl

theorem table3780_entry028 :
    matchingVariables coloring3780 28 = table3780 28 := by rfl

theorem table3780_entry029 :
    matchingVariables coloring3780 29 = table3780 29 := by rfl

theorem table3780_entry030 :
    matchingVariables coloring3780 30 = table3780 30 := by rfl

theorem table3780_entry031 :
    matchingVariables coloring3780 31 = table3780 31 := by rfl

theorem table3780_entry032 :
    matchingVariables coloring3780 32 = table3780 32 := by rfl

theorem table3780_entry033 :
    matchingVariables coloring3780 33 = table3780 33 := by rfl

theorem table3780_entry034 :
    matchingVariables coloring3780 34 = table3780 34 := by rfl

theorem table3780_entry035 :
    matchingVariables coloring3780 35 = table3780 35 := by rfl

theorem table3780_entry036 :
    matchingVariables coloring3780 36 = table3780 36 := by rfl

theorem table3780_entry037 :
    matchingVariables coloring3780 37 = table3780 37 := by rfl

theorem table3780_entry038 :
    matchingVariables coloring3780 38 = table3780 38 := by rfl

theorem table3780_entry039 :
    matchingVariables coloring3780 39 = table3780 39 := by rfl

theorem table3780_entry040 :
    matchingVariables coloring3780 40 = table3780 40 := by rfl

theorem table3780_entry041 :
    matchingVariables coloring3780 41 = table3780 41 := by rfl

theorem table3780_entry042 :
    matchingVariables coloring3780 42 = table3780 42 := by rfl

theorem table3780_entry043 :
    matchingVariables coloring3780 43 = table3780 43 := by rfl

theorem table3780_entry044 :
    matchingVariables coloring3780 44 = table3780 44 := by rfl

theorem table3780_entry045 :
    matchingVariables coloring3780 45 = table3780 45 := by rfl

theorem table3780_entry046 :
    matchingVariables coloring3780 46 = table3780 46 := by rfl

theorem table3780_entry047 :
    matchingVariables coloring3780 47 = table3780 47 := by rfl

theorem table3780_entry048 :
    matchingVariables coloring3780 48 = table3780 48 := by rfl

theorem table3780_entry049 :
    matchingVariables coloring3780 49 = table3780 49 := by rfl

theorem table3780_entry050 :
    matchingVariables coloring3780 50 = table3780 50 := by rfl

theorem table3780_entry051 :
    matchingVariables coloring3780 51 = table3780 51 := by rfl

theorem table3780_entry052 :
    matchingVariables coloring3780 52 = table3780 52 := by rfl

theorem table3780_entry053 :
    matchingVariables coloring3780 53 = table3780 53 := by rfl

theorem table3780_entry054 :
    matchingVariables coloring3780 54 = table3780 54 := by rfl

theorem table3780_entry055 :
    matchingVariables coloring3780 55 = table3780 55 := by rfl

theorem table3780_entry056 :
    matchingVariables coloring3780 56 = table3780 56 := by rfl

theorem table3780_entry057 :
    matchingVariables coloring3780 57 = table3780 57 := by rfl

theorem table3780_entry058 :
    matchingVariables coloring3780 58 = table3780 58 := by rfl

theorem table3780_entry059 :
    matchingVariables coloring3780 59 = table3780 59 := by rfl

theorem table3780_entry060 :
    matchingVariables coloring3780 60 = table3780 60 := by rfl

theorem table3780_entry061 :
    matchingVariables coloring3780 61 = table3780 61 := by rfl

theorem table3780_entry062 :
    matchingVariables coloring3780 62 = table3780 62 := by rfl

theorem table3780_entry063 :
    matchingVariables coloring3780 63 = table3780 63 := by rfl

theorem table3780_entry064 :
    matchingVariables coloring3780 64 = table3780 64 := by rfl

theorem table3780_entry065 :
    matchingVariables coloring3780 65 = table3780 65 := by rfl

theorem table3780_entry066 :
    matchingVariables coloring3780 66 = table3780 66 := by rfl

theorem table3780_entry067 :
    matchingVariables coloring3780 67 = table3780 67 := by rfl

theorem table3780_entry068 :
    matchingVariables coloring3780 68 = table3780 68 := by rfl

theorem table3780_entry069 :
    matchingVariables coloring3780 69 = table3780 69 := by rfl

theorem table3780_entry070 :
    matchingVariables coloring3780 70 = table3780 70 := by rfl

theorem table3780_entry071 :
    matchingVariables coloring3780 71 = table3780 71 := by rfl

theorem table3780_entry072 :
    matchingVariables coloring3780 72 = table3780 72 := by rfl

theorem table3780_entry073 :
    matchingVariables coloring3780 73 = table3780 73 := by rfl

theorem table3780_entry074 :
    matchingVariables coloring3780 74 = table3780 74 := by rfl

theorem table3780_entry075 :
    matchingVariables coloring3780 75 = table3780 75 := by rfl

theorem table3780_entry076 :
    matchingVariables coloring3780 76 = table3780 76 := by rfl

theorem table3780_entry077 :
    matchingVariables coloring3780 77 = table3780 77 := by rfl

theorem table3780_entry078 :
    matchingVariables coloring3780 78 = table3780 78 := by rfl

theorem table3780_entry079 :
    matchingVariables coloring3780 79 = table3780 79 := by rfl

theorem table3780_entry080 :
    matchingVariables coloring3780 80 = table3780 80 := by rfl

theorem table3780_entry081 :
    matchingVariables coloring3780 81 = table3780 81 := by rfl

theorem table3780_entry082 :
    matchingVariables coloring3780 82 = table3780 82 := by rfl

theorem table3780_entry083 :
    matchingVariables coloring3780 83 = table3780 83 := by rfl

theorem table3780_entry084 :
    matchingVariables coloring3780 84 = table3780 84 := by rfl

theorem table3780_entry085 :
    matchingVariables coloring3780 85 = table3780 85 := by rfl

theorem table3780_entry086 :
    matchingVariables coloring3780 86 = table3780 86 := by rfl

theorem table3780_entry087 :
    matchingVariables coloring3780 87 = table3780 87 := by rfl

theorem table3780_entry088 :
    matchingVariables coloring3780 88 = table3780 88 := by rfl

theorem table3780_entry089 :
    matchingVariables coloring3780 89 = table3780 89 := by rfl

theorem table3780_entry090 :
    matchingVariables coloring3780 90 = table3780 90 := by rfl

theorem table3780_entry091 :
    matchingVariables coloring3780 91 = table3780 91 := by rfl

theorem table3780_entry092 :
    matchingVariables coloring3780 92 = table3780 92 := by rfl

theorem table3780_entry093 :
    matchingVariables coloring3780 93 = table3780 93 := by rfl

theorem table3780_entry094 :
    matchingVariables coloring3780 94 = table3780 94 := by rfl

theorem table3780_entry095 :
    matchingVariables coloring3780 95 = table3780 95 := by rfl

theorem table3780_entry096 :
    matchingVariables coloring3780 96 = table3780 96 := by rfl

theorem table3780_entry097 :
    matchingVariables coloring3780 97 = table3780 97 := by rfl

theorem table3780_entry098 :
    matchingVariables coloring3780 98 = table3780 98 := by rfl

theorem table3780_entry099 :
    matchingVariables coloring3780 99 = table3780 99 := by rfl

theorem table3780_entry100 :
    matchingVariables coloring3780 100 = table3780 100 := by rfl

theorem table3780_entry101 :
    matchingVariables coloring3780 101 = table3780 101 := by rfl

theorem table3780_entry102 :
    matchingVariables coloring3780 102 = table3780 102 := by rfl

theorem table3780_entry103 :
    matchingVariables coloring3780 103 = table3780 103 := by rfl

theorem table3780_entry104 :
    matchingVariables coloring3780 104 = table3780 104 := by rfl

theorem table3780_complete : ∀ m, matchingVariables coloring3780 m = table3780 m := by
  intro m
  fin_cases m
  · exact table3780_entry000
  · exact table3780_entry001
  · exact table3780_entry002
  · exact table3780_entry003
  · exact table3780_entry004
  · exact table3780_entry005
  · exact table3780_entry006
  · exact table3780_entry007
  · exact table3780_entry008
  · exact table3780_entry009
  · exact table3780_entry010
  · exact table3780_entry011
  · exact table3780_entry012
  · exact table3780_entry013
  · exact table3780_entry014
  · exact table3780_entry015
  · exact table3780_entry016
  · exact table3780_entry017
  · exact table3780_entry018
  · exact table3780_entry019
  · exact table3780_entry020
  · exact table3780_entry021
  · exact table3780_entry022
  · exact table3780_entry023
  · exact table3780_entry024
  · exact table3780_entry025
  · exact table3780_entry026
  · exact table3780_entry027
  · exact table3780_entry028
  · exact table3780_entry029
  · exact table3780_entry030
  · exact table3780_entry031
  · exact table3780_entry032
  · exact table3780_entry033
  · exact table3780_entry034
  · exact table3780_entry035
  · exact table3780_entry036
  · exact table3780_entry037
  · exact table3780_entry038
  · exact table3780_entry039
  · exact table3780_entry040
  · exact table3780_entry041
  · exact table3780_entry042
  · exact table3780_entry043
  · exact table3780_entry044
  · exact table3780_entry045
  · exact table3780_entry046
  · exact table3780_entry047
  · exact table3780_entry048
  · exact table3780_entry049
  · exact table3780_entry050
  · exact table3780_entry051
  · exact table3780_entry052
  · exact table3780_entry053
  · exact table3780_entry054
  · exact table3780_entry055
  · exact table3780_entry056
  · exact table3780_entry057
  · exact table3780_entry058
  · exact table3780_entry059
  · exact table3780_entry060
  · exact table3780_entry061
  · exact table3780_entry062
  · exact table3780_entry063
  · exact table3780_entry064
  · exact table3780_entry065
  · exact table3780_entry066
  · exact table3780_entry067
  · exact table3780_entry068
  · exact table3780_entry069
  · exact table3780_entry070
  · exact table3780_entry071
  · exact table3780_entry072
  · exact table3780_entry073
  · exact table3780_entry074
  · exact table3780_entry075
  · exact table3780_entry076
  · exact table3780_entry077
  · exact table3780_entry078
  · exact table3780_entry079
  · exact table3780_entry080
  · exact table3780_entry081
  · exact table3780_entry082
  · exact table3780_entry083
  · exact table3780_entry084
  · exact table3780_entry085
  · exact table3780_entry086
  · exact table3780_entry087
  · exact table3780_entry088
  · exact table3780_entry089
  · exact table3780_entry090
  · exact table3780_entry091
  · exact table3780_entry092
  · exact table3780_entry093
  · exact table3780_entry094
  · exact table3780_entry095
  · exact table3780_entry096
  · exact table3780_entry097
  · exact table3780_entry098
  · exact table3780_entry099
  · exact table3780_entry100
  · exact table3780_entry101
  · exact table3780_entry102
  · exact table3780_entry103
  · exact table3780_entry104

#print axioms table3780_complete

def expanded3780 : Polynomial 143 := [(1, exponentOfVariables [0, 59, 101, 141]),
  (1, exponentOfVariables [0, 59, 112, 126]),
  (1, exponentOfVariables [0, 69, 89, 141]),
  (1, exponentOfVariables [9, 38, 89, 141]),
  (1, exponentOfVariables [9, 49, 89, 126]),
  (1, exponentOfVariables [20, 49, 69, 119])]

theorem table3780_expanded : tablePolynomial table3780 = expanded3780 := by
  rfl

theorem table3780_exponent00 :
    exponentOfVariables (n := 143) [0, 59, 101, 141] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 101 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3780_exponent01 :
    exponentOfVariables (n := 143) [0, 59, 112, 126] =
      (fun i => if i.val = 0 then (1) else if i.val = 59 then (1) else if i.val = 112 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3780_exponent02 :
    exponentOfVariables (n := 143) [0, 69, 89, 141] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 89 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3780_exponent03 :
    exponentOfVariables (n := 143) [9, 38, 89, 141] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 89 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3780_exponent04 :
    exponentOfVariables (n := 143) [9, 49, 89, 126] =
      (fun i => if i.val = 9 then (1) else if i.val = 49 then (1) else if i.val = 89 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3780_exponent05 :
    exponentOfVariables (n := 143) [20, 49, 69, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 49 then (1) else if i.val = 69 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3780_polynomial : expanded3780 = amplitude3780 := by
  simp only [expanded3780, amplitude3780, table3780_exponent00, table3780_exponent01, table3780_exponent02, table3780_exponent03, table3780_exponent04, table3780_exponent05]

theorem premiseCheck120 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3780)) p120 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
