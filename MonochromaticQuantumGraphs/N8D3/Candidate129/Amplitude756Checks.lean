import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportCombinatorics
import Mathlib.Tactic.FinCases
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring756 : Fin 8 → Fin 3 := ![0, 0, 0, 1, 0, 0, 1, 0]

def table756 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 58, 98, 137] else
    if m.val = 1 then some [0, 58, 108, 125] else
    if m.val = 6 then some [0, 69, 85, 137] else
    if m.val = 21 then some [9, 38, 85, 137] else
    if m.val = 24 then some [9, 48, 85, 125] else
    if m.val = 40 then some [19, 48, 69, 115] else
    if m.val = 43 then some [19, 56, 69, 108] else
    if m.val = 51 then some [27, 38, 58, 137] else
    if m.val = 54 then some [27, 48, 58, 125] else none

theorem table756_entry000 :
    matchingVariables coloring756 0 = table756 0 := by rfl

theorem table756_entry001 :
    matchingVariables coloring756 1 = table756 1 := by rfl

theorem table756_entry002 :
    matchingVariables coloring756 2 = table756 2 := by rfl

theorem table756_entry003 :
    matchingVariables coloring756 3 = table756 3 := by rfl

theorem table756_entry004 :
    matchingVariables coloring756 4 = table756 4 := by rfl

theorem table756_entry005 :
    matchingVariables coloring756 5 = table756 5 := by rfl

theorem table756_entry006 :
    matchingVariables coloring756 6 = table756 6 := by rfl

theorem table756_entry007 :
    matchingVariables coloring756 7 = table756 7 := by rfl

theorem table756_entry008 :
    matchingVariables coloring756 8 = table756 8 := by rfl

theorem table756_entry009 :
    matchingVariables coloring756 9 = table756 9 := by rfl

theorem table756_entry010 :
    matchingVariables coloring756 10 = table756 10 := by rfl

theorem table756_entry011 :
    matchingVariables coloring756 11 = table756 11 := by rfl

theorem table756_entry012 :
    matchingVariables coloring756 12 = table756 12 := by rfl

theorem table756_entry013 :
    matchingVariables coloring756 13 = table756 13 := by rfl

theorem table756_entry014 :
    matchingVariables coloring756 14 = table756 14 := by rfl

theorem table756_entry015 :
    matchingVariables coloring756 15 = table756 15 := by rfl

theorem table756_entry016 :
    matchingVariables coloring756 16 = table756 16 := by rfl

theorem table756_entry017 :
    matchingVariables coloring756 17 = table756 17 := by rfl

theorem table756_entry018 :
    matchingVariables coloring756 18 = table756 18 := by rfl

theorem table756_entry019 :
    matchingVariables coloring756 19 = table756 19 := by rfl

theorem table756_entry020 :
    matchingVariables coloring756 20 = table756 20 := by rfl

theorem table756_entry021 :
    matchingVariables coloring756 21 = table756 21 := by rfl

theorem table756_entry022 :
    matchingVariables coloring756 22 = table756 22 := by rfl

theorem table756_entry023 :
    matchingVariables coloring756 23 = table756 23 := by rfl

theorem table756_entry024 :
    matchingVariables coloring756 24 = table756 24 := by rfl

theorem table756_entry025 :
    matchingVariables coloring756 25 = table756 25 := by rfl

theorem table756_entry026 :
    matchingVariables coloring756 26 = table756 26 := by rfl

theorem table756_entry027 :
    matchingVariables coloring756 27 = table756 27 := by rfl

theorem table756_entry028 :
    matchingVariables coloring756 28 = table756 28 := by rfl

theorem table756_entry029 :
    matchingVariables coloring756 29 = table756 29 := by rfl

theorem table756_entry030 :
    matchingVariables coloring756 30 = table756 30 := by rfl

theorem table756_entry031 :
    matchingVariables coloring756 31 = table756 31 := by rfl

theorem table756_entry032 :
    matchingVariables coloring756 32 = table756 32 := by rfl

theorem table756_entry033 :
    matchingVariables coloring756 33 = table756 33 := by rfl

theorem table756_entry034 :
    matchingVariables coloring756 34 = table756 34 := by rfl

theorem table756_entry035 :
    matchingVariables coloring756 35 = table756 35 := by rfl

theorem table756_entry036 :
    matchingVariables coloring756 36 = table756 36 := by rfl

theorem table756_entry037 :
    matchingVariables coloring756 37 = table756 37 := by rfl

theorem table756_entry038 :
    matchingVariables coloring756 38 = table756 38 := by rfl

theorem table756_entry039 :
    matchingVariables coloring756 39 = table756 39 := by rfl

theorem table756_entry040 :
    matchingVariables coloring756 40 = table756 40 := by rfl

theorem table756_entry041 :
    matchingVariables coloring756 41 = table756 41 := by rfl

theorem table756_entry042 :
    matchingVariables coloring756 42 = table756 42 := by rfl

theorem table756_entry043 :
    matchingVariables coloring756 43 = table756 43 := by rfl

theorem table756_entry044 :
    matchingVariables coloring756 44 = table756 44 := by rfl

theorem table756_entry045 :
    matchingVariables coloring756 45 = table756 45 := by rfl

theorem table756_entry046 :
    matchingVariables coloring756 46 = table756 46 := by rfl

theorem table756_entry047 :
    matchingVariables coloring756 47 = table756 47 := by rfl

theorem table756_entry048 :
    matchingVariables coloring756 48 = table756 48 := by rfl

theorem table756_entry049 :
    matchingVariables coloring756 49 = table756 49 := by rfl

theorem table756_entry050 :
    matchingVariables coloring756 50 = table756 50 := by rfl

theorem table756_entry051 :
    matchingVariables coloring756 51 = table756 51 := by rfl

theorem table756_entry052 :
    matchingVariables coloring756 52 = table756 52 := by rfl

theorem table756_entry053 :
    matchingVariables coloring756 53 = table756 53 := by rfl

theorem table756_entry054 :
    matchingVariables coloring756 54 = table756 54 := by rfl

theorem table756_entry055 :
    matchingVariables coloring756 55 = table756 55 := by rfl

theorem table756_entry056 :
    matchingVariables coloring756 56 = table756 56 := by rfl

theorem table756_entry057 :
    matchingVariables coloring756 57 = table756 57 := by rfl

theorem table756_entry058 :
    matchingVariables coloring756 58 = table756 58 := by rfl

theorem table756_entry059 :
    matchingVariables coloring756 59 = table756 59 := by rfl

theorem table756_entry060 :
    matchingVariables coloring756 60 = table756 60 := by rfl

theorem table756_entry061 :
    matchingVariables coloring756 61 = table756 61 := by rfl

theorem table756_entry062 :
    matchingVariables coloring756 62 = table756 62 := by rfl

theorem table756_entry063 :
    matchingVariables coloring756 63 = table756 63 := by rfl

theorem table756_entry064 :
    matchingVariables coloring756 64 = table756 64 := by rfl

theorem table756_entry065 :
    matchingVariables coloring756 65 = table756 65 := by rfl

theorem table756_entry066 :
    matchingVariables coloring756 66 = table756 66 := by rfl

theorem table756_entry067 :
    matchingVariables coloring756 67 = table756 67 := by rfl

theorem table756_entry068 :
    matchingVariables coloring756 68 = table756 68 := by rfl

theorem table756_entry069 :
    matchingVariables coloring756 69 = table756 69 := by rfl

theorem table756_entry070 :
    matchingVariables coloring756 70 = table756 70 := by rfl

theorem table756_entry071 :
    matchingVariables coloring756 71 = table756 71 := by rfl

theorem table756_entry072 :
    matchingVariables coloring756 72 = table756 72 := by rfl

theorem table756_entry073 :
    matchingVariables coloring756 73 = table756 73 := by rfl

theorem table756_entry074 :
    matchingVariables coloring756 74 = table756 74 := by rfl

theorem table756_entry075 :
    matchingVariables coloring756 75 = table756 75 := by rfl

theorem table756_entry076 :
    matchingVariables coloring756 76 = table756 76 := by rfl

theorem table756_entry077 :
    matchingVariables coloring756 77 = table756 77 := by rfl

theorem table756_entry078 :
    matchingVariables coloring756 78 = table756 78 := by rfl

theorem table756_entry079 :
    matchingVariables coloring756 79 = table756 79 := by rfl

theorem table756_entry080 :
    matchingVariables coloring756 80 = table756 80 := by rfl

theorem table756_entry081 :
    matchingVariables coloring756 81 = table756 81 := by rfl

theorem table756_entry082 :
    matchingVariables coloring756 82 = table756 82 := by rfl

theorem table756_entry083 :
    matchingVariables coloring756 83 = table756 83 := by rfl

theorem table756_entry084 :
    matchingVariables coloring756 84 = table756 84 := by rfl

theorem table756_entry085 :
    matchingVariables coloring756 85 = table756 85 := by rfl

theorem table756_entry086 :
    matchingVariables coloring756 86 = table756 86 := by rfl

theorem table756_entry087 :
    matchingVariables coloring756 87 = table756 87 := by rfl

theorem table756_entry088 :
    matchingVariables coloring756 88 = table756 88 := by rfl

theorem table756_entry089 :
    matchingVariables coloring756 89 = table756 89 := by rfl

theorem table756_entry090 :
    matchingVariables coloring756 90 = table756 90 := by rfl

theorem table756_entry091 :
    matchingVariables coloring756 91 = table756 91 := by rfl

theorem table756_entry092 :
    matchingVariables coloring756 92 = table756 92 := by rfl

theorem table756_entry093 :
    matchingVariables coloring756 93 = table756 93 := by rfl

theorem table756_entry094 :
    matchingVariables coloring756 94 = table756 94 := by rfl

theorem table756_entry095 :
    matchingVariables coloring756 95 = table756 95 := by rfl

theorem table756_entry096 :
    matchingVariables coloring756 96 = table756 96 := by rfl

theorem table756_entry097 :
    matchingVariables coloring756 97 = table756 97 := by rfl

theorem table756_entry098 :
    matchingVariables coloring756 98 = table756 98 := by rfl

theorem table756_entry099 :
    matchingVariables coloring756 99 = table756 99 := by rfl

theorem table756_entry100 :
    matchingVariables coloring756 100 = table756 100 := by rfl

theorem table756_entry101 :
    matchingVariables coloring756 101 = table756 101 := by rfl

theorem table756_entry102 :
    matchingVariables coloring756 102 = table756 102 := by rfl

theorem table756_entry103 :
    matchingVariables coloring756 103 = table756 103 := by rfl

theorem table756_entry104 :
    matchingVariables coloring756 104 = table756 104 := by rfl

theorem table756_complete : ∀ m, matchingVariables coloring756 m = table756 m := by
  intro m
  fin_cases m
  · exact table756_entry000
  · exact table756_entry001
  · exact table756_entry002
  · exact table756_entry003
  · exact table756_entry004
  · exact table756_entry005
  · exact table756_entry006
  · exact table756_entry007
  · exact table756_entry008
  · exact table756_entry009
  · exact table756_entry010
  · exact table756_entry011
  · exact table756_entry012
  · exact table756_entry013
  · exact table756_entry014
  · exact table756_entry015
  · exact table756_entry016
  · exact table756_entry017
  · exact table756_entry018
  · exact table756_entry019
  · exact table756_entry020
  · exact table756_entry021
  · exact table756_entry022
  · exact table756_entry023
  · exact table756_entry024
  · exact table756_entry025
  · exact table756_entry026
  · exact table756_entry027
  · exact table756_entry028
  · exact table756_entry029
  · exact table756_entry030
  · exact table756_entry031
  · exact table756_entry032
  · exact table756_entry033
  · exact table756_entry034
  · exact table756_entry035
  · exact table756_entry036
  · exact table756_entry037
  · exact table756_entry038
  · exact table756_entry039
  · exact table756_entry040
  · exact table756_entry041
  · exact table756_entry042
  · exact table756_entry043
  · exact table756_entry044
  · exact table756_entry045
  · exact table756_entry046
  · exact table756_entry047
  · exact table756_entry048
  · exact table756_entry049
  · exact table756_entry050
  · exact table756_entry051
  · exact table756_entry052
  · exact table756_entry053
  · exact table756_entry054
  · exact table756_entry055
  · exact table756_entry056
  · exact table756_entry057
  · exact table756_entry058
  · exact table756_entry059
  · exact table756_entry060
  · exact table756_entry061
  · exact table756_entry062
  · exact table756_entry063
  · exact table756_entry064
  · exact table756_entry065
  · exact table756_entry066
  · exact table756_entry067
  · exact table756_entry068
  · exact table756_entry069
  · exact table756_entry070
  · exact table756_entry071
  · exact table756_entry072
  · exact table756_entry073
  · exact table756_entry074
  · exact table756_entry075
  · exact table756_entry076
  · exact table756_entry077
  · exact table756_entry078
  · exact table756_entry079
  · exact table756_entry080
  · exact table756_entry081
  · exact table756_entry082
  · exact table756_entry083
  · exact table756_entry084
  · exact table756_entry085
  · exact table756_entry086
  · exact table756_entry087
  · exact table756_entry088
  · exact table756_entry089
  · exact table756_entry090
  · exact table756_entry091
  · exact table756_entry092
  · exact table756_entry093
  · exact table756_entry094
  · exact table756_entry095
  · exact table756_entry096
  · exact table756_entry097
  · exact table756_entry098
  · exact table756_entry099
  · exact table756_entry100
  · exact table756_entry101
  · exact table756_entry102
  · exact table756_entry103
  · exact table756_entry104

#print axioms table756_complete

def expanded756 : Polynomial 143 := [(1, exponentOfVariables [0, 58, 98, 137]),
  (1, exponentOfVariables [0, 58, 108, 125]),
  (1, exponentOfVariables [0, 69, 85, 137]),
  (1, exponentOfVariables [9, 38, 85, 137]),
  (1, exponentOfVariables [9, 48, 85, 125]),
  (1, exponentOfVariables [19, 48, 69, 115]),
  (1, exponentOfVariables [19, 56, 69, 108]),
  (1, exponentOfVariables [27, 38, 58, 137]),
  (1, exponentOfVariables [27, 48, 58, 125])]

theorem table756_expanded : tablePolynomial table756 = expanded756 := by
  rfl

theorem table756_exponent00 :
    exponentOfVariables (n := 143) [0, 58, 98, 137] =
      (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 98 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_exponent01 :
    exponentOfVariables (n := 143) [0, 58, 108, 125] =
      (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 108 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_exponent02 :
    exponentOfVariables (n := 143) [0, 69, 85, 137] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_exponent03 :
    exponentOfVariables (n := 143) [9, 38, 85, 137] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_exponent04 :
    exponentOfVariables (n := 143) [9, 48, 85, 125] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 85 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_exponent05 :
    exponentOfVariables (n := 143) [19, 48, 69, 115] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 115 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_exponent06 :
    exponentOfVariables (n := 143) [19, 56, 69, 108] =
      (fun i => if i.val = 19 then (1) else if i.val = 56 then (1) else if i.val = 69 then (1) else if i.val = 108 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_exponent07 :
    exponentOfVariables (n := 143) [27, 38, 58, 137] =
      (fun i => if i.val = 27 then (1) else if i.val = 38 then (1) else if i.val = 58 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_exponent08 :
    exponentOfVariables (n := 143) [27, 48, 58, 125] =
      (fun i => if i.val = 27 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table756_polynomial : expanded756 = amplitude756 := by
  simp only [expanded756, amplitude756, table756_exponent00, table756_exponent01, table756_exponent02, table756_exponent03, table756_exponent04, table756_exponent05, table756_exponent06, table756_exponent07, table756_exponent08]

end MonochromaticQuantumGraphs.N8D3.Candidate129
