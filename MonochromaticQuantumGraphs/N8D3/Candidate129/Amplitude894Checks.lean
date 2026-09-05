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

def coloring894 : Fin 8 → Fin 3 := ![0, 1, 0, 0, 2, 0, 1, 0]

def table894 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 57, 104, 137] else
    if m.val = 6 then some [1, 69, 84, 137] else
    if m.val = 21 then some [9, 41, 84, 137] else
    if m.val = 24 then some [9, 51, 84, 125] else
    if m.val = 25 then some [9, 51, 91, 121] else
    if m.val = 40 then some [18, 51, 69, 121] else none

theorem table894_entry000 :
    matchingVariables coloring894 0 = table894 0 := by rfl

theorem table894_entry001 :
    matchingVariables coloring894 1 = table894 1 := by rfl

theorem table894_entry002 :
    matchingVariables coloring894 2 = table894 2 := by rfl

theorem table894_entry003 :
    matchingVariables coloring894 3 = table894 3 := by rfl

theorem table894_entry004 :
    matchingVariables coloring894 4 = table894 4 := by rfl

theorem table894_entry005 :
    matchingVariables coloring894 5 = table894 5 := by rfl

theorem table894_entry006 :
    matchingVariables coloring894 6 = table894 6 := by rfl

theorem table894_entry007 :
    matchingVariables coloring894 7 = table894 7 := by rfl

theorem table894_entry008 :
    matchingVariables coloring894 8 = table894 8 := by rfl

theorem table894_entry009 :
    matchingVariables coloring894 9 = table894 9 := by rfl

theorem table894_entry010 :
    matchingVariables coloring894 10 = table894 10 := by rfl

theorem table894_entry011 :
    matchingVariables coloring894 11 = table894 11 := by rfl

theorem table894_entry012 :
    matchingVariables coloring894 12 = table894 12 := by rfl

theorem table894_entry013 :
    matchingVariables coloring894 13 = table894 13 := by rfl

theorem table894_entry014 :
    matchingVariables coloring894 14 = table894 14 := by rfl

theorem table894_entry015 :
    matchingVariables coloring894 15 = table894 15 := by rfl

theorem table894_entry016 :
    matchingVariables coloring894 16 = table894 16 := by rfl

theorem table894_entry017 :
    matchingVariables coloring894 17 = table894 17 := by rfl

theorem table894_entry018 :
    matchingVariables coloring894 18 = table894 18 := by rfl

theorem table894_entry019 :
    matchingVariables coloring894 19 = table894 19 := by rfl

theorem table894_entry020 :
    matchingVariables coloring894 20 = table894 20 := by rfl

theorem table894_entry021 :
    matchingVariables coloring894 21 = table894 21 := by rfl

theorem table894_entry022 :
    matchingVariables coloring894 22 = table894 22 := by rfl

theorem table894_entry023 :
    matchingVariables coloring894 23 = table894 23 := by rfl

theorem table894_entry024 :
    matchingVariables coloring894 24 = table894 24 := by rfl

theorem table894_entry025 :
    matchingVariables coloring894 25 = table894 25 := by rfl

theorem table894_entry026 :
    matchingVariables coloring894 26 = table894 26 := by rfl

theorem table894_entry027 :
    matchingVariables coloring894 27 = table894 27 := by rfl

theorem table894_entry028 :
    matchingVariables coloring894 28 = table894 28 := by rfl

theorem table894_entry029 :
    matchingVariables coloring894 29 = table894 29 := by rfl

theorem table894_entry030 :
    matchingVariables coloring894 30 = table894 30 := by rfl

theorem table894_entry031 :
    matchingVariables coloring894 31 = table894 31 := by rfl

theorem table894_entry032 :
    matchingVariables coloring894 32 = table894 32 := by rfl

theorem table894_entry033 :
    matchingVariables coloring894 33 = table894 33 := by rfl

theorem table894_entry034 :
    matchingVariables coloring894 34 = table894 34 := by rfl

theorem table894_entry035 :
    matchingVariables coloring894 35 = table894 35 := by rfl

theorem table894_entry036 :
    matchingVariables coloring894 36 = table894 36 := by rfl

theorem table894_entry037 :
    matchingVariables coloring894 37 = table894 37 := by rfl

theorem table894_entry038 :
    matchingVariables coloring894 38 = table894 38 := by rfl

theorem table894_entry039 :
    matchingVariables coloring894 39 = table894 39 := by rfl

theorem table894_entry040 :
    matchingVariables coloring894 40 = table894 40 := by rfl

theorem table894_entry041 :
    matchingVariables coloring894 41 = table894 41 := by rfl

theorem table894_entry042 :
    matchingVariables coloring894 42 = table894 42 := by rfl

theorem table894_entry043 :
    matchingVariables coloring894 43 = table894 43 := by rfl

theorem table894_entry044 :
    matchingVariables coloring894 44 = table894 44 := by rfl

theorem table894_entry045 :
    matchingVariables coloring894 45 = table894 45 := by rfl

theorem table894_entry046 :
    matchingVariables coloring894 46 = table894 46 := by rfl

theorem table894_entry047 :
    matchingVariables coloring894 47 = table894 47 := by rfl

theorem table894_entry048 :
    matchingVariables coloring894 48 = table894 48 := by rfl

theorem table894_entry049 :
    matchingVariables coloring894 49 = table894 49 := by rfl

theorem table894_entry050 :
    matchingVariables coloring894 50 = table894 50 := by rfl

theorem table894_entry051 :
    matchingVariables coloring894 51 = table894 51 := by rfl

theorem table894_entry052 :
    matchingVariables coloring894 52 = table894 52 := by rfl

theorem table894_entry053 :
    matchingVariables coloring894 53 = table894 53 := by rfl

theorem table894_entry054 :
    matchingVariables coloring894 54 = table894 54 := by rfl

theorem table894_entry055 :
    matchingVariables coloring894 55 = table894 55 := by rfl

theorem table894_entry056 :
    matchingVariables coloring894 56 = table894 56 := by rfl

theorem table894_entry057 :
    matchingVariables coloring894 57 = table894 57 := by rfl

theorem table894_entry058 :
    matchingVariables coloring894 58 = table894 58 := by rfl

theorem table894_entry059 :
    matchingVariables coloring894 59 = table894 59 := by rfl

theorem table894_entry060 :
    matchingVariables coloring894 60 = table894 60 := by rfl

theorem table894_entry061 :
    matchingVariables coloring894 61 = table894 61 := by rfl

theorem table894_entry062 :
    matchingVariables coloring894 62 = table894 62 := by rfl

theorem table894_entry063 :
    matchingVariables coloring894 63 = table894 63 := by rfl

theorem table894_entry064 :
    matchingVariables coloring894 64 = table894 64 := by rfl

theorem table894_entry065 :
    matchingVariables coloring894 65 = table894 65 := by rfl

theorem table894_entry066 :
    matchingVariables coloring894 66 = table894 66 := by rfl

theorem table894_entry067 :
    matchingVariables coloring894 67 = table894 67 := by rfl

theorem table894_entry068 :
    matchingVariables coloring894 68 = table894 68 := by rfl

theorem table894_entry069 :
    matchingVariables coloring894 69 = table894 69 := by rfl

theorem table894_entry070 :
    matchingVariables coloring894 70 = table894 70 := by rfl

theorem table894_entry071 :
    matchingVariables coloring894 71 = table894 71 := by rfl

theorem table894_entry072 :
    matchingVariables coloring894 72 = table894 72 := by rfl

theorem table894_entry073 :
    matchingVariables coloring894 73 = table894 73 := by rfl

theorem table894_entry074 :
    matchingVariables coloring894 74 = table894 74 := by rfl

theorem table894_entry075 :
    matchingVariables coloring894 75 = table894 75 := by rfl

theorem table894_entry076 :
    matchingVariables coloring894 76 = table894 76 := by rfl

theorem table894_entry077 :
    matchingVariables coloring894 77 = table894 77 := by rfl

theorem table894_entry078 :
    matchingVariables coloring894 78 = table894 78 := by rfl

theorem table894_entry079 :
    matchingVariables coloring894 79 = table894 79 := by rfl

theorem table894_entry080 :
    matchingVariables coloring894 80 = table894 80 := by rfl

theorem table894_entry081 :
    matchingVariables coloring894 81 = table894 81 := by rfl

theorem table894_entry082 :
    matchingVariables coloring894 82 = table894 82 := by rfl

theorem table894_entry083 :
    matchingVariables coloring894 83 = table894 83 := by rfl

theorem table894_entry084 :
    matchingVariables coloring894 84 = table894 84 := by rfl

theorem table894_entry085 :
    matchingVariables coloring894 85 = table894 85 := by rfl

theorem table894_entry086 :
    matchingVariables coloring894 86 = table894 86 := by rfl

theorem table894_entry087 :
    matchingVariables coloring894 87 = table894 87 := by rfl

theorem table894_entry088 :
    matchingVariables coloring894 88 = table894 88 := by rfl

theorem table894_entry089 :
    matchingVariables coloring894 89 = table894 89 := by rfl

theorem table894_entry090 :
    matchingVariables coloring894 90 = table894 90 := by rfl

theorem table894_entry091 :
    matchingVariables coloring894 91 = table894 91 := by rfl

theorem table894_entry092 :
    matchingVariables coloring894 92 = table894 92 := by rfl

theorem table894_entry093 :
    matchingVariables coloring894 93 = table894 93 := by rfl

theorem table894_entry094 :
    matchingVariables coloring894 94 = table894 94 := by rfl

theorem table894_entry095 :
    matchingVariables coloring894 95 = table894 95 := by rfl

theorem table894_entry096 :
    matchingVariables coloring894 96 = table894 96 := by rfl

theorem table894_entry097 :
    matchingVariables coloring894 97 = table894 97 := by rfl

theorem table894_entry098 :
    matchingVariables coloring894 98 = table894 98 := by rfl

theorem table894_entry099 :
    matchingVariables coloring894 99 = table894 99 := by rfl

theorem table894_entry100 :
    matchingVariables coloring894 100 = table894 100 := by rfl

theorem table894_entry101 :
    matchingVariables coloring894 101 = table894 101 := by rfl

theorem table894_entry102 :
    matchingVariables coloring894 102 = table894 102 := by rfl

theorem table894_entry103 :
    matchingVariables coloring894 103 = table894 103 := by rfl

theorem table894_entry104 :
    matchingVariables coloring894 104 = table894 104 := by rfl

theorem table894_complete : ∀ m, matchingVariables coloring894 m = table894 m := by
  intro m
  fin_cases m
  · exact table894_entry000
  · exact table894_entry001
  · exact table894_entry002
  · exact table894_entry003
  · exact table894_entry004
  · exact table894_entry005
  · exact table894_entry006
  · exact table894_entry007
  · exact table894_entry008
  · exact table894_entry009
  · exact table894_entry010
  · exact table894_entry011
  · exact table894_entry012
  · exact table894_entry013
  · exact table894_entry014
  · exact table894_entry015
  · exact table894_entry016
  · exact table894_entry017
  · exact table894_entry018
  · exact table894_entry019
  · exact table894_entry020
  · exact table894_entry021
  · exact table894_entry022
  · exact table894_entry023
  · exact table894_entry024
  · exact table894_entry025
  · exact table894_entry026
  · exact table894_entry027
  · exact table894_entry028
  · exact table894_entry029
  · exact table894_entry030
  · exact table894_entry031
  · exact table894_entry032
  · exact table894_entry033
  · exact table894_entry034
  · exact table894_entry035
  · exact table894_entry036
  · exact table894_entry037
  · exact table894_entry038
  · exact table894_entry039
  · exact table894_entry040
  · exact table894_entry041
  · exact table894_entry042
  · exact table894_entry043
  · exact table894_entry044
  · exact table894_entry045
  · exact table894_entry046
  · exact table894_entry047
  · exact table894_entry048
  · exact table894_entry049
  · exact table894_entry050
  · exact table894_entry051
  · exact table894_entry052
  · exact table894_entry053
  · exact table894_entry054
  · exact table894_entry055
  · exact table894_entry056
  · exact table894_entry057
  · exact table894_entry058
  · exact table894_entry059
  · exact table894_entry060
  · exact table894_entry061
  · exact table894_entry062
  · exact table894_entry063
  · exact table894_entry064
  · exact table894_entry065
  · exact table894_entry066
  · exact table894_entry067
  · exact table894_entry068
  · exact table894_entry069
  · exact table894_entry070
  · exact table894_entry071
  · exact table894_entry072
  · exact table894_entry073
  · exact table894_entry074
  · exact table894_entry075
  · exact table894_entry076
  · exact table894_entry077
  · exact table894_entry078
  · exact table894_entry079
  · exact table894_entry080
  · exact table894_entry081
  · exact table894_entry082
  · exact table894_entry083
  · exact table894_entry084
  · exact table894_entry085
  · exact table894_entry086
  · exact table894_entry087
  · exact table894_entry088
  · exact table894_entry089
  · exact table894_entry090
  · exact table894_entry091
  · exact table894_entry092
  · exact table894_entry093
  · exact table894_entry094
  · exact table894_entry095
  · exact table894_entry096
  · exact table894_entry097
  · exact table894_entry098
  · exact table894_entry099
  · exact table894_entry100
  · exact table894_entry101
  · exact table894_entry102
  · exact table894_entry103
  · exact table894_entry104

#print axioms table894_complete

def expanded894 : Polynomial 143 := [(1, exponentOfVariables [1, 57, 104, 137]),
  (1, exponentOfVariables [1, 69, 84, 137]),
  (1, exponentOfVariables [9, 41, 84, 137]),
  (1, exponentOfVariables [9, 51, 84, 125]),
  (1, exponentOfVariables [9, 51, 91, 121]),
  (1, exponentOfVariables [18, 51, 69, 121])]

theorem table894_expanded : tablePolynomial table894 = expanded894 := by
  rfl

theorem table894_exponent00 :
    exponentOfVariables (n := 143) [1, 57, 104, 137] =
      (fun i => if i.val = 1 then (1) else if i.val = 57 then (1) else if i.val = 104 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table894_exponent01 :
    exponentOfVariables (n := 143) [1, 69, 84, 137] =
      (fun i => if i.val = 1 then (1) else if i.val = 69 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table894_exponent02 :
    exponentOfVariables (n := 143) [9, 41, 84, 137] =
      (fun i => if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table894_exponent03 :
    exponentOfVariables (n := 143) [9, 51, 84, 125] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 84 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table894_exponent04 :
    exponentOfVariables (n := 143) [9, 51, 91, 121] =
      (fun i => if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 91 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table894_exponent05 :
    exponentOfVariables (n := 143) [18, 51, 69, 121] =
      (fun i => if i.val = 18 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table894_polynomial : expanded894 = amplitude894 := by
  simp only [expanded894, amplitude894, table894_exponent00, table894_exponent01, table894_exponent02, table894_exponent03, table894_exponent04, table894_exponent05]

theorem premiseCheck021 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude894)) p021 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
