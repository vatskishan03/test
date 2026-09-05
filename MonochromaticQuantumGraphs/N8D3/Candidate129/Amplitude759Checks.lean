import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring759 : Fin 8 → Fin 3 := ![0, 1, 0, 1, 0, 0, 1, 0]

def table759 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 58, 98, 137] else
    if m.val = 1 then some [1, 58, 108, 125] else
    if m.val = 6 then some [1, 69, 85, 137] else
    if m.val = 21 then some [9, 41, 85, 137] else
    if m.val = 24 then some [9, 51, 85, 125] else
    if m.val = 40 then some [19, 51, 69, 115] else
    if m.val = 51 then some [27, 41, 58, 137] else
    if m.val = 54 then some [27, 51, 58, 125] else none

theorem table759_entry000 :
    matchingVariables coloring759 0 = table759 0 := by rfl

theorem table759_entry001 :
    matchingVariables coloring759 1 = table759 1 := by rfl

theorem table759_entry002 :
    matchingVariables coloring759 2 = table759 2 := by rfl

theorem table759_entry003 :
    matchingVariables coloring759 3 = table759 3 := by rfl

theorem table759_entry004 :
    matchingVariables coloring759 4 = table759 4 := by rfl

theorem table759_entry005 :
    matchingVariables coloring759 5 = table759 5 := by rfl

theorem table759_entry006 :
    matchingVariables coloring759 6 = table759 6 := by rfl

theorem table759_entry007 :
    matchingVariables coloring759 7 = table759 7 := by rfl

theorem table759_entry008 :
    matchingVariables coloring759 8 = table759 8 := by rfl

theorem table759_entry009 :
    matchingVariables coloring759 9 = table759 9 := by rfl

theorem table759_entry010 :
    matchingVariables coloring759 10 = table759 10 := by rfl

theorem table759_entry011 :
    matchingVariables coloring759 11 = table759 11 := by rfl

theorem table759_entry012 :
    matchingVariables coloring759 12 = table759 12 := by rfl

theorem table759_entry013 :
    matchingVariables coloring759 13 = table759 13 := by rfl

theorem table759_entry014 :
    matchingVariables coloring759 14 = table759 14 := by rfl

theorem table759_entry015 :
    matchingVariables coloring759 15 = table759 15 := by rfl

theorem table759_entry016 :
    matchingVariables coloring759 16 = table759 16 := by rfl

theorem table759_entry017 :
    matchingVariables coloring759 17 = table759 17 := by rfl

theorem table759_entry018 :
    matchingVariables coloring759 18 = table759 18 := by rfl

theorem table759_entry019 :
    matchingVariables coloring759 19 = table759 19 := by rfl

theorem table759_entry020 :
    matchingVariables coloring759 20 = table759 20 := by rfl

theorem table759_entry021 :
    matchingVariables coloring759 21 = table759 21 := by rfl

theorem table759_entry022 :
    matchingVariables coloring759 22 = table759 22 := by rfl

theorem table759_entry023 :
    matchingVariables coloring759 23 = table759 23 := by rfl

theorem table759_entry024 :
    matchingVariables coloring759 24 = table759 24 := by rfl

theorem table759_entry025 :
    matchingVariables coloring759 25 = table759 25 := by rfl

theorem table759_entry026 :
    matchingVariables coloring759 26 = table759 26 := by rfl

theorem table759_entry027 :
    matchingVariables coloring759 27 = table759 27 := by rfl

theorem table759_entry028 :
    matchingVariables coloring759 28 = table759 28 := by rfl

theorem table759_entry029 :
    matchingVariables coloring759 29 = table759 29 := by rfl

theorem table759_entry030 :
    matchingVariables coloring759 30 = table759 30 := by rfl

theorem table759_entry031 :
    matchingVariables coloring759 31 = table759 31 := by rfl

theorem table759_entry032 :
    matchingVariables coloring759 32 = table759 32 := by rfl

theorem table759_entry033 :
    matchingVariables coloring759 33 = table759 33 := by rfl

theorem table759_entry034 :
    matchingVariables coloring759 34 = table759 34 := by rfl

theorem table759_entry035 :
    matchingVariables coloring759 35 = table759 35 := by rfl

theorem table759_entry036 :
    matchingVariables coloring759 36 = table759 36 := by rfl

theorem table759_entry037 :
    matchingVariables coloring759 37 = table759 37 := by rfl

theorem table759_entry038 :
    matchingVariables coloring759 38 = table759 38 := by rfl

theorem table759_entry039 :
    matchingVariables coloring759 39 = table759 39 := by rfl

theorem table759_entry040 :
    matchingVariables coloring759 40 = table759 40 := by rfl

theorem table759_entry041 :
    matchingVariables coloring759 41 = table759 41 := by rfl

theorem table759_entry042 :
    matchingVariables coloring759 42 = table759 42 := by rfl

theorem table759_entry043 :
    matchingVariables coloring759 43 = table759 43 := by rfl

theorem table759_entry044 :
    matchingVariables coloring759 44 = table759 44 := by rfl

theorem table759_entry045 :
    matchingVariables coloring759 45 = table759 45 := by rfl

theorem table759_entry046 :
    matchingVariables coloring759 46 = table759 46 := by rfl

theorem table759_entry047 :
    matchingVariables coloring759 47 = table759 47 := by rfl

theorem table759_entry048 :
    matchingVariables coloring759 48 = table759 48 := by rfl

theorem table759_entry049 :
    matchingVariables coloring759 49 = table759 49 := by rfl

theorem table759_entry050 :
    matchingVariables coloring759 50 = table759 50 := by rfl

theorem table759_entry051 :
    matchingVariables coloring759 51 = table759 51 := by rfl

theorem table759_entry052 :
    matchingVariables coloring759 52 = table759 52 := by rfl

theorem table759_entry053 :
    matchingVariables coloring759 53 = table759 53 := by rfl

theorem table759_entry054 :
    matchingVariables coloring759 54 = table759 54 := by rfl

theorem table759_entry055 :
    matchingVariables coloring759 55 = table759 55 := by rfl

theorem table759_entry056 :
    matchingVariables coloring759 56 = table759 56 := by rfl

theorem table759_entry057 :
    matchingVariables coloring759 57 = table759 57 := by rfl

theorem table759_entry058 :
    matchingVariables coloring759 58 = table759 58 := by rfl

theorem table759_entry059 :
    matchingVariables coloring759 59 = table759 59 := by rfl

theorem table759_entry060 :
    matchingVariables coloring759 60 = table759 60 := by rfl

theorem table759_entry061 :
    matchingVariables coloring759 61 = table759 61 := by rfl

theorem table759_entry062 :
    matchingVariables coloring759 62 = table759 62 := by rfl

theorem table759_entry063 :
    matchingVariables coloring759 63 = table759 63 := by rfl

theorem table759_entry064 :
    matchingVariables coloring759 64 = table759 64 := by rfl

theorem table759_entry065 :
    matchingVariables coloring759 65 = table759 65 := by rfl

theorem table759_entry066 :
    matchingVariables coloring759 66 = table759 66 := by rfl

theorem table759_entry067 :
    matchingVariables coloring759 67 = table759 67 := by rfl

theorem table759_entry068 :
    matchingVariables coloring759 68 = table759 68 := by rfl

theorem table759_entry069 :
    matchingVariables coloring759 69 = table759 69 := by rfl

theorem table759_entry070 :
    matchingVariables coloring759 70 = table759 70 := by rfl

theorem table759_entry071 :
    matchingVariables coloring759 71 = table759 71 := by rfl

theorem table759_entry072 :
    matchingVariables coloring759 72 = table759 72 := by rfl

theorem table759_entry073 :
    matchingVariables coloring759 73 = table759 73 := by rfl

theorem table759_entry074 :
    matchingVariables coloring759 74 = table759 74 := by rfl

theorem table759_entry075 :
    matchingVariables coloring759 75 = table759 75 := by rfl

theorem table759_entry076 :
    matchingVariables coloring759 76 = table759 76 := by rfl

theorem table759_entry077 :
    matchingVariables coloring759 77 = table759 77 := by rfl

theorem table759_entry078 :
    matchingVariables coloring759 78 = table759 78 := by rfl

theorem table759_entry079 :
    matchingVariables coloring759 79 = table759 79 := by rfl

theorem table759_entry080 :
    matchingVariables coloring759 80 = table759 80 := by rfl

theorem table759_entry081 :
    matchingVariables coloring759 81 = table759 81 := by rfl

theorem table759_entry082 :
    matchingVariables coloring759 82 = table759 82 := by rfl

theorem table759_entry083 :
    matchingVariables coloring759 83 = table759 83 := by rfl

theorem table759_entry084 :
    matchingVariables coloring759 84 = table759 84 := by rfl

theorem table759_entry085 :
    matchingVariables coloring759 85 = table759 85 := by rfl

theorem table759_entry086 :
    matchingVariables coloring759 86 = table759 86 := by rfl

theorem table759_entry087 :
    matchingVariables coloring759 87 = table759 87 := by rfl

theorem table759_entry088 :
    matchingVariables coloring759 88 = table759 88 := by rfl

theorem table759_entry089 :
    matchingVariables coloring759 89 = table759 89 := by rfl

theorem table759_entry090 :
    matchingVariables coloring759 90 = table759 90 := by rfl

theorem table759_entry091 :
    matchingVariables coloring759 91 = table759 91 := by rfl

theorem table759_entry092 :
    matchingVariables coloring759 92 = table759 92 := by rfl

theorem table759_entry093 :
    matchingVariables coloring759 93 = table759 93 := by rfl

theorem table759_entry094 :
    matchingVariables coloring759 94 = table759 94 := by rfl

theorem table759_entry095 :
    matchingVariables coloring759 95 = table759 95 := by rfl

theorem table759_entry096 :
    matchingVariables coloring759 96 = table759 96 := by rfl

theorem table759_entry097 :
    matchingVariables coloring759 97 = table759 97 := by rfl

theorem table759_entry098 :
    matchingVariables coloring759 98 = table759 98 := by rfl

theorem table759_entry099 :
    matchingVariables coloring759 99 = table759 99 := by rfl

theorem table759_entry100 :
    matchingVariables coloring759 100 = table759 100 := by rfl

theorem table759_entry101 :
    matchingVariables coloring759 101 = table759 101 := by rfl

theorem table759_entry102 :
    matchingVariables coloring759 102 = table759 102 := by rfl

theorem table759_entry103 :
    matchingVariables coloring759 103 = table759 103 := by rfl

theorem table759_entry104 :
    matchingVariables coloring759 104 = table759 104 := by rfl

theorem table759_complete : ∀ m, matchingVariables coloring759 m = table759 m := by
  intro m
  fin_cases m
  · exact table759_entry000
  · exact table759_entry001
  · exact table759_entry002
  · exact table759_entry003
  · exact table759_entry004
  · exact table759_entry005
  · exact table759_entry006
  · exact table759_entry007
  · exact table759_entry008
  · exact table759_entry009
  · exact table759_entry010
  · exact table759_entry011
  · exact table759_entry012
  · exact table759_entry013
  · exact table759_entry014
  · exact table759_entry015
  · exact table759_entry016
  · exact table759_entry017
  · exact table759_entry018
  · exact table759_entry019
  · exact table759_entry020
  · exact table759_entry021
  · exact table759_entry022
  · exact table759_entry023
  · exact table759_entry024
  · exact table759_entry025
  · exact table759_entry026
  · exact table759_entry027
  · exact table759_entry028
  · exact table759_entry029
  · exact table759_entry030
  · exact table759_entry031
  · exact table759_entry032
  · exact table759_entry033
  · exact table759_entry034
  · exact table759_entry035
  · exact table759_entry036
  · exact table759_entry037
  · exact table759_entry038
  · exact table759_entry039
  · exact table759_entry040
  · exact table759_entry041
  · exact table759_entry042
  · exact table759_entry043
  · exact table759_entry044
  · exact table759_entry045
  · exact table759_entry046
  · exact table759_entry047
  · exact table759_entry048
  · exact table759_entry049
  · exact table759_entry050
  · exact table759_entry051
  · exact table759_entry052
  · exact table759_entry053
  · exact table759_entry054
  · exact table759_entry055
  · exact table759_entry056
  · exact table759_entry057
  · exact table759_entry058
  · exact table759_entry059
  · exact table759_entry060
  · exact table759_entry061
  · exact table759_entry062
  · exact table759_entry063
  · exact table759_entry064
  · exact table759_entry065
  · exact table759_entry066
  · exact table759_entry067
  · exact table759_entry068
  · exact table759_entry069
  · exact table759_entry070
  · exact table759_entry071
  · exact table759_entry072
  · exact table759_entry073
  · exact table759_entry074
  · exact table759_entry075
  · exact table759_entry076
  · exact table759_entry077
  · exact table759_entry078
  · exact table759_entry079
  · exact table759_entry080
  · exact table759_entry081
  · exact table759_entry082
  · exact table759_entry083
  · exact table759_entry084
  · exact table759_entry085
  · exact table759_entry086
  · exact table759_entry087
  · exact table759_entry088
  · exact table759_entry089
  · exact table759_entry090
  · exact table759_entry091
  · exact table759_entry092
  · exact table759_entry093
  · exact table759_entry094
  · exact table759_entry095
  · exact table759_entry096
  · exact table759_entry097
  · exact table759_entry098
  · exact table759_entry099
  · exact table759_entry100
  · exact table759_entry101
  · exact table759_entry102
  · exact table759_entry103
  · exact table759_entry104

#print axioms table759_complete

def expanded759 : Polynomial 143 := [(1, exponentOfVariables [1, 58, 98, 137]),
  (1, exponentOfVariables [1, 58, 108, 125]),
  (1, exponentOfVariables [1, 69, 85, 137]),
  (1, exponentOfVariables [9, 41, 85, 137]),
  (1, exponentOfVariables [9, 51, 85, 125]),
  (1, exponentOfVariables [19, 51, 69, 115]),
  (1, exponentOfVariables [27, 41, 58, 137]),
  (1, exponentOfVariables [27, 51, 58, 125])]

theorem table759_expanded : tablePolynomial table759 = expanded759 := by
  rfl

theorem table759_exponent00 :
    exponentOfVariables (n := 143) [1, 58, 98, 137] =
      (fun i => if i.val = 1 then (1) else if i.val = 58 then (1) else if i.val = 98 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table759_exponent01 :
    exponentOfVariables (n := 143) [1, 58, 108, 125] =
      (fun i => if i.val = 1 then (1) else if i.val = 58 then (1) else if i.val = 108 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table759_exponent02 :
    exponentOfVariables (n := 143) [1, 69, 85, 137] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table759_exponent03 :
    exponentOfVariables (n := 143) [9, 41, 85, 137] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table759_exponent04 :
    exponentOfVariables (n := 143) [9, 51, 85, 125] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 85 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table759_exponent05 :
    exponentOfVariables (n := 143) [19, 51, 69, 115] =
      (fun i => if i.val = 19 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 115 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table759_exponent06 :
    exponentOfVariables (n := 143) [27, 41, 58, 137] =
      (fun i => if i.val = 27 then (1) else if i.val = 41 then (1) else if i.val = 58 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table759_exponent07 :
    exponentOfVariables (n := 143) [27, 51, 58, 125] =
      (fun i => if i.val = 27 then (1) else if i.val = 51 then (1) else if i.val = 58 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table759_polynomial : expanded759 = amplitude759 := by
  simp only [expanded759, amplitude759, table759_exponent00, table759_exponent01, table759_exponent02, table759_exponent03, table759_exponent04, table759_exponent05, table759_exponent06, table759_exponent07]

end MonochromaticQuantumGraphs.N8D3.Candidate129
