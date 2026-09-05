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

def coloring909 : Fin 8 → Fin 3 := ![0, 0, 2, 0, 2, 0, 1, 0]

def table909 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 63, 104, 137] else
    if m.val = 6 then some [0, 75, 84, 137] else
    if m.val = 21 then some [11, 38, 84, 137] else
    if m.val = 24 then some [11, 48, 84, 125] else
    if m.val = 25 then some [11, 48, 91, 121] else
    if m.val = 40 then some [18, 48, 75, 121] else none

theorem table909_entry000 :
    matchingVariables coloring909 0 = table909 0 := by rfl

theorem table909_entry001 :
    matchingVariables coloring909 1 = table909 1 := by rfl

theorem table909_entry002 :
    matchingVariables coloring909 2 = table909 2 := by rfl

theorem table909_entry003 :
    matchingVariables coloring909 3 = table909 3 := by rfl

theorem table909_entry004 :
    matchingVariables coloring909 4 = table909 4 := by rfl

theorem table909_entry005 :
    matchingVariables coloring909 5 = table909 5 := by rfl

theorem table909_entry006 :
    matchingVariables coloring909 6 = table909 6 := by rfl

theorem table909_entry007 :
    matchingVariables coloring909 7 = table909 7 := by rfl

theorem table909_entry008 :
    matchingVariables coloring909 8 = table909 8 := by rfl

theorem table909_entry009 :
    matchingVariables coloring909 9 = table909 9 := by rfl

theorem table909_entry010 :
    matchingVariables coloring909 10 = table909 10 := by rfl

theorem table909_entry011 :
    matchingVariables coloring909 11 = table909 11 := by rfl

theorem table909_entry012 :
    matchingVariables coloring909 12 = table909 12 := by rfl

theorem table909_entry013 :
    matchingVariables coloring909 13 = table909 13 := by rfl

theorem table909_entry014 :
    matchingVariables coloring909 14 = table909 14 := by rfl

theorem table909_entry015 :
    matchingVariables coloring909 15 = table909 15 := by rfl

theorem table909_entry016 :
    matchingVariables coloring909 16 = table909 16 := by rfl

theorem table909_entry017 :
    matchingVariables coloring909 17 = table909 17 := by rfl

theorem table909_entry018 :
    matchingVariables coloring909 18 = table909 18 := by rfl

theorem table909_entry019 :
    matchingVariables coloring909 19 = table909 19 := by rfl

theorem table909_entry020 :
    matchingVariables coloring909 20 = table909 20 := by rfl

theorem table909_entry021 :
    matchingVariables coloring909 21 = table909 21 := by rfl

theorem table909_entry022 :
    matchingVariables coloring909 22 = table909 22 := by rfl

theorem table909_entry023 :
    matchingVariables coloring909 23 = table909 23 := by rfl

theorem table909_entry024 :
    matchingVariables coloring909 24 = table909 24 := by rfl

theorem table909_entry025 :
    matchingVariables coloring909 25 = table909 25 := by rfl

theorem table909_entry026 :
    matchingVariables coloring909 26 = table909 26 := by rfl

theorem table909_entry027 :
    matchingVariables coloring909 27 = table909 27 := by rfl

theorem table909_entry028 :
    matchingVariables coloring909 28 = table909 28 := by rfl

theorem table909_entry029 :
    matchingVariables coloring909 29 = table909 29 := by rfl

theorem table909_entry030 :
    matchingVariables coloring909 30 = table909 30 := by rfl

theorem table909_entry031 :
    matchingVariables coloring909 31 = table909 31 := by rfl

theorem table909_entry032 :
    matchingVariables coloring909 32 = table909 32 := by rfl

theorem table909_entry033 :
    matchingVariables coloring909 33 = table909 33 := by rfl

theorem table909_entry034 :
    matchingVariables coloring909 34 = table909 34 := by rfl

theorem table909_entry035 :
    matchingVariables coloring909 35 = table909 35 := by rfl

theorem table909_entry036 :
    matchingVariables coloring909 36 = table909 36 := by rfl

theorem table909_entry037 :
    matchingVariables coloring909 37 = table909 37 := by rfl

theorem table909_entry038 :
    matchingVariables coloring909 38 = table909 38 := by rfl

theorem table909_entry039 :
    matchingVariables coloring909 39 = table909 39 := by rfl

theorem table909_entry040 :
    matchingVariables coloring909 40 = table909 40 := by rfl

theorem table909_entry041 :
    matchingVariables coloring909 41 = table909 41 := by rfl

theorem table909_entry042 :
    matchingVariables coloring909 42 = table909 42 := by rfl

theorem table909_entry043 :
    matchingVariables coloring909 43 = table909 43 := by rfl

theorem table909_entry044 :
    matchingVariables coloring909 44 = table909 44 := by rfl

theorem table909_entry045 :
    matchingVariables coloring909 45 = table909 45 := by rfl

theorem table909_entry046 :
    matchingVariables coloring909 46 = table909 46 := by rfl

theorem table909_entry047 :
    matchingVariables coloring909 47 = table909 47 := by rfl

theorem table909_entry048 :
    matchingVariables coloring909 48 = table909 48 := by rfl

theorem table909_entry049 :
    matchingVariables coloring909 49 = table909 49 := by rfl

theorem table909_entry050 :
    matchingVariables coloring909 50 = table909 50 := by rfl

theorem table909_entry051 :
    matchingVariables coloring909 51 = table909 51 := by rfl

theorem table909_entry052 :
    matchingVariables coloring909 52 = table909 52 := by rfl

theorem table909_entry053 :
    matchingVariables coloring909 53 = table909 53 := by rfl

theorem table909_entry054 :
    matchingVariables coloring909 54 = table909 54 := by rfl

theorem table909_entry055 :
    matchingVariables coloring909 55 = table909 55 := by rfl

theorem table909_entry056 :
    matchingVariables coloring909 56 = table909 56 := by rfl

theorem table909_entry057 :
    matchingVariables coloring909 57 = table909 57 := by rfl

theorem table909_entry058 :
    matchingVariables coloring909 58 = table909 58 := by rfl

theorem table909_entry059 :
    matchingVariables coloring909 59 = table909 59 := by rfl

theorem table909_entry060 :
    matchingVariables coloring909 60 = table909 60 := by rfl

theorem table909_entry061 :
    matchingVariables coloring909 61 = table909 61 := by rfl

theorem table909_entry062 :
    matchingVariables coloring909 62 = table909 62 := by rfl

theorem table909_entry063 :
    matchingVariables coloring909 63 = table909 63 := by rfl

theorem table909_entry064 :
    matchingVariables coloring909 64 = table909 64 := by rfl

theorem table909_entry065 :
    matchingVariables coloring909 65 = table909 65 := by rfl

theorem table909_entry066 :
    matchingVariables coloring909 66 = table909 66 := by rfl

theorem table909_entry067 :
    matchingVariables coloring909 67 = table909 67 := by rfl

theorem table909_entry068 :
    matchingVariables coloring909 68 = table909 68 := by rfl

theorem table909_entry069 :
    matchingVariables coloring909 69 = table909 69 := by rfl

theorem table909_entry070 :
    matchingVariables coloring909 70 = table909 70 := by rfl

theorem table909_entry071 :
    matchingVariables coloring909 71 = table909 71 := by rfl

theorem table909_entry072 :
    matchingVariables coloring909 72 = table909 72 := by rfl

theorem table909_entry073 :
    matchingVariables coloring909 73 = table909 73 := by rfl

theorem table909_entry074 :
    matchingVariables coloring909 74 = table909 74 := by rfl

theorem table909_entry075 :
    matchingVariables coloring909 75 = table909 75 := by rfl

theorem table909_entry076 :
    matchingVariables coloring909 76 = table909 76 := by rfl

theorem table909_entry077 :
    matchingVariables coloring909 77 = table909 77 := by rfl

theorem table909_entry078 :
    matchingVariables coloring909 78 = table909 78 := by rfl

theorem table909_entry079 :
    matchingVariables coloring909 79 = table909 79 := by rfl

theorem table909_entry080 :
    matchingVariables coloring909 80 = table909 80 := by rfl

theorem table909_entry081 :
    matchingVariables coloring909 81 = table909 81 := by rfl

theorem table909_entry082 :
    matchingVariables coloring909 82 = table909 82 := by rfl

theorem table909_entry083 :
    matchingVariables coloring909 83 = table909 83 := by rfl

theorem table909_entry084 :
    matchingVariables coloring909 84 = table909 84 := by rfl

theorem table909_entry085 :
    matchingVariables coloring909 85 = table909 85 := by rfl

theorem table909_entry086 :
    matchingVariables coloring909 86 = table909 86 := by rfl

theorem table909_entry087 :
    matchingVariables coloring909 87 = table909 87 := by rfl

theorem table909_entry088 :
    matchingVariables coloring909 88 = table909 88 := by rfl

theorem table909_entry089 :
    matchingVariables coloring909 89 = table909 89 := by rfl

theorem table909_entry090 :
    matchingVariables coloring909 90 = table909 90 := by rfl

theorem table909_entry091 :
    matchingVariables coloring909 91 = table909 91 := by rfl

theorem table909_entry092 :
    matchingVariables coloring909 92 = table909 92 := by rfl

theorem table909_entry093 :
    matchingVariables coloring909 93 = table909 93 := by rfl

theorem table909_entry094 :
    matchingVariables coloring909 94 = table909 94 := by rfl

theorem table909_entry095 :
    matchingVariables coloring909 95 = table909 95 := by rfl

theorem table909_entry096 :
    matchingVariables coloring909 96 = table909 96 := by rfl

theorem table909_entry097 :
    matchingVariables coloring909 97 = table909 97 := by rfl

theorem table909_entry098 :
    matchingVariables coloring909 98 = table909 98 := by rfl

theorem table909_entry099 :
    matchingVariables coloring909 99 = table909 99 := by rfl

theorem table909_entry100 :
    matchingVariables coloring909 100 = table909 100 := by rfl

theorem table909_entry101 :
    matchingVariables coloring909 101 = table909 101 := by rfl

theorem table909_entry102 :
    matchingVariables coloring909 102 = table909 102 := by rfl

theorem table909_entry103 :
    matchingVariables coloring909 103 = table909 103 := by rfl

theorem table909_entry104 :
    matchingVariables coloring909 104 = table909 104 := by rfl

theorem table909_complete : ∀ m, matchingVariables coloring909 m = table909 m := by
  intro m
  fin_cases m
  · exact table909_entry000
  · exact table909_entry001
  · exact table909_entry002
  · exact table909_entry003
  · exact table909_entry004
  · exact table909_entry005
  · exact table909_entry006
  · exact table909_entry007
  · exact table909_entry008
  · exact table909_entry009
  · exact table909_entry010
  · exact table909_entry011
  · exact table909_entry012
  · exact table909_entry013
  · exact table909_entry014
  · exact table909_entry015
  · exact table909_entry016
  · exact table909_entry017
  · exact table909_entry018
  · exact table909_entry019
  · exact table909_entry020
  · exact table909_entry021
  · exact table909_entry022
  · exact table909_entry023
  · exact table909_entry024
  · exact table909_entry025
  · exact table909_entry026
  · exact table909_entry027
  · exact table909_entry028
  · exact table909_entry029
  · exact table909_entry030
  · exact table909_entry031
  · exact table909_entry032
  · exact table909_entry033
  · exact table909_entry034
  · exact table909_entry035
  · exact table909_entry036
  · exact table909_entry037
  · exact table909_entry038
  · exact table909_entry039
  · exact table909_entry040
  · exact table909_entry041
  · exact table909_entry042
  · exact table909_entry043
  · exact table909_entry044
  · exact table909_entry045
  · exact table909_entry046
  · exact table909_entry047
  · exact table909_entry048
  · exact table909_entry049
  · exact table909_entry050
  · exact table909_entry051
  · exact table909_entry052
  · exact table909_entry053
  · exact table909_entry054
  · exact table909_entry055
  · exact table909_entry056
  · exact table909_entry057
  · exact table909_entry058
  · exact table909_entry059
  · exact table909_entry060
  · exact table909_entry061
  · exact table909_entry062
  · exact table909_entry063
  · exact table909_entry064
  · exact table909_entry065
  · exact table909_entry066
  · exact table909_entry067
  · exact table909_entry068
  · exact table909_entry069
  · exact table909_entry070
  · exact table909_entry071
  · exact table909_entry072
  · exact table909_entry073
  · exact table909_entry074
  · exact table909_entry075
  · exact table909_entry076
  · exact table909_entry077
  · exact table909_entry078
  · exact table909_entry079
  · exact table909_entry080
  · exact table909_entry081
  · exact table909_entry082
  · exact table909_entry083
  · exact table909_entry084
  · exact table909_entry085
  · exact table909_entry086
  · exact table909_entry087
  · exact table909_entry088
  · exact table909_entry089
  · exact table909_entry090
  · exact table909_entry091
  · exact table909_entry092
  · exact table909_entry093
  · exact table909_entry094
  · exact table909_entry095
  · exact table909_entry096
  · exact table909_entry097
  · exact table909_entry098
  · exact table909_entry099
  · exact table909_entry100
  · exact table909_entry101
  · exact table909_entry102
  · exact table909_entry103
  · exact table909_entry104

#print axioms table909_complete

def expanded909 : Polynomial 143 := [(1, exponentOfVariables [0, 63, 104, 137]),
  (1, exponentOfVariables [0, 75, 84, 137]),
  (1, exponentOfVariables [11, 38, 84, 137]),
  (1, exponentOfVariables [11, 48, 84, 125]),
  (1, exponentOfVariables [11, 48, 91, 121]),
  (1, exponentOfVariables [18, 48, 75, 121])]

theorem table909_expanded : tablePolynomial table909 = expanded909 := by
  rfl

theorem table909_exponent00 :
    exponentOfVariables (n := 143) [0, 63, 104, 137] =
      (fun i => if i.val = 0 then (1) else if i.val = 63 then (1) else if i.val = 104 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table909_exponent01 :
    exponentOfVariables (n := 143) [0, 75, 84, 137] =
      (fun i => if i.val = 0 then (1) else if i.val = 75 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table909_exponent02 :
    exponentOfVariables (n := 143) [11, 38, 84, 137] =
      (fun i => if i.val = 11 then (1) else if i.val = 38 then (1) else if i.val = 84 then (1) else if i.val = 137 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table909_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 84, 125] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 84 then (1) else if i.val = 125 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table909_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 91, 121] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 91 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table909_exponent05 :
    exponentOfVariables (n := 143) [18, 48, 75, 121] =
      (fun i => if i.val = 18 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 121 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table909_polynomial : expanded909 = amplitude909 := by
  simp only [expanded909, amplitude909, table909_exponent00, table909_exponent01, table909_exponent02, table909_exponent03, table909_exponent04, table909_exponent05]

theorem premiseCheck007 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude909)) p007 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
