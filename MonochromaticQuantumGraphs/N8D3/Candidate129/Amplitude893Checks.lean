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

def coloring893 : Fin 8 → Fin 3 := ![2, 0, 0, 0, 2, 0, 1, 0]

def table893 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [6, 57, 104, 137] else
    if m.val = 6 then some [6, 69, 84, 137] else
    if m.val = 21 then some [15, 38, 84, 137] else
    if m.val = 24 then some [15, 48, 84, 125] else
    if m.val = 25 then some [15, 48, 91, 121] else
    if m.val = 40 then some [24, 48, 69, 121] else none

theorem table893_entry000 :
    matchingVariables coloring893 0 = table893 0 := by rfl

theorem table893_entry001 :
    matchingVariables coloring893 1 = table893 1 := by rfl

theorem table893_entry002 :
    matchingVariables coloring893 2 = table893 2 := by rfl

theorem table893_entry003 :
    matchingVariables coloring893 3 = table893 3 := by rfl

theorem table893_entry004 :
    matchingVariables coloring893 4 = table893 4 := by rfl

theorem table893_entry005 :
    matchingVariables coloring893 5 = table893 5 := by rfl

theorem table893_entry006 :
    matchingVariables coloring893 6 = table893 6 := by rfl

theorem table893_entry007 :
    matchingVariables coloring893 7 = table893 7 := by rfl

theorem table893_entry008 :
    matchingVariables coloring893 8 = table893 8 := by rfl

theorem table893_entry009 :
    matchingVariables coloring893 9 = table893 9 := by rfl

theorem table893_entry010 :
    matchingVariables coloring893 10 = table893 10 := by rfl

theorem table893_entry011 :
    matchingVariables coloring893 11 = table893 11 := by rfl

theorem table893_entry012 :
    matchingVariables coloring893 12 = table893 12 := by rfl

theorem table893_entry013 :
    matchingVariables coloring893 13 = table893 13 := by rfl

theorem table893_entry014 :
    matchingVariables coloring893 14 = table893 14 := by rfl

theorem table893_entry015 :
    matchingVariables coloring893 15 = table893 15 := by rfl

theorem table893_entry016 :
    matchingVariables coloring893 16 = table893 16 := by rfl

theorem table893_entry017 :
    matchingVariables coloring893 17 = table893 17 := by rfl

theorem table893_entry018 :
    matchingVariables coloring893 18 = table893 18 := by rfl

theorem table893_entry019 :
    matchingVariables coloring893 19 = table893 19 := by rfl

theorem table893_entry020 :
    matchingVariables coloring893 20 = table893 20 := by rfl

theorem table893_entry021 :
    matchingVariables coloring893 21 = table893 21 := by rfl

theorem table893_entry022 :
    matchingVariables coloring893 22 = table893 22 := by rfl

theorem table893_entry023 :
    matchingVariables coloring893 23 = table893 23 := by rfl

theorem table893_entry024 :
    matchingVariables coloring893 24 = table893 24 := by rfl

theorem table893_entry025 :
    matchingVariables coloring893 25 = table893 25 := by rfl

theorem table893_entry026 :
    matchingVariables coloring893 26 = table893 26 := by rfl

theorem table893_entry027 :
    matchingVariables coloring893 27 = table893 27 := by rfl

theorem table893_entry028 :
    matchingVariables coloring893 28 = table893 28 := by rfl

theorem table893_entry029 :
    matchingVariables coloring893 29 = table893 29 := by rfl

theorem table893_entry030 :
    matchingVariables coloring893 30 = table893 30 := by rfl

theorem table893_entry031 :
    matchingVariables coloring893 31 = table893 31 := by rfl

theorem table893_entry032 :
    matchingVariables coloring893 32 = table893 32 := by rfl

theorem table893_entry033 :
    matchingVariables coloring893 33 = table893 33 := by rfl

theorem table893_entry034 :
    matchingVariables coloring893 34 = table893 34 := by rfl

theorem table893_entry035 :
    matchingVariables coloring893 35 = table893 35 := by rfl

theorem table893_entry036 :
    matchingVariables coloring893 36 = table893 36 := by rfl

theorem table893_entry037 :
    matchingVariables coloring893 37 = table893 37 := by rfl

theorem table893_entry038 :
    matchingVariables coloring893 38 = table893 38 := by rfl

theorem table893_entry039 :
    matchingVariables coloring893 39 = table893 39 := by rfl

theorem table893_entry040 :
    matchingVariables coloring893 40 = table893 40 := by rfl

theorem table893_entry041 :
    matchingVariables coloring893 41 = table893 41 := by rfl

theorem table893_entry042 :
    matchingVariables coloring893 42 = table893 42 := by rfl

theorem table893_entry043 :
    matchingVariables coloring893 43 = table893 43 := by rfl

theorem table893_entry044 :
    matchingVariables coloring893 44 = table893 44 := by rfl

theorem table893_entry045 :
    matchingVariables coloring893 45 = table893 45 := by rfl

theorem table893_entry046 :
    matchingVariables coloring893 46 = table893 46 := by rfl

theorem table893_entry047 :
    matchingVariables coloring893 47 = table893 47 := by rfl

theorem table893_entry048 :
    matchingVariables coloring893 48 = table893 48 := by rfl

theorem table893_entry049 :
    matchingVariables coloring893 49 = table893 49 := by rfl

theorem table893_entry050 :
    matchingVariables coloring893 50 = table893 50 := by rfl

theorem table893_entry051 :
    matchingVariables coloring893 51 = table893 51 := by rfl

theorem table893_entry052 :
    matchingVariables coloring893 52 = table893 52 := by rfl

theorem table893_entry053 :
    matchingVariables coloring893 53 = table893 53 := by rfl

theorem table893_entry054 :
    matchingVariables coloring893 54 = table893 54 := by rfl

theorem table893_entry055 :
    matchingVariables coloring893 55 = table893 55 := by rfl

theorem table893_entry056 :
    matchingVariables coloring893 56 = table893 56 := by rfl

theorem table893_entry057 :
    matchingVariables coloring893 57 = table893 57 := by rfl

theorem table893_entry058 :
    matchingVariables coloring893 58 = table893 58 := by rfl

theorem table893_entry059 :
    matchingVariables coloring893 59 = table893 59 := by rfl

theorem table893_entry060 :
    matchingVariables coloring893 60 = table893 60 := by rfl

theorem table893_entry061 :
    matchingVariables coloring893 61 = table893 61 := by rfl

theorem table893_entry062 :
    matchingVariables coloring893 62 = table893 62 := by rfl

theorem table893_entry063 :
    matchingVariables coloring893 63 = table893 63 := by rfl

theorem table893_entry064 :
    matchingVariables coloring893 64 = table893 64 := by rfl

theorem table893_entry065 :
    matchingVariables coloring893 65 = table893 65 := by rfl

theorem table893_entry066 :
    matchingVariables coloring893 66 = table893 66 := by rfl

theorem table893_entry067 :
    matchingVariables coloring893 67 = table893 67 := by rfl

theorem table893_entry068 :
    matchingVariables coloring893 68 = table893 68 := by rfl

theorem table893_entry069 :
    matchingVariables coloring893 69 = table893 69 := by rfl

theorem table893_entry070 :
    matchingVariables coloring893 70 = table893 70 := by rfl

theorem table893_entry071 :
    matchingVariables coloring893 71 = table893 71 := by rfl

theorem table893_entry072 :
    matchingVariables coloring893 72 = table893 72 := by rfl

theorem table893_entry073 :
    matchingVariables coloring893 73 = table893 73 := by rfl

theorem table893_entry074 :
    matchingVariables coloring893 74 = table893 74 := by rfl

theorem table893_entry075 :
    matchingVariables coloring893 75 = table893 75 := by rfl

theorem table893_entry076 :
    matchingVariables coloring893 76 = table893 76 := by rfl

theorem table893_entry077 :
    matchingVariables coloring893 77 = table893 77 := by rfl

theorem table893_entry078 :
    matchingVariables coloring893 78 = table893 78 := by rfl

theorem table893_entry079 :
    matchingVariables coloring893 79 = table893 79 := by rfl

theorem table893_entry080 :
    matchingVariables coloring893 80 = table893 80 := by rfl

theorem table893_entry081 :
    matchingVariables coloring893 81 = table893 81 := by rfl

theorem table893_entry082 :
    matchingVariables coloring893 82 = table893 82 := by rfl

theorem table893_entry083 :
    matchingVariables coloring893 83 = table893 83 := by rfl

theorem table893_entry084 :
    matchingVariables coloring893 84 = table893 84 := by rfl

theorem table893_entry085 :
    matchingVariables coloring893 85 = table893 85 := by rfl

theorem table893_entry086 :
    matchingVariables coloring893 86 = table893 86 := by rfl

theorem table893_entry087 :
    matchingVariables coloring893 87 = table893 87 := by rfl

theorem table893_entry088 :
    matchingVariables coloring893 88 = table893 88 := by rfl

theorem table893_entry089 :
    matchingVariables coloring893 89 = table893 89 := by rfl

theorem table893_entry090 :
    matchingVariables coloring893 90 = table893 90 := by rfl

theorem table893_entry091 :
    matchingVariables coloring893 91 = table893 91 := by rfl

theorem table893_entry092 :
    matchingVariables coloring893 92 = table893 92 := by rfl

theorem table893_entry093 :
    matchingVariables coloring893 93 = table893 93 := by rfl

theorem table893_entry094 :
    matchingVariables coloring893 94 = table893 94 := by rfl

theorem table893_entry095 :
    matchingVariables coloring893 95 = table893 95 := by rfl

theorem table893_entry096 :
    matchingVariables coloring893 96 = table893 96 := by rfl

theorem table893_entry097 :
    matchingVariables coloring893 97 = table893 97 := by rfl

theorem table893_entry098 :
    matchingVariables coloring893 98 = table893 98 := by rfl

theorem table893_entry099 :
    matchingVariables coloring893 99 = table893 99 := by rfl

theorem table893_entry100 :
    matchingVariables coloring893 100 = table893 100 := by rfl

theorem table893_entry101 :
    matchingVariables coloring893 101 = table893 101 := by rfl

theorem table893_entry102 :
    matchingVariables coloring893 102 = table893 102 := by rfl

theorem table893_entry103 :
    matchingVariables coloring893 103 = table893 103 := by rfl

theorem table893_entry104 :
    matchingVariables coloring893 104 = table893 104 := by rfl

theorem table893_complete : ∀ m, matchingVariables coloring893 m = table893 m := by
  intro m
  fin_cases m
  · exact table893_entry000
  · exact table893_entry001
  · exact table893_entry002
  · exact table893_entry003
  · exact table893_entry004
  · exact table893_entry005
  · exact table893_entry006
  · exact table893_entry007
  · exact table893_entry008
  · exact table893_entry009
  · exact table893_entry010
  · exact table893_entry011
  · exact table893_entry012
  · exact table893_entry013
  · exact table893_entry014
  · exact table893_entry015
  · exact table893_entry016
  · exact table893_entry017
  · exact table893_entry018
  · exact table893_entry019
  · exact table893_entry020
  · exact table893_entry021
  · exact table893_entry022
  · exact table893_entry023
  · exact table893_entry024
  · exact table893_entry025
  · exact table893_entry026
  · exact table893_entry027
  · exact table893_entry028
  · exact table893_entry029
  · exact table893_entry030
  · exact table893_entry031
  · exact table893_entry032
  · exact table893_entry033
  · exact table893_entry034
  · exact table893_entry035
  · exact table893_entry036
  · exact table893_entry037
  · exact table893_entry038
  · exact table893_entry039
  · exact table893_entry040
  · exact table893_entry041
  · exact table893_entry042
  · exact table893_entry043
  · exact table893_entry044
  · exact table893_entry045
  · exact table893_entry046
  · exact table893_entry047
  · exact table893_entry048
  · exact table893_entry049
  · exact table893_entry050
  · exact table893_entry051
  · exact table893_entry052
  · exact table893_entry053
  · exact table893_entry054
  · exact table893_entry055
  · exact table893_entry056
  · exact table893_entry057
  · exact table893_entry058
  · exact table893_entry059
  · exact table893_entry060
  · exact table893_entry061
  · exact table893_entry062
  · exact table893_entry063
  · exact table893_entry064
  · exact table893_entry065
  · exact table893_entry066
  · exact table893_entry067
  · exact table893_entry068
  · exact table893_entry069
  · exact table893_entry070
  · exact table893_entry071
  · exact table893_entry072
  · exact table893_entry073
  · exact table893_entry074
  · exact table893_entry075
  · exact table893_entry076
  · exact table893_entry077
  · exact table893_entry078
  · exact table893_entry079
  · exact table893_entry080
  · exact table893_entry081
  · exact table893_entry082
  · exact table893_entry083
  · exact table893_entry084
  · exact table893_entry085
  · exact table893_entry086
  · exact table893_entry087
  · exact table893_entry088
  · exact table893_entry089
  · exact table893_entry090
  · exact table893_entry091
  · exact table893_entry092
  · exact table893_entry093
  · exact table893_entry094
  · exact table893_entry095
  · exact table893_entry096
  · exact table893_entry097
  · exact table893_entry098
  · exact table893_entry099
  · exact table893_entry100
  · exact table893_entry101
  · exact table893_entry102
  · exact table893_entry103
  · exact table893_entry104

#print axioms table893_complete

def expanded893 : Polynomial 143 := [(1, exponentOfVariables [6, 57, 104, 137]),
  (1, exponentOfVariables [6, 69, 84, 137]),
  (1, exponentOfVariables [15, 38, 84, 137]),
  (1, exponentOfVariables [15, 48, 84, 125]),
  (1, exponentOfVariables [15, 48, 91, 121]),
  (1, exponentOfVariables [24, 48, 69, 121])]

theorem table893_expanded : tablePolynomial table893 = expanded893 := by
  rfl

theorem table893_exponent00 :
    exponentOfVariables (n := 143) [6, 57, 104, 137] =
      (fun i => if i.val = 6 then (1) else if i.val = 57 then (1) else if i.val = 104 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table893_exponent01 :
    exponentOfVariables (n := 143) [6, 69, 84, 137] =
      (fun i => if i.val = 6 then (1) else if i.val = 69 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table893_exponent02 :
    exponentOfVariables (n := 143) [15, 38, 84, 137] =
      (fun i => if i.val = 15 then (1) else if i.val = 38 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table893_exponent03 :
    exponentOfVariables (n := 143) [15, 48, 84, 125] =
      (fun i => if i.val = 15 then (1) else if i.val = 48 then (1) else if i.val = 84 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table893_exponent04 :
    exponentOfVariables (n := 143) [15, 48, 91, 121] =
      (fun i => if i.val = 15 then (1) else if i.val = 48 then (1) else if i.val = 91 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table893_exponent05 :
    exponentOfVariables (n := 143) [24, 48, 69, 121] =
      (fun i => if i.val = 24 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table893_polynomial : expanded893 = amplitude893 := by
  simp only [expanded893, amplitude893, table893_exponent00, table893_exponent01, table893_exponent02, table893_exponent03, table893_exponent04, table893_exponent05]

theorem premiseCheck142 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude893)) p142 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
