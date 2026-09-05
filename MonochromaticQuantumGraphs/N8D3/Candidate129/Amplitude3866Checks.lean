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

def coloring3866 : Fin 8 → Fin 3 := ![2, 1, 0, 2, 2, 0, 2, 1]

def table3866 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [7, 59, 104, 141] else
    if m.val = 1 then some [7, 59, 114, 126] else
    if m.val = 6 then some [7, 69, 90, 141] else
    if m.val = 21 then some [15, 41, 90, 141] else
    if m.val = 24 then some [15, 52, 90, 126] else
    if m.val = 40 then some [26, 52, 69, 122] else none

theorem table3866_entry000 :
    matchingVariables coloring3866 0 = table3866 0 := by rfl

theorem table3866_entry001 :
    matchingVariables coloring3866 1 = table3866 1 := by rfl

theorem table3866_entry002 :
    matchingVariables coloring3866 2 = table3866 2 := by rfl

theorem table3866_entry003 :
    matchingVariables coloring3866 3 = table3866 3 := by rfl

theorem table3866_entry004 :
    matchingVariables coloring3866 4 = table3866 4 := by rfl

theorem table3866_entry005 :
    matchingVariables coloring3866 5 = table3866 5 := by rfl

theorem table3866_entry006 :
    matchingVariables coloring3866 6 = table3866 6 := by rfl

theorem table3866_entry007 :
    matchingVariables coloring3866 7 = table3866 7 := by rfl

theorem table3866_entry008 :
    matchingVariables coloring3866 8 = table3866 8 := by rfl

theorem table3866_entry009 :
    matchingVariables coloring3866 9 = table3866 9 := by rfl

theorem table3866_entry010 :
    matchingVariables coloring3866 10 = table3866 10 := by rfl

theorem table3866_entry011 :
    matchingVariables coloring3866 11 = table3866 11 := by rfl

theorem table3866_entry012 :
    matchingVariables coloring3866 12 = table3866 12 := by rfl

theorem table3866_entry013 :
    matchingVariables coloring3866 13 = table3866 13 := by rfl

theorem table3866_entry014 :
    matchingVariables coloring3866 14 = table3866 14 := by rfl

theorem table3866_entry015 :
    matchingVariables coloring3866 15 = table3866 15 := by rfl

theorem table3866_entry016 :
    matchingVariables coloring3866 16 = table3866 16 := by rfl

theorem table3866_entry017 :
    matchingVariables coloring3866 17 = table3866 17 := by rfl

theorem table3866_entry018 :
    matchingVariables coloring3866 18 = table3866 18 := by rfl

theorem table3866_entry019 :
    matchingVariables coloring3866 19 = table3866 19 := by rfl

theorem table3866_entry020 :
    matchingVariables coloring3866 20 = table3866 20 := by rfl

theorem table3866_entry021 :
    matchingVariables coloring3866 21 = table3866 21 := by rfl

theorem table3866_entry022 :
    matchingVariables coloring3866 22 = table3866 22 := by rfl

theorem table3866_entry023 :
    matchingVariables coloring3866 23 = table3866 23 := by rfl

theorem table3866_entry024 :
    matchingVariables coloring3866 24 = table3866 24 := by rfl

theorem table3866_entry025 :
    matchingVariables coloring3866 25 = table3866 25 := by rfl

theorem table3866_entry026 :
    matchingVariables coloring3866 26 = table3866 26 := by rfl

theorem table3866_entry027 :
    matchingVariables coloring3866 27 = table3866 27 := by rfl

theorem table3866_entry028 :
    matchingVariables coloring3866 28 = table3866 28 := by rfl

theorem table3866_entry029 :
    matchingVariables coloring3866 29 = table3866 29 := by rfl

theorem table3866_entry030 :
    matchingVariables coloring3866 30 = table3866 30 := by rfl

theorem table3866_entry031 :
    matchingVariables coloring3866 31 = table3866 31 := by rfl

theorem table3866_entry032 :
    matchingVariables coloring3866 32 = table3866 32 := by rfl

theorem table3866_entry033 :
    matchingVariables coloring3866 33 = table3866 33 := by rfl

theorem table3866_entry034 :
    matchingVariables coloring3866 34 = table3866 34 := by rfl

theorem table3866_entry035 :
    matchingVariables coloring3866 35 = table3866 35 := by rfl

theorem table3866_entry036 :
    matchingVariables coloring3866 36 = table3866 36 := by rfl

theorem table3866_entry037 :
    matchingVariables coloring3866 37 = table3866 37 := by rfl

theorem table3866_entry038 :
    matchingVariables coloring3866 38 = table3866 38 := by rfl

theorem table3866_entry039 :
    matchingVariables coloring3866 39 = table3866 39 := by rfl

theorem table3866_entry040 :
    matchingVariables coloring3866 40 = table3866 40 := by rfl

theorem table3866_entry041 :
    matchingVariables coloring3866 41 = table3866 41 := by rfl

theorem table3866_entry042 :
    matchingVariables coloring3866 42 = table3866 42 := by rfl

theorem table3866_entry043 :
    matchingVariables coloring3866 43 = table3866 43 := by rfl

theorem table3866_entry044 :
    matchingVariables coloring3866 44 = table3866 44 := by rfl

theorem table3866_entry045 :
    matchingVariables coloring3866 45 = table3866 45 := by rfl

theorem table3866_entry046 :
    matchingVariables coloring3866 46 = table3866 46 := by rfl

theorem table3866_entry047 :
    matchingVariables coloring3866 47 = table3866 47 := by rfl

theorem table3866_entry048 :
    matchingVariables coloring3866 48 = table3866 48 := by rfl

theorem table3866_entry049 :
    matchingVariables coloring3866 49 = table3866 49 := by rfl

theorem table3866_entry050 :
    matchingVariables coloring3866 50 = table3866 50 := by rfl

theorem table3866_entry051 :
    matchingVariables coloring3866 51 = table3866 51 := by rfl

theorem table3866_entry052 :
    matchingVariables coloring3866 52 = table3866 52 := by rfl

theorem table3866_entry053 :
    matchingVariables coloring3866 53 = table3866 53 := by rfl

theorem table3866_entry054 :
    matchingVariables coloring3866 54 = table3866 54 := by rfl

theorem table3866_entry055 :
    matchingVariables coloring3866 55 = table3866 55 := by rfl

theorem table3866_entry056 :
    matchingVariables coloring3866 56 = table3866 56 := by rfl

theorem table3866_entry057 :
    matchingVariables coloring3866 57 = table3866 57 := by rfl

theorem table3866_entry058 :
    matchingVariables coloring3866 58 = table3866 58 := by rfl

theorem table3866_entry059 :
    matchingVariables coloring3866 59 = table3866 59 := by rfl

theorem table3866_entry060 :
    matchingVariables coloring3866 60 = table3866 60 := by rfl

theorem table3866_entry061 :
    matchingVariables coloring3866 61 = table3866 61 := by rfl

theorem table3866_entry062 :
    matchingVariables coloring3866 62 = table3866 62 := by rfl

theorem table3866_entry063 :
    matchingVariables coloring3866 63 = table3866 63 := by rfl

theorem table3866_entry064 :
    matchingVariables coloring3866 64 = table3866 64 := by rfl

theorem table3866_entry065 :
    matchingVariables coloring3866 65 = table3866 65 := by rfl

theorem table3866_entry066 :
    matchingVariables coloring3866 66 = table3866 66 := by rfl

theorem table3866_entry067 :
    matchingVariables coloring3866 67 = table3866 67 := by rfl

theorem table3866_entry068 :
    matchingVariables coloring3866 68 = table3866 68 := by rfl

theorem table3866_entry069 :
    matchingVariables coloring3866 69 = table3866 69 := by rfl

theorem table3866_entry070 :
    matchingVariables coloring3866 70 = table3866 70 := by rfl

theorem table3866_entry071 :
    matchingVariables coloring3866 71 = table3866 71 := by rfl

theorem table3866_entry072 :
    matchingVariables coloring3866 72 = table3866 72 := by rfl

theorem table3866_entry073 :
    matchingVariables coloring3866 73 = table3866 73 := by rfl

theorem table3866_entry074 :
    matchingVariables coloring3866 74 = table3866 74 := by rfl

theorem table3866_entry075 :
    matchingVariables coloring3866 75 = table3866 75 := by rfl

theorem table3866_entry076 :
    matchingVariables coloring3866 76 = table3866 76 := by rfl

theorem table3866_entry077 :
    matchingVariables coloring3866 77 = table3866 77 := by rfl

theorem table3866_entry078 :
    matchingVariables coloring3866 78 = table3866 78 := by rfl

theorem table3866_entry079 :
    matchingVariables coloring3866 79 = table3866 79 := by rfl

theorem table3866_entry080 :
    matchingVariables coloring3866 80 = table3866 80 := by rfl

theorem table3866_entry081 :
    matchingVariables coloring3866 81 = table3866 81 := by rfl

theorem table3866_entry082 :
    matchingVariables coloring3866 82 = table3866 82 := by rfl

theorem table3866_entry083 :
    matchingVariables coloring3866 83 = table3866 83 := by rfl

theorem table3866_entry084 :
    matchingVariables coloring3866 84 = table3866 84 := by rfl

theorem table3866_entry085 :
    matchingVariables coloring3866 85 = table3866 85 := by rfl

theorem table3866_entry086 :
    matchingVariables coloring3866 86 = table3866 86 := by rfl

theorem table3866_entry087 :
    matchingVariables coloring3866 87 = table3866 87 := by rfl

theorem table3866_entry088 :
    matchingVariables coloring3866 88 = table3866 88 := by rfl

theorem table3866_entry089 :
    matchingVariables coloring3866 89 = table3866 89 := by rfl

theorem table3866_entry090 :
    matchingVariables coloring3866 90 = table3866 90 := by rfl

theorem table3866_entry091 :
    matchingVariables coloring3866 91 = table3866 91 := by rfl

theorem table3866_entry092 :
    matchingVariables coloring3866 92 = table3866 92 := by rfl

theorem table3866_entry093 :
    matchingVariables coloring3866 93 = table3866 93 := by rfl

theorem table3866_entry094 :
    matchingVariables coloring3866 94 = table3866 94 := by rfl

theorem table3866_entry095 :
    matchingVariables coloring3866 95 = table3866 95 := by rfl

theorem table3866_entry096 :
    matchingVariables coloring3866 96 = table3866 96 := by rfl

theorem table3866_entry097 :
    matchingVariables coloring3866 97 = table3866 97 := by rfl

theorem table3866_entry098 :
    matchingVariables coloring3866 98 = table3866 98 := by rfl

theorem table3866_entry099 :
    matchingVariables coloring3866 99 = table3866 99 := by rfl

theorem table3866_entry100 :
    matchingVariables coloring3866 100 = table3866 100 := by rfl

theorem table3866_entry101 :
    matchingVariables coloring3866 101 = table3866 101 := by rfl

theorem table3866_entry102 :
    matchingVariables coloring3866 102 = table3866 102 := by rfl

theorem table3866_entry103 :
    matchingVariables coloring3866 103 = table3866 103 := by rfl

theorem table3866_entry104 :
    matchingVariables coloring3866 104 = table3866 104 := by rfl

theorem table3866_complete : ∀ m, matchingVariables coloring3866 m = table3866 m := by
  intro m
  fin_cases m
  · exact table3866_entry000
  · exact table3866_entry001
  · exact table3866_entry002
  · exact table3866_entry003
  · exact table3866_entry004
  · exact table3866_entry005
  · exact table3866_entry006
  · exact table3866_entry007
  · exact table3866_entry008
  · exact table3866_entry009
  · exact table3866_entry010
  · exact table3866_entry011
  · exact table3866_entry012
  · exact table3866_entry013
  · exact table3866_entry014
  · exact table3866_entry015
  · exact table3866_entry016
  · exact table3866_entry017
  · exact table3866_entry018
  · exact table3866_entry019
  · exact table3866_entry020
  · exact table3866_entry021
  · exact table3866_entry022
  · exact table3866_entry023
  · exact table3866_entry024
  · exact table3866_entry025
  · exact table3866_entry026
  · exact table3866_entry027
  · exact table3866_entry028
  · exact table3866_entry029
  · exact table3866_entry030
  · exact table3866_entry031
  · exact table3866_entry032
  · exact table3866_entry033
  · exact table3866_entry034
  · exact table3866_entry035
  · exact table3866_entry036
  · exact table3866_entry037
  · exact table3866_entry038
  · exact table3866_entry039
  · exact table3866_entry040
  · exact table3866_entry041
  · exact table3866_entry042
  · exact table3866_entry043
  · exact table3866_entry044
  · exact table3866_entry045
  · exact table3866_entry046
  · exact table3866_entry047
  · exact table3866_entry048
  · exact table3866_entry049
  · exact table3866_entry050
  · exact table3866_entry051
  · exact table3866_entry052
  · exact table3866_entry053
  · exact table3866_entry054
  · exact table3866_entry055
  · exact table3866_entry056
  · exact table3866_entry057
  · exact table3866_entry058
  · exact table3866_entry059
  · exact table3866_entry060
  · exact table3866_entry061
  · exact table3866_entry062
  · exact table3866_entry063
  · exact table3866_entry064
  · exact table3866_entry065
  · exact table3866_entry066
  · exact table3866_entry067
  · exact table3866_entry068
  · exact table3866_entry069
  · exact table3866_entry070
  · exact table3866_entry071
  · exact table3866_entry072
  · exact table3866_entry073
  · exact table3866_entry074
  · exact table3866_entry075
  · exact table3866_entry076
  · exact table3866_entry077
  · exact table3866_entry078
  · exact table3866_entry079
  · exact table3866_entry080
  · exact table3866_entry081
  · exact table3866_entry082
  · exact table3866_entry083
  · exact table3866_entry084
  · exact table3866_entry085
  · exact table3866_entry086
  · exact table3866_entry087
  · exact table3866_entry088
  · exact table3866_entry089
  · exact table3866_entry090
  · exact table3866_entry091
  · exact table3866_entry092
  · exact table3866_entry093
  · exact table3866_entry094
  · exact table3866_entry095
  · exact table3866_entry096
  · exact table3866_entry097
  · exact table3866_entry098
  · exact table3866_entry099
  · exact table3866_entry100
  · exact table3866_entry101
  · exact table3866_entry102
  · exact table3866_entry103
  · exact table3866_entry104

#print axioms table3866_complete

def expanded3866 : Polynomial 143 := [(1, exponentOfVariables [7, 59, 104, 141]),
  (1, exponentOfVariables [7, 59, 114, 126]),
  (1, exponentOfVariables [7, 69, 90, 141]),
  (1, exponentOfVariables [15, 41, 90, 141]),
  (1, exponentOfVariables [15, 52, 90, 126]),
  (1, exponentOfVariables [26, 52, 69, 122])]

theorem table3866_expanded : tablePolynomial table3866 = expanded3866 := by
  rfl

theorem table3866_exponent00 :
    exponentOfVariables (n := 143) [7, 59, 104, 141] =
      (fun i => if i.val = 7 then (1) else if i.val = 59 then (1) else if i.val = 104 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3866_exponent01 :
    exponentOfVariables (n := 143) [7, 59, 114, 126] =
      (fun i => if i.val = 7 then (1) else if i.val = 59 then (1) else if i.val = 114 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3866_exponent02 :
    exponentOfVariables (n := 143) [7, 69, 90, 141] =
      (fun i => if i.val = 7 then (1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3866_exponent03 :
    exponentOfVariables (n := 143) [15, 41, 90, 141] =
      (fun i => if i.val = 15 then (1) else if i.val = 41 then (1) else if i.val = 90 then (1) else if i.val = 141 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3866_exponent04 :
    exponentOfVariables (n := 143) [15, 52, 90, 126] =
      (fun i => if i.val = 15 then (1) else if i.val = 52 then (1) else if i.val = 90 then (1) else if i.val = 126 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3866_exponent05 :
    exponentOfVariables (n := 143) [26, 52, 69, 122] =
      (fun i => if i.val = 26 then (1) else if i.val = 52 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table3866_polynomial : expanded3866 = amplitude3866 := by
  simp only [expanded3866, amplitude3866, table3866_exponent00, table3866_exponent01, table3866_exponent02, table3866_exponent03, table3866_exponent04, table3866_exponent05]

theorem premiseCheck135 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude3866)) p135 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
