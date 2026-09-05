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

def coloring3582 : Fin 8 → Fin 3 := ![0, 0, 2, 0, 2, 2, 1, 1]

def table3582 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 63, 106, 138] else
    if m.val = 6 then some [0, 77, 84, 138] else
    if m.val = 21 then some [11, 40, 84, 138] else
    if m.val = 24 then some [11, 48, 84, 132] else
    if m.val = 25 then some [11, 48, 93, 122] else
    if m.val = 40 then some [18, 48, 77, 122] else none

theorem table3582_entry000 :
    matchingVariables coloring3582 0 = table3582 0 := by rfl

theorem table3582_entry001 :
    matchingVariables coloring3582 1 = table3582 1 := by rfl

theorem table3582_entry002 :
    matchingVariables coloring3582 2 = table3582 2 := by rfl

theorem table3582_entry003 :
    matchingVariables coloring3582 3 = table3582 3 := by rfl

theorem table3582_entry004 :
    matchingVariables coloring3582 4 = table3582 4 := by rfl

theorem table3582_entry005 :
    matchingVariables coloring3582 5 = table3582 5 := by rfl

theorem table3582_entry006 :
    matchingVariables coloring3582 6 = table3582 6 := by rfl

theorem table3582_entry007 :
    matchingVariables coloring3582 7 = table3582 7 := by rfl

theorem table3582_entry008 :
    matchingVariables coloring3582 8 = table3582 8 := by rfl

theorem table3582_entry009 :
    matchingVariables coloring3582 9 = table3582 9 := by rfl

theorem table3582_entry010 :
    matchingVariables coloring3582 10 = table3582 10 := by rfl

theorem table3582_entry011 :
    matchingVariables coloring3582 11 = table3582 11 := by rfl

theorem table3582_entry012 :
    matchingVariables coloring3582 12 = table3582 12 := by rfl

theorem table3582_entry013 :
    matchingVariables coloring3582 13 = table3582 13 := by rfl

theorem table3582_entry014 :
    matchingVariables coloring3582 14 = table3582 14 := by rfl

theorem table3582_entry015 :
    matchingVariables coloring3582 15 = table3582 15 := by rfl

theorem table3582_entry016 :
    matchingVariables coloring3582 16 = table3582 16 := by rfl

theorem table3582_entry017 :
    matchingVariables coloring3582 17 = table3582 17 := by rfl

theorem table3582_entry018 :
    matchingVariables coloring3582 18 = table3582 18 := by rfl

theorem table3582_entry019 :
    matchingVariables coloring3582 19 = table3582 19 := by rfl

theorem table3582_entry020 :
    matchingVariables coloring3582 20 = table3582 20 := by rfl

theorem table3582_entry021 :
    matchingVariables coloring3582 21 = table3582 21 := by rfl

theorem table3582_entry022 :
    matchingVariables coloring3582 22 = table3582 22 := by rfl

theorem table3582_entry023 :
    matchingVariables coloring3582 23 = table3582 23 := by rfl

theorem table3582_entry024 :
    matchingVariables coloring3582 24 = table3582 24 := by rfl

theorem table3582_entry025 :
    matchingVariables coloring3582 25 = table3582 25 := by rfl

theorem table3582_entry026 :
    matchingVariables coloring3582 26 = table3582 26 := by rfl

theorem table3582_entry027 :
    matchingVariables coloring3582 27 = table3582 27 := by rfl

theorem table3582_entry028 :
    matchingVariables coloring3582 28 = table3582 28 := by rfl

theorem table3582_entry029 :
    matchingVariables coloring3582 29 = table3582 29 := by rfl

theorem table3582_entry030 :
    matchingVariables coloring3582 30 = table3582 30 := by rfl

theorem table3582_entry031 :
    matchingVariables coloring3582 31 = table3582 31 := by rfl

theorem table3582_entry032 :
    matchingVariables coloring3582 32 = table3582 32 := by rfl

theorem table3582_entry033 :
    matchingVariables coloring3582 33 = table3582 33 := by rfl

theorem table3582_entry034 :
    matchingVariables coloring3582 34 = table3582 34 := by rfl

theorem table3582_entry035 :
    matchingVariables coloring3582 35 = table3582 35 := by rfl

theorem table3582_entry036 :
    matchingVariables coloring3582 36 = table3582 36 := by rfl

theorem table3582_entry037 :
    matchingVariables coloring3582 37 = table3582 37 := by rfl

theorem table3582_entry038 :
    matchingVariables coloring3582 38 = table3582 38 := by rfl

theorem table3582_entry039 :
    matchingVariables coloring3582 39 = table3582 39 := by rfl

theorem table3582_entry040 :
    matchingVariables coloring3582 40 = table3582 40 := by rfl

theorem table3582_entry041 :
    matchingVariables coloring3582 41 = table3582 41 := by rfl

theorem table3582_entry042 :
    matchingVariables coloring3582 42 = table3582 42 := by rfl

theorem table3582_entry043 :
    matchingVariables coloring3582 43 = table3582 43 := by rfl

theorem table3582_entry044 :
    matchingVariables coloring3582 44 = table3582 44 := by rfl

theorem table3582_entry045 :
    matchingVariables coloring3582 45 = table3582 45 := by rfl

theorem table3582_entry046 :
    matchingVariables coloring3582 46 = table3582 46 := by rfl

theorem table3582_entry047 :
    matchingVariables coloring3582 47 = table3582 47 := by rfl

theorem table3582_entry048 :
    matchingVariables coloring3582 48 = table3582 48 := by rfl

theorem table3582_entry049 :
    matchingVariables coloring3582 49 = table3582 49 := by rfl

theorem table3582_entry050 :
    matchingVariables coloring3582 50 = table3582 50 := by rfl

theorem table3582_entry051 :
    matchingVariables coloring3582 51 = table3582 51 := by rfl

theorem table3582_entry052 :
    matchingVariables coloring3582 52 = table3582 52 := by rfl

theorem table3582_entry053 :
    matchingVariables coloring3582 53 = table3582 53 := by rfl

theorem table3582_entry054 :
    matchingVariables coloring3582 54 = table3582 54 := by rfl

theorem table3582_entry055 :
    matchingVariables coloring3582 55 = table3582 55 := by rfl

theorem table3582_entry056 :
    matchingVariables coloring3582 56 = table3582 56 := by rfl

theorem table3582_entry057 :
    matchingVariables coloring3582 57 = table3582 57 := by rfl

theorem table3582_entry058 :
    matchingVariables coloring3582 58 = table3582 58 := by rfl

theorem table3582_entry059 :
    matchingVariables coloring3582 59 = table3582 59 := by rfl

theorem table3582_entry060 :
    matchingVariables coloring3582 60 = table3582 60 := by rfl

theorem table3582_entry061 :
    matchingVariables coloring3582 61 = table3582 61 := by rfl

theorem table3582_entry062 :
    matchingVariables coloring3582 62 = table3582 62 := by rfl

theorem table3582_entry063 :
    matchingVariables coloring3582 63 = table3582 63 := by rfl

theorem table3582_entry064 :
    matchingVariables coloring3582 64 = table3582 64 := by rfl

theorem table3582_entry065 :
    matchingVariables coloring3582 65 = table3582 65 := by rfl

theorem table3582_entry066 :
    matchingVariables coloring3582 66 = table3582 66 := by rfl

theorem table3582_entry067 :
    matchingVariables coloring3582 67 = table3582 67 := by rfl

theorem table3582_entry068 :
    matchingVariables coloring3582 68 = table3582 68 := by rfl

theorem table3582_entry069 :
    matchingVariables coloring3582 69 = table3582 69 := by rfl

theorem table3582_entry070 :
    matchingVariables coloring3582 70 = table3582 70 := by rfl

theorem table3582_entry071 :
    matchingVariables coloring3582 71 = table3582 71 := by rfl

theorem table3582_entry072 :
    matchingVariables coloring3582 72 = table3582 72 := by rfl

theorem table3582_entry073 :
    matchingVariables coloring3582 73 = table3582 73 := by rfl

theorem table3582_entry074 :
    matchingVariables coloring3582 74 = table3582 74 := by rfl

theorem table3582_entry075 :
    matchingVariables coloring3582 75 = table3582 75 := by rfl

theorem table3582_entry076 :
    matchingVariables coloring3582 76 = table3582 76 := by rfl

theorem table3582_entry077 :
    matchingVariables coloring3582 77 = table3582 77 := by rfl

theorem table3582_entry078 :
    matchingVariables coloring3582 78 = table3582 78 := by rfl

theorem table3582_entry079 :
    matchingVariables coloring3582 79 = table3582 79 := by rfl

theorem table3582_entry080 :
    matchingVariables coloring3582 80 = table3582 80 := by rfl

theorem table3582_entry081 :
    matchingVariables coloring3582 81 = table3582 81 := by rfl

theorem table3582_entry082 :
    matchingVariables coloring3582 82 = table3582 82 := by rfl

theorem table3582_entry083 :
    matchingVariables coloring3582 83 = table3582 83 := by rfl

theorem table3582_entry084 :
    matchingVariables coloring3582 84 = table3582 84 := by rfl

theorem table3582_entry085 :
    matchingVariables coloring3582 85 = table3582 85 := by rfl

theorem table3582_entry086 :
    matchingVariables coloring3582 86 = table3582 86 := by rfl

theorem table3582_entry087 :
    matchingVariables coloring3582 87 = table3582 87 := by rfl

theorem table3582_entry088 :
    matchingVariables coloring3582 88 = table3582 88 := by rfl

theorem table3582_entry089 :
    matchingVariables coloring3582 89 = table3582 89 := by rfl

theorem table3582_entry090 :
    matchingVariables coloring3582 90 = table3582 90 := by rfl

theorem table3582_entry091 :
    matchingVariables coloring3582 91 = table3582 91 := by rfl

theorem table3582_entry092 :
    matchingVariables coloring3582 92 = table3582 92 := by rfl

theorem table3582_entry093 :
    matchingVariables coloring3582 93 = table3582 93 := by rfl

theorem table3582_entry094 :
    matchingVariables coloring3582 94 = table3582 94 := by rfl

theorem table3582_entry095 :
    matchingVariables coloring3582 95 = table3582 95 := by rfl

theorem table3582_entry096 :
    matchingVariables coloring3582 96 = table3582 96 := by rfl

theorem table3582_entry097 :
    matchingVariables coloring3582 97 = table3582 97 := by rfl

theorem table3582_entry098 :
    matchingVariables coloring3582 98 = table3582 98 := by rfl

theorem table3582_entry099 :
    matchingVariables coloring3582 99 = table3582 99 := by rfl

theorem table3582_entry100 :
    matchingVariables coloring3582 100 = table3582 100 := by rfl

theorem table3582_entry101 :
    matchingVariables coloring3582 101 = table3582 101 := by rfl

theorem table3582_entry102 :
    matchingVariables coloring3582 102 = table3582 102 := by rfl

theorem table3582_entry103 :
    matchingVariables coloring3582 103 = table3582 103 := by rfl

theorem table3582_entry104 :
    matchingVariables coloring3582 104 = table3582 104 := by rfl

theorem table3582_complete : ∀ m, matchingVariables coloring3582 m = table3582 m := by
  intro m
  fin_cases m
  · exact table3582_entry000
  · exact table3582_entry001
  · exact table3582_entry002
  · exact table3582_entry003
  · exact table3582_entry004
  · exact table3582_entry005
  · exact table3582_entry006
  · exact table3582_entry007
  · exact table3582_entry008
  · exact table3582_entry009
  · exact table3582_entry010
  · exact table3582_entry011
  · exact table3582_entry012
  · exact table3582_entry013
  · exact table3582_entry014
  · exact table3582_entry015
  · exact table3582_entry016
  · exact table3582_entry017
  · exact table3582_entry018
  · exact table3582_entry019
  · exact table3582_entry020
  · exact table3582_entry021
  · exact table3582_entry022
  · exact table3582_entry023
  · exact table3582_entry024
  · exact table3582_entry025
  · exact table3582_entry026
  · exact table3582_entry027
  · exact table3582_entry028
  · exact table3582_entry029
  · exact table3582_entry030
  · exact table3582_entry031
  · exact table3582_entry032
  · exact table3582_entry033
  · exact table3582_entry034
  · exact table3582_entry035
  · exact table3582_entry036
  · exact table3582_entry037
  · exact table3582_entry038
  · exact table3582_entry039
  · exact table3582_entry040
  · exact table3582_entry041
  · exact table3582_entry042
  · exact table3582_entry043
  · exact table3582_entry044
  · exact table3582_entry045
  · exact table3582_entry046
  · exact table3582_entry047
  · exact table3582_entry048
  · exact table3582_entry049
  · exact table3582_entry050
  · exact table3582_entry051
  · exact table3582_entry052
  · exact table3582_entry053
  · exact table3582_entry054
  · exact table3582_entry055
  · exact table3582_entry056
  · exact table3582_entry057
  · exact table3582_entry058
  · exact table3582_entry059
  · exact table3582_entry060
  · exact table3582_entry061
  · exact table3582_entry062
  · exact table3582_entry063
  · exact table3582_entry064
  · exact table3582_entry065
  · exact table3582_entry066
  · exact table3582_entry067
  · exact table3582_entry068
  · exact table3582_entry069
  · exact table3582_entry070
  · exact table3582_entry071
  · exact table3582_entry072
  · exact table3582_entry073
  · exact table3582_entry074
  · exact table3582_entry075
  · exact table3582_entry076
  · exact table3582_entry077
  · exact table3582_entry078
  · exact table3582_entry079
  · exact table3582_entry080
  · exact table3582_entry081
  · exact table3582_entry082
  · exact table3582_entry083
  · exact table3582_entry084
  · exact table3582_entry085
  · exact table3582_entry086
  · exact table3582_entry087
  · exact table3582_entry088
  · exact table3582_entry089
  · exact table3582_entry090
  · exact table3582_entry091
  · exact table3582_entry092
  · exact table3582_entry093
  · exact table3582_entry094
  · exact table3582_entry095
  · exact table3582_entry096
  · exact table3582_entry097
  · exact table3582_entry098
  · exact table3582_entry099
  · exact table3582_entry100
  · exact table3582_entry101
  · exact table3582_entry102
  · exact table3582_entry103
  · exact table3582_entry104

#print axioms table3582_complete

def expanded3582 : Polynomial 143 := [(1, exponentOfVariables [0, 63, 106, 138]),
  (1, exponentOfVariables [0, 77, 84, 138]),
  (1, exponentOfVariables [11, 40, 84, 138]),
  (1, exponentOfVariables [11, 48, 84, 132]),
  (1, exponentOfVariables [11, 48, 93, 122]),
  (1, exponentOfVariables [18, 48, 77, 122])]

theorem table3582_expanded : tablePolynomial table3582 = expanded3582 := by
  rfl

theorem table3582_exponent00 :
    exponentOfVariables (n := 143) [0, 63, 106, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 63 then (1) else if i.val = 106 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3582_exponent01 :
    exponentOfVariables (n := 143) [0, 77, 84, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 77 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3582_exponent02 :
    exponentOfVariables (n := 143) [11, 40, 84, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 40 then (1) else if i.val = 84 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3582_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 84, 132] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 84 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3582_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 93, 122] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 93 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3582_exponent05 :
    exponentOfVariables (n := 143) [18, 48, 77, 122] =
      (fun i => if i.val = 18 then (1) else if i.val = 48 then (1) else if i.val = 77 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3582_polynomial : expanded3582 = amplitude3582 := by
  simp only [expanded3582, amplitude3582, table3582_exponent00, table3582_exponent01, table3582_exponent02, table3582_exponent03, table3582_exponent04, table3582_exponent05]

theorem premiseCheck064 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3582)) p064 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
