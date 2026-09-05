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

def coloring3863 : Fin 8 → Fin 3 := ![2, 0, 0, 2, 2, 0, 2, 1]

def table3863 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [6, 59, 104, 141] else
    if m.val = 1 then some [6, 59, 114, 126] else
    if m.val = 6 then some [6, 69, 90, 141] else
    if m.val = 21 then some [15, 38, 90, 141] else
    if m.val = 24 then some [15, 49, 90, 126] else
    if m.val = 40 then some [26, 49, 69, 122] else none

theorem table3863_entry000 :
    matchingVariables coloring3863 0 = table3863 0 := by rfl

theorem table3863_entry001 :
    matchingVariables coloring3863 1 = table3863 1 := by rfl

theorem table3863_entry002 :
    matchingVariables coloring3863 2 = table3863 2 := by rfl

theorem table3863_entry003 :
    matchingVariables coloring3863 3 = table3863 3 := by rfl

theorem table3863_entry004 :
    matchingVariables coloring3863 4 = table3863 4 := by rfl

theorem table3863_entry005 :
    matchingVariables coloring3863 5 = table3863 5 := by rfl

theorem table3863_entry006 :
    matchingVariables coloring3863 6 = table3863 6 := by rfl

theorem table3863_entry007 :
    matchingVariables coloring3863 7 = table3863 7 := by rfl

theorem table3863_entry008 :
    matchingVariables coloring3863 8 = table3863 8 := by rfl

theorem table3863_entry009 :
    matchingVariables coloring3863 9 = table3863 9 := by rfl

theorem table3863_entry010 :
    matchingVariables coloring3863 10 = table3863 10 := by rfl

theorem table3863_entry011 :
    matchingVariables coloring3863 11 = table3863 11 := by rfl

theorem table3863_entry012 :
    matchingVariables coloring3863 12 = table3863 12 := by rfl

theorem table3863_entry013 :
    matchingVariables coloring3863 13 = table3863 13 := by rfl

theorem table3863_entry014 :
    matchingVariables coloring3863 14 = table3863 14 := by rfl

theorem table3863_entry015 :
    matchingVariables coloring3863 15 = table3863 15 := by rfl

theorem table3863_entry016 :
    matchingVariables coloring3863 16 = table3863 16 := by rfl

theorem table3863_entry017 :
    matchingVariables coloring3863 17 = table3863 17 := by rfl

theorem table3863_entry018 :
    matchingVariables coloring3863 18 = table3863 18 := by rfl

theorem table3863_entry019 :
    matchingVariables coloring3863 19 = table3863 19 := by rfl

theorem table3863_entry020 :
    matchingVariables coloring3863 20 = table3863 20 := by rfl

theorem table3863_entry021 :
    matchingVariables coloring3863 21 = table3863 21 := by rfl

theorem table3863_entry022 :
    matchingVariables coloring3863 22 = table3863 22 := by rfl

theorem table3863_entry023 :
    matchingVariables coloring3863 23 = table3863 23 := by rfl

theorem table3863_entry024 :
    matchingVariables coloring3863 24 = table3863 24 := by rfl

theorem table3863_entry025 :
    matchingVariables coloring3863 25 = table3863 25 := by rfl

theorem table3863_entry026 :
    matchingVariables coloring3863 26 = table3863 26 := by rfl

theorem table3863_entry027 :
    matchingVariables coloring3863 27 = table3863 27 := by rfl

theorem table3863_entry028 :
    matchingVariables coloring3863 28 = table3863 28 := by rfl

theorem table3863_entry029 :
    matchingVariables coloring3863 29 = table3863 29 := by rfl

theorem table3863_entry030 :
    matchingVariables coloring3863 30 = table3863 30 := by rfl

theorem table3863_entry031 :
    matchingVariables coloring3863 31 = table3863 31 := by rfl

theorem table3863_entry032 :
    matchingVariables coloring3863 32 = table3863 32 := by rfl

theorem table3863_entry033 :
    matchingVariables coloring3863 33 = table3863 33 := by rfl

theorem table3863_entry034 :
    matchingVariables coloring3863 34 = table3863 34 := by rfl

theorem table3863_entry035 :
    matchingVariables coloring3863 35 = table3863 35 := by rfl

theorem table3863_entry036 :
    matchingVariables coloring3863 36 = table3863 36 := by rfl

theorem table3863_entry037 :
    matchingVariables coloring3863 37 = table3863 37 := by rfl

theorem table3863_entry038 :
    matchingVariables coloring3863 38 = table3863 38 := by rfl

theorem table3863_entry039 :
    matchingVariables coloring3863 39 = table3863 39 := by rfl

theorem table3863_entry040 :
    matchingVariables coloring3863 40 = table3863 40 := by rfl

theorem table3863_entry041 :
    matchingVariables coloring3863 41 = table3863 41 := by rfl

theorem table3863_entry042 :
    matchingVariables coloring3863 42 = table3863 42 := by rfl

theorem table3863_entry043 :
    matchingVariables coloring3863 43 = table3863 43 := by rfl

theorem table3863_entry044 :
    matchingVariables coloring3863 44 = table3863 44 := by rfl

theorem table3863_entry045 :
    matchingVariables coloring3863 45 = table3863 45 := by rfl

theorem table3863_entry046 :
    matchingVariables coloring3863 46 = table3863 46 := by rfl

theorem table3863_entry047 :
    matchingVariables coloring3863 47 = table3863 47 := by rfl

theorem table3863_entry048 :
    matchingVariables coloring3863 48 = table3863 48 := by rfl

theorem table3863_entry049 :
    matchingVariables coloring3863 49 = table3863 49 := by rfl

theorem table3863_entry050 :
    matchingVariables coloring3863 50 = table3863 50 := by rfl

theorem table3863_entry051 :
    matchingVariables coloring3863 51 = table3863 51 := by rfl

theorem table3863_entry052 :
    matchingVariables coloring3863 52 = table3863 52 := by rfl

theorem table3863_entry053 :
    matchingVariables coloring3863 53 = table3863 53 := by rfl

theorem table3863_entry054 :
    matchingVariables coloring3863 54 = table3863 54 := by rfl

theorem table3863_entry055 :
    matchingVariables coloring3863 55 = table3863 55 := by rfl

theorem table3863_entry056 :
    matchingVariables coloring3863 56 = table3863 56 := by rfl

theorem table3863_entry057 :
    matchingVariables coloring3863 57 = table3863 57 := by rfl

theorem table3863_entry058 :
    matchingVariables coloring3863 58 = table3863 58 := by rfl

theorem table3863_entry059 :
    matchingVariables coloring3863 59 = table3863 59 := by rfl

theorem table3863_entry060 :
    matchingVariables coloring3863 60 = table3863 60 := by rfl

theorem table3863_entry061 :
    matchingVariables coloring3863 61 = table3863 61 := by rfl

theorem table3863_entry062 :
    matchingVariables coloring3863 62 = table3863 62 := by rfl

theorem table3863_entry063 :
    matchingVariables coloring3863 63 = table3863 63 := by rfl

theorem table3863_entry064 :
    matchingVariables coloring3863 64 = table3863 64 := by rfl

theorem table3863_entry065 :
    matchingVariables coloring3863 65 = table3863 65 := by rfl

theorem table3863_entry066 :
    matchingVariables coloring3863 66 = table3863 66 := by rfl

theorem table3863_entry067 :
    matchingVariables coloring3863 67 = table3863 67 := by rfl

theorem table3863_entry068 :
    matchingVariables coloring3863 68 = table3863 68 := by rfl

theorem table3863_entry069 :
    matchingVariables coloring3863 69 = table3863 69 := by rfl

theorem table3863_entry070 :
    matchingVariables coloring3863 70 = table3863 70 := by rfl

theorem table3863_entry071 :
    matchingVariables coloring3863 71 = table3863 71 := by rfl

theorem table3863_entry072 :
    matchingVariables coloring3863 72 = table3863 72 := by rfl

theorem table3863_entry073 :
    matchingVariables coloring3863 73 = table3863 73 := by rfl

theorem table3863_entry074 :
    matchingVariables coloring3863 74 = table3863 74 := by rfl

theorem table3863_entry075 :
    matchingVariables coloring3863 75 = table3863 75 := by rfl

theorem table3863_entry076 :
    matchingVariables coloring3863 76 = table3863 76 := by rfl

theorem table3863_entry077 :
    matchingVariables coloring3863 77 = table3863 77 := by rfl

theorem table3863_entry078 :
    matchingVariables coloring3863 78 = table3863 78 := by rfl

theorem table3863_entry079 :
    matchingVariables coloring3863 79 = table3863 79 := by rfl

theorem table3863_entry080 :
    matchingVariables coloring3863 80 = table3863 80 := by rfl

theorem table3863_entry081 :
    matchingVariables coloring3863 81 = table3863 81 := by rfl

theorem table3863_entry082 :
    matchingVariables coloring3863 82 = table3863 82 := by rfl

theorem table3863_entry083 :
    matchingVariables coloring3863 83 = table3863 83 := by rfl

theorem table3863_entry084 :
    matchingVariables coloring3863 84 = table3863 84 := by rfl

theorem table3863_entry085 :
    matchingVariables coloring3863 85 = table3863 85 := by rfl

theorem table3863_entry086 :
    matchingVariables coloring3863 86 = table3863 86 := by rfl

theorem table3863_entry087 :
    matchingVariables coloring3863 87 = table3863 87 := by rfl

theorem table3863_entry088 :
    matchingVariables coloring3863 88 = table3863 88 := by rfl

theorem table3863_entry089 :
    matchingVariables coloring3863 89 = table3863 89 := by rfl

theorem table3863_entry090 :
    matchingVariables coloring3863 90 = table3863 90 := by rfl

theorem table3863_entry091 :
    matchingVariables coloring3863 91 = table3863 91 := by rfl

theorem table3863_entry092 :
    matchingVariables coloring3863 92 = table3863 92 := by rfl

theorem table3863_entry093 :
    matchingVariables coloring3863 93 = table3863 93 := by rfl

theorem table3863_entry094 :
    matchingVariables coloring3863 94 = table3863 94 := by rfl

theorem table3863_entry095 :
    matchingVariables coloring3863 95 = table3863 95 := by rfl

theorem table3863_entry096 :
    matchingVariables coloring3863 96 = table3863 96 := by rfl

theorem table3863_entry097 :
    matchingVariables coloring3863 97 = table3863 97 := by rfl

theorem table3863_entry098 :
    matchingVariables coloring3863 98 = table3863 98 := by rfl

theorem table3863_entry099 :
    matchingVariables coloring3863 99 = table3863 99 := by rfl

theorem table3863_entry100 :
    matchingVariables coloring3863 100 = table3863 100 := by rfl

theorem table3863_entry101 :
    matchingVariables coloring3863 101 = table3863 101 := by rfl

theorem table3863_entry102 :
    matchingVariables coloring3863 102 = table3863 102 := by rfl

theorem table3863_entry103 :
    matchingVariables coloring3863 103 = table3863 103 := by rfl

theorem table3863_entry104 :
    matchingVariables coloring3863 104 = table3863 104 := by rfl

theorem table3863_complete : ∀ m, matchingVariables coloring3863 m = table3863 m := by
  intro m
  fin_cases m
  · exact table3863_entry000
  · exact table3863_entry001
  · exact table3863_entry002
  · exact table3863_entry003
  · exact table3863_entry004
  · exact table3863_entry005
  · exact table3863_entry006
  · exact table3863_entry007
  · exact table3863_entry008
  · exact table3863_entry009
  · exact table3863_entry010
  · exact table3863_entry011
  · exact table3863_entry012
  · exact table3863_entry013
  · exact table3863_entry014
  · exact table3863_entry015
  · exact table3863_entry016
  · exact table3863_entry017
  · exact table3863_entry018
  · exact table3863_entry019
  · exact table3863_entry020
  · exact table3863_entry021
  · exact table3863_entry022
  · exact table3863_entry023
  · exact table3863_entry024
  · exact table3863_entry025
  · exact table3863_entry026
  · exact table3863_entry027
  · exact table3863_entry028
  · exact table3863_entry029
  · exact table3863_entry030
  · exact table3863_entry031
  · exact table3863_entry032
  · exact table3863_entry033
  · exact table3863_entry034
  · exact table3863_entry035
  · exact table3863_entry036
  · exact table3863_entry037
  · exact table3863_entry038
  · exact table3863_entry039
  · exact table3863_entry040
  · exact table3863_entry041
  · exact table3863_entry042
  · exact table3863_entry043
  · exact table3863_entry044
  · exact table3863_entry045
  · exact table3863_entry046
  · exact table3863_entry047
  · exact table3863_entry048
  · exact table3863_entry049
  · exact table3863_entry050
  · exact table3863_entry051
  · exact table3863_entry052
  · exact table3863_entry053
  · exact table3863_entry054
  · exact table3863_entry055
  · exact table3863_entry056
  · exact table3863_entry057
  · exact table3863_entry058
  · exact table3863_entry059
  · exact table3863_entry060
  · exact table3863_entry061
  · exact table3863_entry062
  · exact table3863_entry063
  · exact table3863_entry064
  · exact table3863_entry065
  · exact table3863_entry066
  · exact table3863_entry067
  · exact table3863_entry068
  · exact table3863_entry069
  · exact table3863_entry070
  · exact table3863_entry071
  · exact table3863_entry072
  · exact table3863_entry073
  · exact table3863_entry074
  · exact table3863_entry075
  · exact table3863_entry076
  · exact table3863_entry077
  · exact table3863_entry078
  · exact table3863_entry079
  · exact table3863_entry080
  · exact table3863_entry081
  · exact table3863_entry082
  · exact table3863_entry083
  · exact table3863_entry084
  · exact table3863_entry085
  · exact table3863_entry086
  · exact table3863_entry087
  · exact table3863_entry088
  · exact table3863_entry089
  · exact table3863_entry090
  · exact table3863_entry091
  · exact table3863_entry092
  · exact table3863_entry093
  · exact table3863_entry094
  · exact table3863_entry095
  · exact table3863_entry096
  · exact table3863_entry097
  · exact table3863_entry098
  · exact table3863_entry099
  · exact table3863_entry100
  · exact table3863_entry101
  · exact table3863_entry102
  · exact table3863_entry103
  · exact table3863_entry104

#print axioms table3863_complete

def expanded3863 : Polynomial 143 := [(1, exponentOfVariables [6, 59, 104, 141]),
  (1, exponentOfVariables [6, 59, 114, 126]),
  (1, exponentOfVariables [6, 69, 90, 141]),
  (1, exponentOfVariables [15, 38, 90, 141]),
  (1, exponentOfVariables [15, 49, 90, 126]),
  (1, exponentOfVariables [26, 49, 69, 122])]

theorem table3863_expanded : tablePolynomial table3863 = expanded3863 := by
  rfl

theorem table3863_exponent00 :
    exponentOfVariables (n := 143) [6, 59, 104, 141] =
      (fun i => if i.val = 6 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3863_exponent01 :
    exponentOfVariables (n := 143) [6, 59, 114, 126] =
      (fun i => if i.val = 6 then (1) else if i.val = 59 then (1) else if i.val = 114 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3863_exponent02 :
    exponentOfVariables (n := 143) [6, 69, 90, 141] =
      (fun i => if i.val = 6 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3863_exponent03 :
    exponentOfVariables (n := 143) [15, 38, 90, 141] =
      (fun i => if i.val = 15 then (1) else if i.val = 38 then (1) else if i.val = 90 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3863_exponent04 :
    exponentOfVariables (n := 143) [15, 49, 90, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 49 then (1) else if i.val = 90 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3863_exponent05 :
    exponentOfVariables (n := 143) [26, 49, 69, 122] =
      (fun i => if i.val = 26 then (1) else if i.val = 49 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3863_polynomial : expanded3863 = amplitude3863 := by
  simp only [expanded3863, amplitude3863, table3863_exponent00, table3863_exponent01, table3863_exponent02, table3863_exponent03, table3863_exponent04, table3863_exponent05]

theorem premiseCheck124 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3863)) p124 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
