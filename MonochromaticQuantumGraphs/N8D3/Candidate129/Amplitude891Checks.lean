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

def coloring891 : Fin 8 → Fin 3 := ![0, 0, 0, 0, 2, 0, 1, 0]

def table891 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 57, 104, 137] else
    if m.val = 6 then some [0, 69, 84, 137] else
    if m.val = 21 then some [9, 38, 84, 137] else
    if m.val = 24 then some [9, 48, 84, 125] else
    if m.val = 25 then some [9, 48, 91, 121] else
    if m.val = 40 then some [18, 48, 69, 121] else none

theorem table891_entry000 :
    matchingVariables coloring891 0 = table891 0 := by rfl

theorem table891_entry001 :
    matchingVariables coloring891 1 = table891 1 := by rfl

theorem table891_entry002 :
    matchingVariables coloring891 2 = table891 2 := by rfl

theorem table891_entry003 :
    matchingVariables coloring891 3 = table891 3 := by rfl

theorem table891_entry004 :
    matchingVariables coloring891 4 = table891 4 := by rfl

theorem table891_entry005 :
    matchingVariables coloring891 5 = table891 5 := by rfl

theorem table891_entry006 :
    matchingVariables coloring891 6 = table891 6 := by rfl

theorem table891_entry007 :
    matchingVariables coloring891 7 = table891 7 := by rfl

theorem table891_entry008 :
    matchingVariables coloring891 8 = table891 8 := by rfl

theorem table891_entry009 :
    matchingVariables coloring891 9 = table891 9 := by rfl

theorem table891_entry010 :
    matchingVariables coloring891 10 = table891 10 := by rfl

theorem table891_entry011 :
    matchingVariables coloring891 11 = table891 11 := by rfl

theorem table891_entry012 :
    matchingVariables coloring891 12 = table891 12 := by rfl

theorem table891_entry013 :
    matchingVariables coloring891 13 = table891 13 := by rfl

theorem table891_entry014 :
    matchingVariables coloring891 14 = table891 14 := by rfl

theorem table891_entry015 :
    matchingVariables coloring891 15 = table891 15 := by rfl

theorem table891_entry016 :
    matchingVariables coloring891 16 = table891 16 := by rfl

theorem table891_entry017 :
    matchingVariables coloring891 17 = table891 17 := by rfl

theorem table891_entry018 :
    matchingVariables coloring891 18 = table891 18 := by rfl

theorem table891_entry019 :
    matchingVariables coloring891 19 = table891 19 := by rfl

theorem table891_entry020 :
    matchingVariables coloring891 20 = table891 20 := by rfl

theorem table891_entry021 :
    matchingVariables coloring891 21 = table891 21 := by rfl

theorem table891_entry022 :
    matchingVariables coloring891 22 = table891 22 := by rfl

theorem table891_entry023 :
    matchingVariables coloring891 23 = table891 23 := by rfl

theorem table891_entry024 :
    matchingVariables coloring891 24 = table891 24 := by rfl

theorem table891_entry025 :
    matchingVariables coloring891 25 = table891 25 := by rfl

theorem table891_entry026 :
    matchingVariables coloring891 26 = table891 26 := by rfl

theorem table891_entry027 :
    matchingVariables coloring891 27 = table891 27 := by rfl

theorem table891_entry028 :
    matchingVariables coloring891 28 = table891 28 := by rfl

theorem table891_entry029 :
    matchingVariables coloring891 29 = table891 29 := by rfl

theorem table891_entry030 :
    matchingVariables coloring891 30 = table891 30 := by rfl

theorem table891_entry031 :
    matchingVariables coloring891 31 = table891 31 := by rfl

theorem table891_entry032 :
    matchingVariables coloring891 32 = table891 32 := by rfl

theorem table891_entry033 :
    matchingVariables coloring891 33 = table891 33 := by rfl

theorem table891_entry034 :
    matchingVariables coloring891 34 = table891 34 := by rfl

theorem table891_entry035 :
    matchingVariables coloring891 35 = table891 35 := by rfl

theorem table891_entry036 :
    matchingVariables coloring891 36 = table891 36 := by rfl

theorem table891_entry037 :
    matchingVariables coloring891 37 = table891 37 := by rfl

theorem table891_entry038 :
    matchingVariables coloring891 38 = table891 38 := by rfl

theorem table891_entry039 :
    matchingVariables coloring891 39 = table891 39 := by rfl

theorem table891_entry040 :
    matchingVariables coloring891 40 = table891 40 := by rfl

theorem table891_entry041 :
    matchingVariables coloring891 41 = table891 41 := by rfl

theorem table891_entry042 :
    matchingVariables coloring891 42 = table891 42 := by rfl

theorem table891_entry043 :
    matchingVariables coloring891 43 = table891 43 := by rfl

theorem table891_entry044 :
    matchingVariables coloring891 44 = table891 44 := by rfl

theorem table891_entry045 :
    matchingVariables coloring891 45 = table891 45 := by rfl

theorem table891_entry046 :
    matchingVariables coloring891 46 = table891 46 := by rfl

theorem table891_entry047 :
    matchingVariables coloring891 47 = table891 47 := by rfl

theorem table891_entry048 :
    matchingVariables coloring891 48 = table891 48 := by rfl

theorem table891_entry049 :
    matchingVariables coloring891 49 = table891 49 := by rfl

theorem table891_entry050 :
    matchingVariables coloring891 50 = table891 50 := by rfl

theorem table891_entry051 :
    matchingVariables coloring891 51 = table891 51 := by rfl

theorem table891_entry052 :
    matchingVariables coloring891 52 = table891 52 := by rfl

theorem table891_entry053 :
    matchingVariables coloring891 53 = table891 53 := by rfl

theorem table891_entry054 :
    matchingVariables coloring891 54 = table891 54 := by rfl

theorem table891_entry055 :
    matchingVariables coloring891 55 = table891 55 := by rfl

theorem table891_entry056 :
    matchingVariables coloring891 56 = table891 56 := by rfl

theorem table891_entry057 :
    matchingVariables coloring891 57 = table891 57 := by rfl

theorem table891_entry058 :
    matchingVariables coloring891 58 = table891 58 := by rfl

theorem table891_entry059 :
    matchingVariables coloring891 59 = table891 59 := by rfl

theorem table891_entry060 :
    matchingVariables coloring891 60 = table891 60 := by rfl

theorem table891_entry061 :
    matchingVariables coloring891 61 = table891 61 := by rfl

theorem table891_entry062 :
    matchingVariables coloring891 62 = table891 62 := by rfl

theorem table891_entry063 :
    matchingVariables coloring891 63 = table891 63 := by rfl

theorem table891_entry064 :
    matchingVariables coloring891 64 = table891 64 := by rfl

theorem table891_entry065 :
    matchingVariables coloring891 65 = table891 65 := by rfl

theorem table891_entry066 :
    matchingVariables coloring891 66 = table891 66 := by rfl

theorem table891_entry067 :
    matchingVariables coloring891 67 = table891 67 := by rfl

theorem table891_entry068 :
    matchingVariables coloring891 68 = table891 68 := by rfl

theorem table891_entry069 :
    matchingVariables coloring891 69 = table891 69 := by rfl

theorem table891_entry070 :
    matchingVariables coloring891 70 = table891 70 := by rfl

theorem table891_entry071 :
    matchingVariables coloring891 71 = table891 71 := by rfl

theorem table891_entry072 :
    matchingVariables coloring891 72 = table891 72 := by rfl

theorem table891_entry073 :
    matchingVariables coloring891 73 = table891 73 := by rfl

theorem table891_entry074 :
    matchingVariables coloring891 74 = table891 74 := by rfl

theorem table891_entry075 :
    matchingVariables coloring891 75 = table891 75 := by rfl

theorem table891_entry076 :
    matchingVariables coloring891 76 = table891 76 := by rfl

theorem table891_entry077 :
    matchingVariables coloring891 77 = table891 77 := by rfl

theorem table891_entry078 :
    matchingVariables coloring891 78 = table891 78 := by rfl

theorem table891_entry079 :
    matchingVariables coloring891 79 = table891 79 := by rfl

theorem table891_entry080 :
    matchingVariables coloring891 80 = table891 80 := by rfl

theorem table891_entry081 :
    matchingVariables coloring891 81 = table891 81 := by rfl

theorem table891_entry082 :
    matchingVariables coloring891 82 = table891 82 := by rfl

theorem table891_entry083 :
    matchingVariables coloring891 83 = table891 83 := by rfl

theorem table891_entry084 :
    matchingVariables coloring891 84 = table891 84 := by rfl

theorem table891_entry085 :
    matchingVariables coloring891 85 = table891 85 := by rfl

theorem table891_entry086 :
    matchingVariables coloring891 86 = table891 86 := by rfl

theorem table891_entry087 :
    matchingVariables coloring891 87 = table891 87 := by rfl

theorem table891_entry088 :
    matchingVariables coloring891 88 = table891 88 := by rfl

theorem table891_entry089 :
    matchingVariables coloring891 89 = table891 89 := by rfl

theorem table891_entry090 :
    matchingVariables coloring891 90 = table891 90 := by rfl

theorem table891_entry091 :
    matchingVariables coloring891 91 = table891 91 := by rfl

theorem table891_entry092 :
    matchingVariables coloring891 92 = table891 92 := by rfl

theorem table891_entry093 :
    matchingVariables coloring891 93 = table891 93 := by rfl

theorem table891_entry094 :
    matchingVariables coloring891 94 = table891 94 := by rfl

theorem table891_entry095 :
    matchingVariables coloring891 95 = table891 95 := by rfl

theorem table891_entry096 :
    matchingVariables coloring891 96 = table891 96 := by rfl

theorem table891_entry097 :
    matchingVariables coloring891 97 = table891 97 := by rfl

theorem table891_entry098 :
    matchingVariables coloring891 98 = table891 98 := by rfl

theorem table891_entry099 :
    matchingVariables coloring891 99 = table891 99 := by rfl

theorem table891_entry100 :
    matchingVariables coloring891 100 = table891 100 := by rfl

theorem table891_entry101 :
    matchingVariables coloring891 101 = table891 101 := by rfl

theorem table891_entry102 :
    matchingVariables coloring891 102 = table891 102 := by rfl

theorem table891_entry103 :
    matchingVariables coloring891 103 = table891 103 := by rfl

theorem table891_entry104 :
    matchingVariables coloring891 104 = table891 104 := by rfl

theorem table891_complete : ∀ m, matchingVariables coloring891 m = table891 m := by
  intro m
  fin_cases m
  · exact table891_entry000
  · exact table891_entry001
  · exact table891_entry002
  · exact table891_entry003
  · exact table891_entry004
  · exact table891_entry005
  · exact table891_entry006
  · exact table891_entry007
  · exact table891_entry008
  · exact table891_entry009
  · exact table891_entry010
  · exact table891_entry011
  · exact table891_entry012
  · exact table891_entry013
  · exact table891_entry014
  · exact table891_entry015
  · exact table891_entry016
  · exact table891_entry017
  · exact table891_entry018
  · exact table891_entry019
  · exact table891_entry020
  · exact table891_entry021
  · exact table891_entry022
  · exact table891_entry023
  · exact table891_entry024
  · exact table891_entry025
  · exact table891_entry026
  · exact table891_entry027
  · exact table891_entry028
  · exact table891_entry029
  · exact table891_entry030
  · exact table891_entry031
  · exact table891_entry032
  · exact table891_entry033
  · exact table891_entry034
  · exact table891_entry035
  · exact table891_entry036
  · exact table891_entry037
  · exact table891_entry038
  · exact table891_entry039
  · exact table891_entry040
  · exact table891_entry041
  · exact table891_entry042
  · exact table891_entry043
  · exact table891_entry044
  · exact table891_entry045
  · exact table891_entry046
  · exact table891_entry047
  · exact table891_entry048
  · exact table891_entry049
  · exact table891_entry050
  · exact table891_entry051
  · exact table891_entry052
  · exact table891_entry053
  · exact table891_entry054
  · exact table891_entry055
  · exact table891_entry056
  · exact table891_entry057
  · exact table891_entry058
  · exact table891_entry059
  · exact table891_entry060
  · exact table891_entry061
  · exact table891_entry062
  · exact table891_entry063
  · exact table891_entry064
  · exact table891_entry065
  · exact table891_entry066
  · exact table891_entry067
  · exact table891_entry068
  · exact table891_entry069
  · exact table891_entry070
  · exact table891_entry071
  · exact table891_entry072
  · exact table891_entry073
  · exact table891_entry074
  · exact table891_entry075
  · exact table891_entry076
  · exact table891_entry077
  · exact table891_entry078
  · exact table891_entry079
  · exact table891_entry080
  · exact table891_entry081
  · exact table891_entry082
  · exact table891_entry083
  · exact table891_entry084
  · exact table891_entry085
  · exact table891_entry086
  · exact table891_entry087
  · exact table891_entry088
  · exact table891_entry089
  · exact table891_entry090
  · exact table891_entry091
  · exact table891_entry092
  · exact table891_entry093
  · exact table891_entry094
  · exact table891_entry095
  · exact table891_entry096
  · exact table891_entry097
  · exact table891_entry098
  · exact table891_entry099
  · exact table891_entry100
  · exact table891_entry101
  · exact table891_entry102
  · exact table891_entry103
  · exact table891_entry104

#print axioms table891_complete

def expanded891 : Polynomial 143 := [(1, exponentOfVariables [0, 57, 104, 137]),
  (1, exponentOfVariables [0, 69, 84, 137]),
  (1, exponentOfVariables [9, 38, 84, 137]),
  (1, exponentOfVariables [9, 48, 84, 125]),
  (1, exponentOfVariables [9, 48, 91, 121]),
  (1, exponentOfVariables [18, 48, 69, 121])]

theorem table891_expanded : tablePolynomial table891 = expanded891 := by
  rfl

theorem table891_exponent00 :
    exponentOfVariables (n := 143) [0, 57, 104, 137] =
      (fun i => if i.val = 0 then (1) else if i.val = 57 then (1) else if i.val = 104 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table891_exponent01 :
    exponentOfVariables (n := 143) [0, 69, 84, 137] =
      (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table891_exponent02 :
    exponentOfVariables (n := 143) [9, 38, 84, 137] =
      (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table891_exponent03 :
    exponentOfVariables (n := 143) [9, 48, 84, 125] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 84 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table891_exponent04 :
    exponentOfVariables (n := 143) [9, 48, 91, 121] =
      (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 91 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table891_exponent05 :
    exponentOfVariables (n := 143) [18, 48, 69, 121] =
      (fun i => if i.val = 18 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table891_polynomial : expanded891 = amplitude891 := by
  simp only [expanded891, amplitude891, table891_exponent00, table891_exponent01, table891_exponent02, table891_exponent03, table891_exponent04, table891_exponent05]

theorem premiseCheck020 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude891)) p020 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
