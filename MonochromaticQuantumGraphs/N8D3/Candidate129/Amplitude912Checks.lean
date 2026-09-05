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

def coloring912 : Fin 8 → Fin 3 := ![0, 1, 2, 0, 2, 0, 1, 0]

def table912 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [1, 63, 104, 137] else
    if m.val = 6 then some [1, 75, 84, 137] else
    if m.val = 21 then some [11, 41, 84, 137] else
    if m.val = 24 then some [11, 51, 84, 125] else
    if m.val = 25 then some [11, 51, 91, 121] else
    if m.val = 40 then some [18, 51, 75, 121] else none

theorem table912_entry000 :
    matchingVariables coloring912 0 = table912 0 := by rfl

theorem table912_entry001 :
    matchingVariables coloring912 1 = table912 1 := by rfl

theorem table912_entry002 :
    matchingVariables coloring912 2 = table912 2 := by rfl

theorem table912_entry003 :
    matchingVariables coloring912 3 = table912 3 := by rfl

theorem table912_entry004 :
    matchingVariables coloring912 4 = table912 4 := by rfl

theorem table912_entry005 :
    matchingVariables coloring912 5 = table912 5 := by rfl

theorem table912_entry006 :
    matchingVariables coloring912 6 = table912 6 := by rfl

theorem table912_entry007 :
    matchingVariables coloring912 7 = table912 7 := by rfl

theorem table912_entry008 :
    matchingVariables coloring912 8 = table912 8 := by rfl

theorem table912_entry009 :
    matchingVariables coloring912 9 = table912 9 := by rfl

theorem table912_entry010 :
    matchingVariables coloring912 10 = table912 10 := by rfl

theorem table912_entry011 :
    matchingVariables coloring912 11 = table912 11 := by rfl

theorem table912_entry012 :
    matchingVariables coloring912 12 = table912 12 := by rfl

theorem table912_entry013 :
    matchingVariables coloring912 13 = table912 13 := by rfl

theorem table912_entry014 :
    matchingVariables coloring912 14 = table912 14 := by rfl

theorem table912_entry015 :
    matchingVariables coloring912 15 = table912 15 := by rfl

theorem table912_entry016 :
    matchingVariables coloring912 16 = table912 16 := by rfl

theorem table912_entry017 :
    matchingVariables coloring912 17 = table912 17 := by rfl

theorem table912_entry018 :
    matchingVariables coloring912 18 = table912 18 := by rfl

theorem table912_entry019 :
    matchingVariables coloring912 19 = table912 19 := by rfl

theorem table912_entry020 :
    matchingVariables coloring912 20 = table912 20 := by rfl

theorem table912_entry021 :
    matchingVariables coloring912 21 = table912 21 := by rfl

theorem table912_entry022 :
    matchingVariables coloring912 22 = table912 22 := by rfl

theorem table912_entry023 :
    matchingVariables coloring912 23 = table912 23 := by rfl

theorem table912_entry024 :
    matchingVariables coloring912 24 = table912 24 := by rfl

theorem table912_entry025 :
    matchingVariables coloring912 25 = table912 25 := by rfl

theorem table912_entry026 :
    matchingVariables coloring912 26 = table912 26 := by rfl

theorem table912_entry027 :
    matchingVariables coloring912 27 = table912 27 := by rfl

theorem table912_entry028 :
    matchingVariables coloring912 28 = table912 28 := by rfl

theorem table912_entry029 :
    matchingVariables coloring912 29 = table912 29 := by rfl

theorem table912_entry030 :
    matchingVariables coloring912 30 = table912 30 := by rfl

theorem table912_entry031 :
    matchingVariables coloring912 31 = table912 31 := by rfl

theorem table912_entry032 :
    matchingVariables coloring912 32 = table912 32 := by rfl

theorem table912_entry033 :
    matchingVariables coloring912 33 = table912 33 := by rfl

theorem table912_entry034 :
    matchingVariables coloring912 34 = table912 34 := by rfl

theorem table912_entry035 :
    matchingVariables coloring912 35 = table912 35 := by rfl

theorem table912_entry036 :
    matchingVariables coloring912 36 = table912 36 := by rfl

theorem table912_entry037 :
    matchingVariables coloring912 37 = table912 37 := by rfl

theorem table912_entry038 :
    matchingVariables coloring912 38 = table912 38 := by rfl

theorem table912_entry039 :
    matchingVariables coloring912 39 = table912 39 := by rfl

theorem table912_entry040 :
    matchingVariables coloring912 40 = table912 40 := by rfl

theorem table912_entry041 :
    matchingVariables coloring912 41 = table912 41 := by rfl

theorem table912_entry042 :
    matchingVariables coloring912 42 = table912 42 := by rfl

theorem table912_entry043 :
    matchingVariables coloring912 43 = table912 43 := by rfl

theorem table912_entry044 :
    matchingVariables coloring912 44 = table912 44 := by rfl

theorem table912_entry045 :
    matchingVariables coloring912 45 = table912 45 := by rfl

theorem table912_entry046 :
    matchingVariables coloring912 46 = table912 46 := by rfl

theorem table912_entry047 :
    matchingVariables coloring912 47 = table912 47 := by rfl

theorem table912_entry048 :
    matchingVariables coloring912 48 = table912 48 := by rfl

theorem table912_entry049 :
    matchingVariables coloring912 49 = table912 49 := by rfl

theorem table912_entry050 :
    matchingVariables coloring912 50 = table912 50 := by rfl

theorem table912_entry051 :
    matchingVariables coloring912 51 = table912 51 := by rfl

theorem table912_entry052 :
    matchingVariables coloring912 52 = table912 52 := by rfl

theorem table912_entry053 :
    matchingVariables coloring912 53 = table912 53 := by rfl

theorem table912_entry054 :
    matchingVariables coloring912 54 = table912 54 := by rfl

theorem table912_entry055 :
    matchingVariables coloring912 55 = table912 55 := by rfl

theorem table912_entry056 :
    matchingVariables coloring912 56 = table912 56 := by rfl

theorem table912_entry057 :
    matchingVariables coloring912 57 = table912 57 := by rfl

theorem table912_entry058 :
    matchingVariables coloring912 58 = table912 58 := by rfl

theorem table912_entry059 :
    matchingVariables coloring912 59 = table912 59 := by rfl

theorem table912_entry060 :
    matchingVariables coloring912 60 = table912 60 := by rfl

theorem table912_entry061 :
    matchingVariables coloring912 61 = table912 61 := by rfl

theorem table912_entry062 :
    matchingVariables coloring912 62 = table912 62 := by rfl

theorem table912_entry063 :
    matchingVariables coloring912 63 = table912 63 := by rfl

theorem table912_entry064 :
    matchingVariables coloring912 64 = table912 64 := by rfl

theorem table912_entry065 :
    matchingVariables coloring912 65 = table912 65 := by rfl

theorem table912_entry066 :
    matchingVariables coloring912 66 = table912 66 := by rfl

theorem table912_entry067 :
    matchingVariables coloring912 67 = table912 67 := by rfl

theorem table912_entry068 :
    matchingVariables coloring912 68 = table912 68 := by rfl

theorem table912_entry069 :
    matchingVariables coloring912 69 = table912 69 := by rfl

theorem table912_entry070 :
    matchingVariables coloring912 70 = table912 70 := by rfl

theorem table912_entry071 :
    matchingVariables coloring912 71 = table912 71 := by rfl

theorem table912_entry072 :
    matchingVariables coloring912 72 = table912 72 := by rfl

theorem table912_entry073 :
    matchingVariables coloring912 73 = table912 73 := by rfl

theorem table912_entry074 :
    matchingVariables coloring912 74 = table912 74 := by rfl

theorem table912_entry075 :
    matchingVariables coloring912 75 = table912 75 := by rfl

theorem table912_entry076 :
    matchingVariables coloring912 76 = table912 76 := by rfl

theorem table912_entry077 :
    matchingVariables coloring912 77 = table912 77 := by rfl

theorem table912_entry078 :
    matchingVariables coloring912 78 = table912 78 := by rfl

theorem table912_entry079 :
    matchingVariables coloring912 79 = table912 79 := by rfl

theorem table912_entry080 :
    matchingVariables coloring912 80 = table912 80 := by rfl

theorem table912_entry081 :
    matchingVariables coloring912 81 = table912 81 := by rfl

theorem table912_entry082 :
    matchingVariables coloring912 82 = table912 82 := by rfl

theorem table912_entry083 :
    matchingVariables coloring912 83 = table912 83 := by rfl

theorem table912_entry084 :
    matchingVariables coloring912 84 = table912 84 := by rfl

theorem table912_entry085 :
    matchingVariables coloring912 85 = table912 85 := by rfl

theorem table912_entry086 :
    matchingVariables coloring912 86 = table912 86 := by rfl

theorem table912_entry087 :
    matchingVariables coloring912 87 = table912 87 := by rfl

theorem table912_entry088 :
    matchingVariables coloring912 88 = table912 88 := by rfl

theorem table912_entry089 :
    matchingVariables coloring912 89 = table912 89 := by rfl

theorem table912_entry090 :
    matchingVariables coloring912 90 = table912 90 := by rfl

theorem table912_entry091 :
    matchingVariables coloring912 91 = table912 91 := by rfl

theorem table912_entry092 :
    matchingVariables coloring912 92 = table912 92 := by rfl

theorem table912_entry093 :
    matchingVariables coloring912 93 = table912 93 := by rfl

theorem table912_entry094 :
    matchingVariables coloring912 94 = table912 94 := by rfl

theorem table912_entry095 :
    matchingVariables coloring912 95 = table912 95 := by rfl

theorem table912_entry096 :
    matchingVariables coloring912 96 = table912 96 := by rfl

theorem table912_entry097 :
    matchingVariables coloring912 97 = table912 97 := by rfl

theorem table912_entry098 :
    matchingVariables coloring912 98 = table912 98 := by rfl

theorem table912_entry099 :
    matchingVariables coloring912 99 = table912 99 := by rfl

theorem table912_entry100 :
    matchingVariables coloring912 100 = table912 100 := by rfl

theorem table912_entry101 :
    matchingVariables coloring912 101 = table912 101 := by rfl

theorem table912_entry102 :
    matchingVariables coloring912 102 = table912 102 := by rfl

theorem table912_entry103 :
    matchingVariables coloring912 103 = table912 103 := by rfl

theorem table912_entry104 :
    matchingVariables coloring912 104 = table912 104 := by rfl

theorem table912_complete : ∀ m, matchingVariables coloring912 m = table912 m := by
  intro m
  fin_cases m
  · exact table912_entry000
  · exact table912_entry001
  · exact table912_entry002
  · exact table912_entry003
  · exact table912_entry004
  · exact table912_entry005
  · exact table912_entry006
  · exact table912_entry007
  · exact table912_entry008
  · exact table912_entry009
  · exact table912_entry010
  · exact table912_entry011
  · exact table912_entry012
  · exact table912_entry013
  · exact table912_entry014
  · exact table912_entry015
  · exact table912_entry016
  · exact table912_entry017
  · exact table912_entry018
  · exact table912_entry019
  · exact table912_entry020
  · exact table912_entry021
  · exact table912_entry022
  · exact table912_entry023
  · exact table912_entry024
  · exact table912_entry025
  · exact table912_entry026
  · exact table912_entry027
  · exact table912_entry028
  · exact table912_entry029
  · exact table912_entry030
  · exact table912_entry031
  · exact table912_entry032
  · exact table912_entry033
  · exact table912_entry034
  · exact table912_entry035
  · exact table912_entry036
  · exact table912_entry037
  · exact table912_entry038
  · exact table912_entry039
  · exact table912_entry040
  · exact table912_entry041
  · exact table912_entry042
  · exact table912_entry043
  · exact table912_entry044
  · exact table912_entry045
  · exact table912_entry046
  · exact table912_entry047
  · exact table912_entry048
  · exact table912_entry049
  · exact table912_entry050
  · exact table912_entry051
  · exact table912_entry052
  · exact table912_entry053
  · exact table912_entry054
  · exact table912_entry055
  · exact table912_entry056
  · exact table912_entry057
  · exact table912_entry058
  · exact table912_entry059
  · exact table912_entry060
  · exact table912_entry061
  · exact table912_entry062
  · exact table912_entry063
  · exact table912_entry064
  · exact table912_entry065
  · exact table912_entry066
  · exact table912_entry067
  · exact table912_entry068
  · exact table912_entry069
  · exact table912_entry070
  · exact table912_entry071
  · exact table912_entry072
  · exact table912_entry073
  · exact table912_entry074
  · exact table912_entry075
  · exact table912_entry076
  · exact table912_entry077
  · exact table912_entry078
  · exact table912_entry079
  · exact table912_entry080
  · exact table912_entry081
  · exact table912_entry082
  · exact table912_entry083
  · exact table912_entry084
  · exact table912_entry085
  · exact table912_entry086
  · exact table912_entry087
  · exact table912_entry088
  · exact table912_entry089
  · exact table912_entry090
  · exact table912_entry091
  · exact table912_entry092
  · exact table912_entry093
  · exact table912_entry094
  · exact table912_entry095
  · exact table912_entry096
  · exact table912_entry097
  · exact table912_entry098
  · exact table912_entry099
  · exact table912_entry100
  · exact table912_entry101
  · exact table912_entry102
  · exact table912_entry103
  · exact table912_entry104

#print axioms table912_complete

def expanded912 : Polynomial 143 := [(1, exponentOfVariables [1, 63, 104, 137]),
  (1, exponentOfVariables [1, 75, 84, 137]),
  (1, exponentOfVariables [11, 41, 84, 137]),
  (1, exponentOfVariables [11, 51, 84, 125]),
  (1, exponentOfVariables [11, 51, 91, 121]),
  (1, exponentOfVariables [18, 51, 75, 121])]

theorem table912_expanded : tablePolynomial table912 = expanded912 := by
  rfl

theorem table912_exponent00 :
    exponentOfVariables (n := 143) [1, 63, 104, 137] =
      (fun i => if i.val = 1 then (1) else if i.val = 63 then (1) else if i.val = 104 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table912_exponent01 :
    exponentOfVariables (n := 143) [1, 75, 84, 137] =
      (fun i => if i.val = 1 then (1) else if i.val = 75 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table912_exponent02 :
    exponentOfVariables (n := 143) [11, 41, 84, 137] =
      (fun i => if i.val = 11 then (1) else if i.val = 41 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table912_exponent03 :
    exponentOfVariables (n := 143) [11, 51, 84, 125] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 84 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table912_exponent04 :
    exponentOfVariables (n := 143) [11, 51, 91, 121] =
      (fun i => if i.val = 11 then (1) else if i.val = 51 then (1) else if i.val = 91 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table912_exponent05 :
    exponentOfVariables (n := 143) [18, 51, 75, 121] =
      (fun i => if i.val = 18 then (1) else if i.val = 51 then (1) else if i.val = 75 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table912_polynomial : expanded912 = amplitude912 := by
  simp only [expanded912, amplitude912, table912_exponent00, table912_exponent01, table912_exponent02, table912_exponent03, table912_exponent04, table912_exponent05]

theorem premiseCheck008 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude912)) p008 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
