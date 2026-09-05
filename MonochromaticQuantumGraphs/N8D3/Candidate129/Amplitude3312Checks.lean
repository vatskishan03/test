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

def coloring3312 : Fin 8 → Fin 3 := ![0, 0, 2, 2, 1, 1, 1, 1]

def table3312 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 65, 102, 138] else
    if m.val = 1 then some [0, 65, 111, 129] else
    if m.val = 6 then some [0, 76, 89, 138] else
    if m.val = 21 then some [11, 39, 89, 138] else
    if m.val = 24 then some [11, 48, 89, 129] else
    if m.val = 40 then some [20, 48, 76, 119] else none

theorem table3312_entry000 :
    matchingVariables coloring3312 0 = table3312 0 := by rfl

theorem table3312_entry001 :
    matchingVariables coloring3312 1 = table3312 1 := by rfl

theorem table3312_entry002 :
    matchingVariables coloring3312 2 = table3312 2 := by rfl

theorem table3312_entry003 :
    matchingVariables coloring3312 3 = table3312 3 := by rfl

theorem table3312_entry004 :
    matchingVariables coloring3312 4 = table3312 4 := by rfl

theorem table3312_entry005 :
    matchingVariables coloring3312 5 = table3312 5 := by rfl

theorem table3312_entry006 :
    matchingVariables coloring3312 6 = table3312 6 := by rfl

theorem table3312_entry007 :
    matchingVariables coloring3312 7 = table3312 7 := by rfl

theorem table3312_entry008 :
    matchingVariables coloring3312 8 = table3312 8 := by rfl

theorem table3312_entry009 :
    matchingVariables coloring3312 9 = table3312 9 := by rfl

theorem table3312_entry010 :
    matchingVariables coloring3312 10 = table3312 10 := by rfl

theorem table3312_entry011 :
    matchingVariables coloring3312 11 = table3312 11 := by rfl

theorem table3312_entry012 :
    matchingVariables coloring3312 12 = table3312 12 := by rfl

theorem table3312_entry013 :
    matchingVariables coloring3312 13 = table3312 13 := by rfl

theorem table3312_entry014 :
    matchingVariables coloring3312 14 = table3312 14 := by rfl

theorem table3312_entry015 :
    matchingVariables coloring3312 15 = table3312 15 := by rfl

theorem table3312_entry016 :
    matchingVariables coloring3312 16 = table3312 16 := by rfl

theorem table3312_entry017 :
    matchingVariables coloring3312 17 = table3312 17 := by rfl

theorem table3312_entry018 :
    matchingVariables coloring3312 18 = table3312 18 := by rfl

theorem table3312_entry019 :
    matchingVariables coloring3312 19 = table3312 19 := by rfl

theorem table3312_entry020 :
    matchingVariables coloring3312 20 = table3312 20 := by rfl

theorem table3312_entry021 :
    matchingVariables coloring3312 21 = table3312 21 := by rfl

theorem table3312_entry022 :
    matchingVariables coloring3312 22 = table3312 22 := by rfl

theorem table3312_entry023 :
    matchingVariables coloring3312 23 = table3312 23 := by rfl

theorem table3312_entry024 :
    matchingVariables coloring3312 24 = table3312 24 := by rfl

theorem table3312_entry025 :
    matchingVariables coloring3312 25 = table3312 25 := by rfl

theorem table3312_entry026 :
    matchingVariables coloring3312 26 = table3312 26 := by rfl

theorem table3312_entry027 :
    matchingVariables coloring3312 27 = table3312 27 := by rfl

theorem table3312_entry028 :
    matchingVariables coloring3312 28 = table3312 28 := by rfl

theorem table3312_entry029 :
    matchingVariables coloring3312 29 = table3312 29 := by rfl

theorem table3312_entry030 :
    matchingVariables coloring3312 30 = table3312 30 := by rfl

theorem table3312_entry031 :
    matchingVariables coloring3312 31 = table3312 31 := by rfl

theorem table3312_entry032 :
    matchingVariables coloring3312 32 = table3312 32 := by rfl

theorem table3312_entry033 :
    matchingVariables coloring3312 33 = table3312 33 := by rfl

theorem table3312_entry034 :
    matchingVariables coloring3312 34 = table3312 34 := by rfl

theorem table3312_entry035 :
    matchingVariables coloring3312 35 = table3312 35 := by rfl

theorem table3312_entry036 :
    matchingVariables coloring3312 36 = table3312 36 := by rfl

theorem table3312_entry037 :
    matchingVariables coloring3312 37 = table3312 37 := by rfl

theorem table3312_entry038 :
    matchingVariables coloring3312 38 = table3312 38 := by rfl

theorem table3312_entry039 :
    matchingVariables coloring3312 39 = table3312 39 := by rfl

theorem table3312_entry040 :
    matchingVariables coloring3312 40 = table3312 40 := by rfl

theorem table3312_entry041 :
    matchingVariables coloring3312 41 = table3312 41 := by rfl

theorem table3312_entry042 :
    matchingVariables coloring3312 42 = table3312 42 := by rfl

theorem table3312_entry043 :
    matchingVariables coloring3312 43 = table3312 43 := by rfl

theorem table3312_entry044 :
    matchingVariables coloring3312 44 = table3312 44 := by rfl

theorem table3312_entry045 :
    matchingVariables coloring3312 45 = table3312 45 := by rfl

theorem table3312_entry046 :
    matchingVariables coloring3312 46 = table3312 46 := by rfl

theorem table3312_entry047 :
    matchingVariables coloring3312 47 = table3312 47 := by rfl

theorem table3312_entry048 :
    matchingVariables coloring3312 48 = table3312 48 := by rfl

theorem table3312_entry049 :
    matchingVariables coloring3312 49 = table3312 49 := by rfl

theorem table3312_entry050 :
    matchingVariables coloring3312 50 = table3312 50 := by rfl

theorem table3312_entry051 :
    matchingVariables coloring3312 51 = table3312 51 := by rfl

theorem table3312_entry052 :
    matchingVariables coloring3312 52 = table3312 52 := by rfl

theorem table3312_entry053 :
    matchingVariables coloring3312 53 = table3312 53 := by rfl

theorem table3312_entry054 :
    matchingVariables coloring3312 54 = table3312 54 := by rfl

theorem table3312_entry055 :
    matchingVariables coloring3312 55 = table3312 55 := by rfl

theorem table3312_entry056 :
    matchingVariables coloring3312 56 = table3312 56 := by rfl

theorem table3312_entry057 :
    matchingVariables coloring3312 57 = table3312 57 := by rfl

theorem table3312_entry058 :
    matchingVariables coloring3312 58 = table3312 58 := by rfl

theorem table3312_entry059 :
    matchingVariables coloring3312 59 = table3312 59 := by rfl

theorem table3312_entry060 :
    matchingVariables coloring3312 60 = table3312 60 := by rfl

theorem table3312_entry061 :
    matchingVariables coloring3312 61 = table3312 61 := by rfl

theorem table3312_entry062 :
    matchingVariables coloring3312 62 = table3312 62 := by rfl

theorem table3312_entry063 :
    matchingVariables coloring3312 63 = table3312 63 := by rfl

theorem table3312_entry064 :
    matchingVariables coloring3312 64 = table3312 64 := by rfl

theorem table3312_entry065 :
    matchingVariables coloring3312 65 = table3312 65 := by rfl

theorem table3312_entry066 :
    matchingVariables coloring3312 66 = table3312 66 := by rfl

theorem table3312_entry067 :
    matchingVariables coloring3312 67 = table3312 67 := by rfl

theorem table3312_entry068 :
    matchingVariables coloring3312 68 = table3312 68 := by rfl

theorem table3312_entry069 :
    matchingVariables coloring3312 69 = table3312 69 := by rfl

theorem table3312_entry070 :
    matchingVariables coloring3312 70 = table3312 70 := by rfl

theorem table3312_entry071 :
    matchingVariables coloring3312 71 = table3312 71 := by rfl

theorem table3312_entry072 :
    matchingVariables coloring3312 72 = table3312 72 := by rfl

theorem table3312_entry073 :
    matchingVariables coloring3312 73 = table3312 73 := by rfl

theorem table3312_entry074 :
    matchingVariables coloring3312 74 = table3312 74 := by rfl

theorem table3312_entry075 :
    matchingVariables coloring3312 75 = table3312 75 := by rfl

theorem table3312_entry076 :
    matchingVariables coloring3312 76 = table3312 76 := by rfl

theorem table3312_entry077 :
    matchingVariables coloring3312 77 = table3312 77 := by rfl

theorem table3312_entry078 :
    matchingVariables coloring3312 78 = table3312 78 := by rfl

theorem table3312_entry079 :
    matchingVariables coloring3312 79 = table3312 79 := by rfl

theorem table3312_entry080 :
    matchingVariables coloring3312 80 = table3312 80 := by rfl

theorem table3312_entry081 :
    matchingVariables coloring3312 81 = table3312 81 := by rfl

theorem table3312_entry082 :
    matchingVariables coloring3312 82 = table3312 82 := by rfl

theorem table3312_entry083 :
    matchingVariables coloring3312 83 = table3312 83 := by rfl

theorem table3312_entry084 :
    matchingVariables coloring3312 84 = table3312 84 := by rfl

theorem table3312_entry085 :
    matchingVariables coloring3312 85 = table3312 85 := by rfl

theorem table3312_entry086 :
    matchingVariables coloring3312 86 = table3312 86 := by rfl

theorem table3312_entry087 :
    matchingVariables coloring3312 87 = table3312 87 := by rfl

theorem table3312_entry088 :
    matchingVariables coloring3312 88 = table3312 88 := by rfl

theorem table3312_entry089 :
    matchingVariables coloring3312 89 = table3312 89 := by rfl

theorem table3312_entry090 :
    matchingVariables coloring3312 90 = table3312 90 := by rfl

theorem table3312_entry091 :
    matchingVariables coloring3312 91 = table3312 91 := by rfl

theorem table3312_entry092 :
    matchingVariables coloring3312 92 = table3312 92 := by rfl

theorem table3312_entry093 :
    matchingVariables coloring3312 93 = table3312 93 := by rfl

theorem table3312_entry094 :
    matchingVariables coloring3312 94 = table3312 94 := by rfl

theorem table3312_entry095 :
    matchingVariables coloring3312 95 = table3312 95 := by rfl

theorem table3312_entry096 :
    matchingVariables coloring3312 96 = table3312 96 := by rfl

theorem table3312_entry097 :
    matchingVariables coloring3312 97 = table3312 97 := by rfl

theorem table3312_entry098 :
    matchingVariables coloring3312 98 = table3312 98 := by rfl

theorem table3312_entry099 :
    matchingVariables coloring3312 99 = table3312 99 := by rfl

theorem table3312_entry100 :
    matchingVariables coloring3312 100 = table3312 100 := by rfl

theorem table3312_entry101 :
    matchingVariables coloring3312 101 = table3312 101 := by rfl

theorem table3312_entry102 :
    matchingVariables coloring3312 102 = table3312 102 := by rfl

theorem table3312_entry103 :
    matchingVariables coloring3312 103 = table3312 103 := by rfl

theorem table3312_entry104 :
    matchingVariables coloring3312 104 = table3312 104 := by rfl

theorem table3312_complete : ∀ m, matchingVariables coloring3312 m = table3312 m := by
  intro m
  fin_cases m
  · exact table3312_entry000
  · exact table3312_entry001
  · exact table3312_entry002
  · exact table3312_entry003
  · exact table3312_entry004
  · exact table3312_entry005
  · exact table3312_entry006
  · exact table3312_entry007
  · exact table3312_entry008
  · exact table3312_entry009
  · exact table3312_entry010
  · exact table3312_entry011
  · exact table3312_entry012
  · exact table3312_entry013
  · exact table3312_entry014
  · exact table3312_entry015
  · exact table3312_entry016
  · exact table3312_entry017
  · exact table3312_entry018
  · exact table3312_entry019
  · exact table3312_entry020
  · exact table3312_entry021
  · exact table3312_entry022
  · exact table3312_entry023
  · exact table3312_entry024
  · exact table3312_entry025
  · exact table3312_entry026
  · exact table3312_entry027
  · exact table3312_entry028
  · exact table3312_entry029
  · exact table3312_entry030
  · exact table3312_entry031
  · exact table3312_entry032
  · exact table3312_entry033
  · exact table3312_entry034
  · exact table3312_entry035
  · exact table3312_entry036
  · exact table3312_entry037
  · exact table3312_entry038
  · exact table3312_entry039
  · exact table3312_entry040
  · exact table3312_entry041
  · exact table3312_entry042
  · exact table3312_entry043
  · exact table3312_entry044
  · exact table3312_entry045
  · exact table3312_entry046
  · exact table3312_entry047
  · exact table3312_entry048
  · exact table3312_entry049
  · exact table3312_entry050
  · exact table3312_entry051
  · exact table3312_entry052
  · exact table3312_entry053
  · exact table3312_entry054
  · exact table3312_entry055
  · exact table3312_entry056
  · exact table3312_entry057
  · exact table3312_entry058
  · exact table3312_entry059
  · exact table3312_entry060
  · exact table3312_entry061
  · exact table3312_entry062
  · exact table3312_entry063
  · exact table3312_entry064
  · exact table3312_entry065
  · exact table3312_entry066
  · exact table3312_entry067
  · exact table3312_entry068
  · exact table3312_entry069
  · exact table3312_entry070
  · exact table3312_entry071
  · exact table3312_entry072
  · exact table3312_entry073
  · exact table3312_entry074
  · exact table3312_entry075
  · exact table3312_entry076
  · exact table3312_entry077
  · exact table3312_entry078
  · exact table3312_entry079
  · exact table3312_entry080
  · exact table3312_entry081
  · exact table3312_entry082
  · exact table3312_entry083
  · exact table3312_entry084
  · exact table3312_entry085
  · exact table3312_entry086
  · exact table3312_entry087
  · exact table3312_entry088
  · exact table3312_entry089
  · exact table3312_entry090
  · exact table3312_entry091
  · exact table3312_entry092
  · exact table3312_entry093
  · exact table3312_entry094
  · exact table3312_entry095
  · exact table3312_entry096
  · exact table3312_entry097
  · exact table3312_entry098
  · exact table3312_entry099
  · exact table3312_entry100
  · exact table3312_entry101
  · exact table3312_entry102
  · exact table3312_entry103
  · exact table3312_entry104

#print axioms table3312_complete

def expanded3312 : Polynomial 143 := [(1, exponentOfVariables [0, 65, 102, 138]),
  (1, exponentOfVariables [0, 65, 111, 129]),
  (1, exponentOfVariables [0, 76, 89, 138]),
  (1, exponentOfVariables [11, 39, 89, 138]),
  (1, exponentOfVariables [11, 48, 89, 129]),
  (1, exponentOfVariables [20, 48, 76, 119])]

theorem table3312_expanded : tablePolynomial table3312 = expanded3312 := by
  rfl

theorem table3312_exponent00 :
    exponentOfVariables (n := 143) [0, 65, 102, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 65 then (1) else if i.val = 102 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3312_exponent01 :
    exponentOfVariables (n := 143) [0, 65, 111, 129] =
      (fun i => if i.val = 0 then (1) else if i.val = 65 then (1) else if i.val = 111 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3312_exponent02 :
    exponentOfVariables (n := 143) [0, 76, 89, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 76 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3312_exponent03 :
    exponentOfVariables (n := 143) [11, 39, 89, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 39 then (1) else if i.val = 89 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3312_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 89, 129] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 89 then (1) else if i.val = 129 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3312_exponent05 :
    exponentOfVariables (n := 143) [20, 48, 76, 119] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 76 then (1) else if i.val = 119 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3312_polynomial : expanded3312 = amplitude3312 := by
  simp only [expanded3312, amplitude3312, table3312_exponent00, table3312_exponent01, table3312_exponent02, table3312_exponent03, table3312_exponent04, table3312_exponent05]

theorem premiseCheck037 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3312)) p037 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
