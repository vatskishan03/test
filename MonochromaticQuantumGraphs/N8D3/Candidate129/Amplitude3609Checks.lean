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

def coloring3609 : Fin 8 → Fin 3 := ![0, 0, 2, 1, 2, 2, 1, 1]

def table3609 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 64, 106, 138] else
    if m.val = 6 then some [0, 77, 87, 138] else
    if m.val = 21 then some [11, 40, 87, 138] else
    if m.val = 24 then some [11, 48, 87, 132] else
    if m.val = 26 then some [11, 48, 97, 106] else
    if m.val = 40 then some [19, 48, 77, 122] else none

theorem table3609_entry000 :
    matchingVariables coloring3609 0 = table3609 0 := by rfl

theorem table3609_entry001 :
    matchingVariables coloring3609 1 = table3609 1 := by rfl

theorem table3609_entry002 :
    matchingVariables coloring3609 2 = table3609 2 := by rfl

theorem table3609_entry003 :
    matchingVariables coloring3609 3 = table3609 3 := by rfl

theorem table3609_entry004 :
    matchingVariables coloring3609 4 = table3609 4 := by rfl

theorem table3609_entry005 :
    matchingVariables coloring3609 5 = table3609 5 := by rfl

theorem table3609_entry006 :
    matchingVariables coloring3609 6 = table3609 6 := by rfl

theorem table3609_entry007 :
    matchingVariables coloring3609 7 = table3609 7 := by rfl

theorem table3609_entry008 :
    matchingVariables coloring3609 8 = table3609 8 := by rfl

theorem table3609_entry009 :
    matchingVariables coloring3609 9 = table3609 9 := by rfl

theorem table3609_entry010 :
    matchingVariables coloring3609 10 = table3609 10 := by rfl

theorem table3609_entry011 :
    matchingVariables coloring3609 11 = table3609 11 := by rfl

theorem table3609_entry012 :
    matchingVariables coloring3609 12 = table3609 12 := by rfl

theorem table3609_entry013 :
    matchingVariables coloring3609 13 = table3609 13 := by rfl

theorem table3609_entry014 :
    matchingVariables coloring3609 14 = table3609 14 := by rfl

theorem table3609_entry015 :
    matchingVariables coloring3609 15 = table3609 15 := by rfl

theorem table3609_entry016 :
    matchingVariables coloring3609 16 = table3609 16 := by rfl

theorem table3609_entry017 :
    matchingVariables coloring3609 17 = table3609 17 := by rfl

theorem table3609_entry018 :
    matchingVariables coloring3609 18 = table3609 18 := by rfl

theorem table3609_entry019 :
    matchingVariables coloring3609 19 = table3609 19 := by rfl

theorem table3609_entry020 :
    matchingVariables coloring3609 20 = table3609 20 := by rfl

theorem table3609_entry021 :
    matchingVariables coloring3609 21 = table3609 21 := by rfl

theorem table3609_entry022 :
    matchingVariables coloring3609 22 = table3609 22 := by rfl

theorem table3609_entry023 :
    matchingVariables coloring3609 23 = table3609 23 := by rfl

theorem table3609_entry024 :
    matchingVariables coloring3609 24 = table3609 24 := by rfl

theorem table3609_entry025 :
    matchingVariables coloring3609 25 = table3609 25 := by rfl

theorem table3609_entry026 :
    matchingVariables coloring3609 26 = table3609 26 := by rfl

theorem table3609_entry027 :
    matchingVariables coloring3609 27 = table3609 27 := by rfl

theorem table3609_entry028 :
    matchingVariables coloring3609 28 = table3609 28 := by rfl

theorem table3609_entry029 :
    matchingVariables coloring3609 29 = table3609 29 := by rfl

theorem table3609_entry030 :
    matchingVariables coloring3609 30 = table3609 30 := by rfl

theorem table3609_entry031 :
    matchingVariables coloring3609 31 = table3609 31 := by rfl

theorem table3609_entry032 :
    matchingVariables coloring3609 32 = table3609 32 := by rfl

theorem table3609_entry033 :
    matchingVariables coloring3609 33 = table3609 33 := by rfl

theorem table3609_entry034 :
    matchingVariables coloring3609 34 = table3609 34 := by rfl

theorem table3609_entry035 :
    matchingVariables coloring3609 35 = table3609 35 := by rfl

theorem table3609_entry036 :
    matchingVariables coloring3609 36 = table3609 36 := by rfl

theorem table3609_entry037 :
    matchingVariables coloring3609 37 = table3609 37 := by rfl

theorem table3609_entry038 :
    matchingVariables coloring3609 38 = table3609 38 := by rfl

theorem table3609_entry039 :
    matchingVariables coloring3609 39 = table3609 39 := by rfl

theorem table3609_entry040 :
    matchingVariables coloring3609 40 = table3609 40 := by rfl

theorem table3609_entry041 :
    matchingVariables coloring3609 41 = table3609 41 := by rfl

theorem table3609_entry042 :
    matchingVariables coloring3609 42 = table3609 42 := by rfl

theorem table3609_entry043 :
    matchingVariables coloring3609 43 = table3609 43 := by rfl

theorem table3609_entry044 :
    matchingVariables coloring3609 44 = table3609 44 := by rfl

theorem table3609_entry045 :
    matchingVariables coloring3609 45 = table3609 45 := by rfl

theorem table3609_entry046 :
    matchingVariables coloring3609 46 = table3609 46 := by rfl

theorem table3609_entry047 :
    matchingVariables coloring3609 47 = table3609 47 := by rfl

theorem table3609_entry048 :
    matchingVariables coloring3609 48 = table3609 48 := by rfl

theorem table3609_entry049 :
    matchingVariables coloring3609 49 = table3609 49 := by rfl

theorem table3609_entry050 :
    matchingVariables coloring3609 50 = table3609 50 := by rfl

theorem table3609_entry051 :
    matchingVariables coloring3609 51 = table3609 51 := by rfl

theorem table3609_entry052 :
    matchingVariables coloring3609 52 = table3609 52 := by rfl

theorem table3609_entry053 :
    matchingVariables coloring3609 53 = table3609 53 := by rfl

theorem table3609_entry054 :
    matchingVariables coloring3609 54 = table3609 54 := by rfl

theorem table3609_entry055 :
    matchingVariables coloring3609 55 = table3609 55 := by rfl

theorem table3609_entry056 :
    matchingVariables coloring3609 56 = table3609 56 := by rfl

theorem table3609_entry057 :
    matchingVariables coloring3609 57 = table3609 57 := by rfl

theorem table3609_entry058 :
    matchingVariables coloring3609 58 = table3609 58 := by rfl

theorem table3609_entry059 :
    matchingVariables coloring3609 59 = table3609 59 := by rfl

theorem table3609_entry060 :
    matchingVariables coloring3609 60 = table3609 60 := by rfl

theorem table3609_entry061 :
    matchingVariables coloring3609 61 = table3609 61 := by rfl

theorem table3609_entry062 :
    matchingVariables coloring3609 62 = table3609 62 := by rfl

theorem table3609_entry063 :
    matchingVariables coloring3609 63 = table3609 63 := by rfl

theorem table3609_entry064 :
    matchingVariables coloring3609 64 = table3609 64 := by rfl

theorem table3609_entry065 :
    matchingVariables coloring3609 65 = table3609 65 := by rfl

theorem table3609_entry066 :
    matchingVariables coloring3609 66 = table3609 66 := by rfl

theorem table3609_entry067 :
    matchingVariables coloring3609 67 = table3609 67 := by rfl

theorem table3609_entry068 :
    matchingVariables coloring3609 68 = table3609 68 := by rfl

theorem table3609_entry069 :
    matchingVariables coloring3609 69 = table3609 69 := by rfl

theorem table3609_entry070 :
    matchingVariables coloring3609 70 = table3609 70 := by rfl

theorem table3609_entry071 :
    matchingVariables coloring3609 71 = table3609 71 := by rfl

theorem table3609_entry072 :
    matchingVariables coloring3609 72 = table3609 72 := by rfl

theorem table3609_entry073 :
    matchingVariables coloring3609 73 = table3609 73 := by rfl

theorem table3609_entry074 :
    matchingVariables coloring3609 74 = table3609 74 := by rfl

theorem table3609_entry075 :
    matchingVariables coloring3609 75 = table3609 75 := by rfl

theorem table3609_entry076 :
    matchingVariables coloring3609 76 = table3609 76 := by rfl

theorem table3609_entry077 :
    matchingVariables coloring3609 77 = table3609 77 := by rfl

theorem table3609_entry078 :
    matchingVariables coloring3609 78 = table3609 78 := by rfl

theorem table3609_entry079 :
    matchingVariables coloring3609 79 = table3609 79 := by rfl

theorem table3609_entry080 :
    matchingVariables coloring3609 80 = table3609 80 := by rfl

theorem table3609_entry081 :
    matchingVariables coloring3609 81 = table3609 81 := by rfl

theorem table3609_entry082 :
    matchingVariables coloring3609 82 = table3609 82 := by rfl

theorem table3609_entry083 :
    matchingVariables coloring3609 83 = table3609 83 := by rfl

theorem table3609_entry084 :
    matchingVariables coloring3609 84 = table3609 84 := by rfl

theorem table3609_entry085 :
    matchingVariables coloring3609 85 = table3609 85 := by rfl

theorem table3609_entry086 :
    matchingVariables coloring3609 86 = table3609 86 := by rfl

theorem table3609_entry087 :
    matchingVariables coloring3609 87 = table3609 87 := by rfl

theorem table3609_entry088 :
    matchingVariables coloring3609 88 = table3609 88 := by rfl

theorem table3609_entry089 :
    matchingVariables coloring3609 89 = table3609 89 := by rfl

theorem table3609_entry090 :
    matchingVariables coloring3609 90 = table3609 90 := by rfl

theorem table3609_entry091 :
    matchingVariables coloring3609 91 = table3609 91 := by rfl

theorem table3609_entry092 :
    matchingVariables coloring3609 92 = table3609 92 := by rfl

theorem table3609_entry093 :
    matchingVariables coloring3609 93 = table3609 93 := by rfl

theorem table3609_entry094 :
    matchingVariables coloring3609 94 = table3609 94 := by rfl

theorem table3609_entry095 :
    matchingVariables coloring3609 95 = table3609 95 := by rfl

theorem table3609_entry096 :
    matchingVariables coloring3609 96 = table3609 96 := by rfl

theorem table3609_entry097 :
    matchingVariables coloring3609 97 = table3609 97 := by rfl

theorem table3609_entry098 :
    matchingVariables coloring3609 98 = table3609 98 := by rfl

theorem table3609_entry099 :
    matchingVariables coloring3609 99 = table3609 99 := by rfl

theorem table3609_entry100 :
    matchingVariables coloring3609 100 = table3609 100 := by rfl

theorem table3609_entry101 :
    matchingVariables coloring3609 101 = table3609 101 := by rfl

theorem table3609_entry102 :
    matchingVariables coloring3609 102 = table3609 102 := by rfl

theorem table3609_entry103 :
    matchingVariables coloring3609 103 = table3609 103 := by rfl

theorem table3609_entry104 :
    matchingVariables coloring3609 104 = table3609 104 := by rfl

theorem table3609_complete : ∀ m, matchingVariables coloring3609 m = table3609 m := by
  intro m
  fin_cases m
  · exact table3609_entry000
  · exact table3609_entry001
  · exact table3609_entry002
  · exact table3609_entry003
  · exact table3609_entry004
  · exact table3609_entry005
  · exact table3609_entry006
  · exact table3609_entry007
  · exact table3609_entry008
  · exact table3609_entry009
  · exact table3609_entry010
  · exact table3609_entry011
  · exact table3609_entry012
  · exact table3609_entry013
  · exact table3609_entry014
  · exact table3609_entry015
  · exact table3609_entry016
  · exact table3609_entry017
  · exact table3609_entry018
  · exact table3609_entry019
  · exact table3609_entry020
  · exact table3609_entry021
  · exact table3609_entry022
  · exact table3609_entry023
  · exact table3609_entry024
  · exact table3609_entry025
  · exact table3609_entry026
  · exact table3609_entry027
  · exact table3609_entry028
  · exact table3609_entry029
  · exact table3609_entry030
  · exact table3609_entry031
  · exact table3609_entry032
  · exact table3609_entry033
  · exact table3609_entry034
  · exact table3609_entry035
  · exact table3609_entry036
  · exact table3609_entry037
  · exact table3609_entry038
  · exact table3609_entry039
  · exact table3609_entry040
  · exact table3609_entry041
  · exact table3609_entry042
  · exact table3609_entry043
  · exact table3609_entry044
  · exact table3609_entry045
  · exact table3609_entry046
  · exact table3609_entry047
  · exact table3609_entry048
  · exact table3609_entry049
  · exact table3609_entry050
  · exact table3609_entry051
  · exact table3609_entry052
  · exact table3609_entry053
  · exact table3609_entry054
  · exact table3609_entry055
  · exact table3609_entry056
  · exact table3609_entry057
  · exact table3609_entry058
  · exact table3609_entry059
  · exact table3609_entry060
  · exact table3609_entry061
  · exact table3609_entry062
  · exact table3609_entry063
  · exact table3609_entry064
  · exact table3609_entry065
  · exact table3609_entry066
  · exact table3609_entry067
  · exact table3609_entry068
  · exact table3609_entry069
  · exact table3609_entry070
  · exact table3609_entry071
  · exact table3609_entry072
  · exact table3609_entry073
  · exact table3609_entry074
  · exact table3609_entry075
  · exact table3609_entry076
  · exact table3609_entry077
  · exact table3609_entry078
  · exact table3609_entry079
  · exact table3609_entry080
  · exact table3609_entry081
  · exact table3609_entry082
  · exact table3609_entry083
  · exact table3609_entry084
  · exact table3609_entry085
  · exact table3609_entry086
  · exact table3609_entry087
  · exact table3609_entry088
  · exact table3609_entry089
  · exact table3609_entry090
  · exact table3609_entry091
  · exact table3609_entry092
  · exact table3609_entry093
  · exact table3609_entry094
  · exact table3609_entry095
  · exact table3609_entry096
  · exact table3609_entry097
  · exact table3609_entry098
  · exact table3609_entry099
  · exact table3609_entry100
  · exact table3609_entry101
  · exact table3609_entry102
  · exact table3609_entry103
  · exact table3609_entry104

#print axioms table3609_complete

def expanded3609 : Polynomial 143 := [(1, exponentOfVariables [0, 64, 106, 138]),
  (1, exponentOfVariables [0, 77, 87, 138]),
  (1, exponentOfVariables [11, 40, 87, 138]),
  (1, exponentOfVariables [11, 48, 87, 132]),
  (1, exponentOfVariables [11, 48, 97, 106]),
  (1, exponentOfVariables [19, 48, 77, 122])]

theorem table3609_expanded : tablePolynomial table3609 = expanded3609 := by
  rfl

theorem table3609_exponent00 :
    exponentOfVariables (n := 143) [0, 64, 106, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 64 then (1) else if i.val = 106 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3609_exponent01 :
    exponentOfVariables (n := 143) [0, 77, 87, 138] =
      (fun i => if i.val = 0 then (1) else if i.val = 77 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3609_exponent02 :
    exponentOfVariables (n := 143) [11, 40, 87, 138] =
      (fun i => if i.val = 11 then (1) else if i.val = 40 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3609_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 87, 132] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 132 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3609_exponent04 :
    exponentOfVariables (n := 143) [11, 48, 97, 106] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 106 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3609_exponent05 :
    exponentOfVariables (n := 143) [19, 48, 77, 122] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 77 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3609_polynomial : expanded3609 = amplitude3609 := by
  simp only [expanded3609, amplitude3609, table3609_exponent00, table3609_exponent01, table3609_exponent02, table3609_exponent03, table3609_exponent04, table3609_exponent05]

theorem premiseCheck053 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3609)) p053 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
