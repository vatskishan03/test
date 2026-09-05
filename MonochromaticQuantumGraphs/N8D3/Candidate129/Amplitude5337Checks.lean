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

def coloring5337 : Fin 8 → Fin 3 := ![0, 0, 2, 2, 2, 0, 1, 2]

def table5337 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 65, 104, 139] else
    if m.val = 6 then some [0, 75, 90, 139] else
    if m.val = 21 then some [11, 38, 90, 139] else
    if m.val = 24 then some [11, 48, 90, 127] else
    if m.val = 40 then some [20, 48, 75, 123] else
    if m.val = 41 then some [20, 48, 81, 104] else none

theorem table5337_entry000 :
    matchingVariables coloring5337 0 = table5337 0 := by rfl

theorem table5337_entry001 :
    matchingVariables coloring5337 1 = table5337 1 := by rfl

theorem table5337_entry002 :
    matchingVariables coloring5337 2 = table5337 2 := by rfl

theorem table5337_entry003 :
    matchingVariables coloring5337 3 = table5337 3 := by rfl

theorem table5337_entry004 :
    matchingVariables coloring5337 4 = table5337 4 := by rfl

theorem table5337_entry005 :
    matchingVariables coloring5337 5 = table5337 5 := by rfl

theorem table5337_entry006 :
    matchingVariables coloring5337 6 = table5337 6 := by rfl

theorem table5337_entry007 :
    matchingVariables coloring5337 7 = table5337 7 := by rfl

theorem table5337_entry008 :
    matchingVariables coloring5337 8 = table5337 8 := by rfl

theorem table5337_entry009 :
    matchingVariables coloring5337 9 = table5337 9 := by rfl

theorem table5337_entry010 :
    matchingVariables coloring5337 10 = table5337 10 := by rfl

theorem table5337_entry011 :
    matchingVariables coloring5337 11 = table5337 11 := by rfl

theorem table5337_entry012 :
    matchingVariables coloring5337 12 = table5337 12 := by rfl

theorem table5337_entry013 :
    matchingVariables coloring5337 13 = table5337 13 := by rfl

theorem table5337_entry014 :
    matchingVariables coloring5337 14 = table5337 14 := by rfl

theorem table5337_entry015 :
    matchingVariables coloring5337 15 = table5337 15 := by rfl

theorem table5337_entry016 :
    matchingVariables coloring5337 16 = table5337 16 := by rfl

theorem table5337_entry017 :
    matchingVariables coloring5337 17 = table5337 17 := by rfl

theorem table5337_entry018 :
    matchingVariables coloring5337 18 = table5337 18 := by rfl

theorem table5337_entry019 :
    matchingVariables coloring5337 19 = table5337 19 := by rfl

theorem table5337_entry020 :
    matchingVariables coloring5337 20 = table5337 20 := by rfl

theorem table5337_entry021 :
    matchingVariables coloring5337 21 = table5337 21 := by rfl

theorem table5337_entry022 :
    matchingVariables coloring5337 22 = table5337 22 := by rfl

theorem table5337_entry023 :
    matchingVariables coloring5337 23 = table5337 23 := by rfl

theorem table5337_entry024 :
    matchingVariables coloring5337 24 = table5337 24 := by rfl

theorem table5337_entry025 :
    matchingVariables coloring5337 25 = table5337 25 := by rfl

theorem table5337_entry026 :
    matchingVariables coloring5337 26 = table5337 26 := by rfl

theorem table5337_entry027 :
    matchingVariables coloring5337 27 = table5337 27 := by rfl

theorem table5337_entry028 :
    matchingVariables coloring5337 28 = table5337 28 := by rfl

theorem table5337_entry029 :
    matchingVariables coloring5337 29 = table5337 29 := by rfl

theorem table5337_entry030 :
    matchingVariables coloring5337 30 = table5337 30 := by rfl

theorem table5337_entry031 :
    matchingVariables coloring5337 31 = table5337 31 := by rfl

theorem table5337_entry032 :
    matchingVariables coloring5337 32 = table5337 32 := by rfl

theorem table5337_entry033 :
    matchingVariables coloring5337 33 = table5337 33 := by rfl

theorem table5337_entry034 :
    matchingVariables coloring5337 34 = table5337 34 := by rfl

theorem table5337_entry035 :
    matchingVariables coloring5337 35 = table5337 35 := by rfl

theorem table5337_entry036 :
    matchingVariables coloring5337 36 = table5337 36 := by rfl

theorem table5337_entry037 :
    matchingVariables coloring5337 37 = table5337 37 := by rfl

theorem table5337_entry038 :
    matchingVariables coloring5337 38 = table5337 38 := by rfl

theorem table5337_entry039 :
    matchingVariables coloring5337 39 = table5337 39 := by rfl

theorem table5337_entry040 :
    matchingVariables coloring5337 40 = table5337 40 := by rfl

theorem table5337_entry041 :
    matchingVariables coloring5337 41 = table5337 41 := by rfl

theorem table5337_entry042 :
    matchingVariables coloring5337 42 = table5337 42 := by rfl

theorem table5337_entry043 :
    matchingVariables coloring5337 43 = table5337 43 := by rfl

theorem table5337_entry044 :
    matchingVariables coloring5337 44 = table5337 44 := by rfl

theorem table5337_entry045 :
    matchingVariables coloring5337 45 = table5337 45 := by rfl

theorem table5337_entry046 :
    matchingVariables coloring5337 46 = table5337 46 := by rfl

theorem table5337_entry047 :
    matchingVariables coloring5337 47 = table5337 47 := by rfl

theorem table5337_entry048 :
    matchingVariables coloring5337 48 = table5337 48 := by rfl

theorem table5337_entry049 :
    matchingVariables coloring5337 49 = table5337 49 := by rfl

theorem table5337_entry050 :
    matchingVariables coloring5337 50 = table5337 50 := by rfl

theorem table5337_entry051 :
    matchingVariables coloring5337 51 = table5337 51 := by rfl

theorem table5337_entry052 :
    matchingVariables coloring5337 52 = table5337 52 := by rfl

theorem table5337_entry053 :
    matchingVariables coloring5337 53 = table5337 53 := by rfl

theorem table5337_entry054 :
    matchingVariables coloring5337 54 = table5337 54 := by rfl

theorem table5337_entry055 :
    matchingVariables coloring5337 55 = table5337 55 := by rfl

theorem table5337_entry056 :
    matchingVariables coloring5337 56 = table5337 56 := by rfl

theorem table5337_entry057 :
    matchingVariables coloring5337 57 = table5337 57 := by rfl

theorem table5337_entry058 :
    matchingVariables coloring5337 58 = table5337 58 := by rfl

theorem table5337_entry059 :
    matchingVariables coloring5337 59 = table5337 59 := by rfl

theorem table5337_entry060 :
    matchingVariables coloring5337 60 = table5337 60 := by rfl

theorem table5337_entry061 :
    matchingVariables coloring5337 61 = table5337 61 := by rfl

theorem table5337_entry062 :
    matchingVariables coloring5337 62 = table5337 62 := by rfl

theorem table5337_entry063 :
    matchingVariables coloring5337 63 = table5337 63 := by rfl

theorem table5337_entry064 :
    matchingVariables coloring5337 64 = table5337 64 := by rfl

theorem table5337_entry065 :
    matchingVariables coloring5337 65 = table5337 65 := by rfl

theorem table5337_entry066 :
    matchingVariables coloring5337 66 = table5337 66 := by rfl

theorem table5337_entry067 :
    matchingVariables coloring5337 67 = table5337 67 := by rfl

theorem table5337_entry068 :
    matchingVariables coloring5337 68 = table5337 68 := by rfl

theorem table5337_entry069 :
    matchingVariables coloring5337 69 = table5337 69 := by rfl

theorem table5337_entry070 :
    matchingVariables coloring5337 70 = table5337 70 := by rfl

theorem table5337_entry071 :
    matchingVariables coloring5337 71 = table5337 71 := by rfl

theorem table5337_entry072 :
    matchingVariables coloring5337 72 = table5337 72 := by rfl

theorem table5337_entry073 :
    matchingVariables coloring5337 73 = table5337 73 := by rfl

theorem table5337_entry074 :
    matchingVariables coloring5337 74 = table5337 74 := by rfl

theorem table5337_entry075 :
    matchingVariables coloring5337 75 = table5337 75 := by rfl

theorem table5337_entry076 :
    matchingVariables coloring5337 76 = table5337 76 := by rfl

theorem table5337_entry077 :
    matchingVariables coloring5337 77 = table5337 77 := by rfl

theorem table5337_entry078 :
    matchingVariables coloring5337 78 = table5337 78 := by rfl

theorem table5337_entry079 :
    matchingVariables coloring5337 79 = table5337 79 := by rfl

theorem table5337_entry080 :
    matchingVariables coloring5337 80 = table5337 80 := by rfl

theorem table5337_entry081 :
    matchingVariables coloring5337 81 = table5337 81 := by rfl

theorem table5337_entry082 :
    matchingVariables coloring5337 82 = table5337 82 := by rfl

theorem table5337_entry083 :
    matchingVariables coloring5337 83 = table5337 83 := by rfl

theorem table5337_entry084 :
    matchingVariables coloring5337 84 = table5337 84 := by rfl

theorem table5337_entry085 :
    matchingVariables coloring5337 85 = table5337 85 := by rfl

theorem table5337_entry086 :
    matchingVariables coloring5337 86 = table5337 86 := by rfl

theorem table5337_entry087 :
    matchingVariables coloring5337 87 = table5337 87 := by rfl

theorem table5337_entry088 :
    matchingVariables coloring5337 88 = table5337 88 := by rfl

theorem table5337_entry089 :
    matchingVariables coloring5337 89 = table5337 89 := by rfl

theorem table5337_entry090 :
    matchingVariables coloring5337 90 = table5337 90 := by rfl

theorem table5337_entry091 :
    matchingVariables coloring5337 91 = table5337 91 := by rfl

theorem table5337_entry092 :
    matchingVariables coloring5337 92 = table5337 92 := by rfl

theorem table5337_entry093 :
    matchingVariables coloring5337 93 = table5337 93 := by rfl

theorem table5337_entry094 :
    matchingVariables coloring5337 94 = table5337 94 := by rfl

theorem table5337_entry095 :
    matchingVariables coloring5337 95 = table5337 95 := by rfl

theorem table5337_entry096 :
    matchingVariables coloring5337 96 = table5337 96 := by rfl

theorem table5337_entry097 :
    matchingVariables coloring5337 97 = table5337 97 := by rfl

theorem table5337_entry098 :
    matchingVariables coloring5337 98 = table5337 98 := by rfl

theorem table5337_entry099 :
    matchingVariables coloring5337 99 = table5337 99 := by rfl

theorem table5337_entry100 :
    matchingVariables coloring5337 100 = table5337 100 := by rfl

theorem table5337_entry101 :
    matchingVariables coloring5337 101 = table5337 101 := by rfl

theorem table5337_entry102 :
    matchingVariables coloring5337 102 = table5337 102 := by rfl

theorem table5337_entry103 :
    matchingVariables coloring5337 103 = table5337 103 := by rfl

theorem table5337_entry104 :
    matchingVariables coloring5337 104 = table5337 104 := by rfl

theorem table5337_complete : ∀ m, matchingVariables coloring5337 m = table5337 m := by
  intro m
  fin_cases m
  · exact table5337_entry000
  · exact table5337_entry001
  · exact table5337_entry002
  · exact table5337_entry003
  · exact table5337_entry004
  · exact table5337_entry005
  · exact table5337_entry006
  · exact table5337_entry007
  · exact table5337_entry008
  · exact table5337_entry009
  · exact table5337_entry010
  · exact table5337_entry011
  · exact table5337_entry012
  · exact table5337_entry013
  · exact table5337_entry014
  · exact table5337_entry015
  · exact table5337_entry016
  · exact table5337_entry017
  · exact table5337_entry018
  · exact table5337_entry019
  · exact table5337_entry020
  · exact table5337_entry021
  · exact table5337_entry022
  · exact table5337_entry023
  · exact table5337_entry024
  · exact table5337_entry025
  · exact table5337_entry026
  · exact table5337_entry027
  · exact table5337_entry028
  · exact table5337_entry029
  · exact table5337_entry030
  · exact table5337_entry031
  · exact table5337_entry032
  · exact table5337_entry033
  · exact table5337_entry034
  · exact table5337_entry035
  · exact table5337_entry036
  · exact table5337_entry037
  · exact table5337_entry038
  · exact table5337_entry039
  · exact table5337_entry040
  · exact table5337_entry041
  · exact table5337_entry042
  · exact table5337_entry043
  · exact table5337_entry044
  · exact table5337_entry045
  · exact table5337_entry046
  · exact table5337_entry047
  · exact table5337_entry048
  · exact table5337_entry049
  · exact table5337_entry050
  · exact table5337_entry051
  · exact table5337_entry052
  · exact table5337_entry053
  · exact table5337_entry054
  · exact table5337_entry055
  · exact table5337_entry056
  · exact table5337_entry057
  · exact table5337_entry058
  · exact table5337_entry059
  · exact table5337_entry060
  · exact table5337_entry061
  · exact table5337_entry062
  · exact table5337_entry063
  · exact table5337_entry064
  · exact table5337_entry065
  · exact table5337_entry066
  · exact table5337_entry067
  · exact table5337_entry068
  · exact table5337_entry069
  · exact table5337_entry070
  · exact table5337_entry071
  · exact table5337_entry072
  · exact table5337_entry073
  · exact table5337_entry074
  · exact table5337_entry075
  · exact table5337_entry076
  · exact table5337_entry077
  · exact table5337_entry078
  · exact table5337_entry079
  · exact table5337_entry080
  · exact table5337_entry081
  · exact table5337_entry082
  · exact table5337_entry083
  · exact table5337_entry084
  · exact table5337_entry085
  · exact table5337_entry086
  · exact table5337_entry087
  · exact table5337_entry088
  · exact table5337_entry089
  · exact table5337_entry090
  · exact table5337_entry091
  · exact table5337_entry092
  · exact table5337_entry093
  · exact table5337_entry094
  · exact table5337_entry095
  · exact table5337_entry096
  · exact table5337_entry097
  · exact table5337_entry098
  · exact table5337_entry099
  · exact table5337_entry100
  · exact table5337_entry101
  · exact table5337_entry102
  · exact table5337_entry103
  · exact table5337_entry104

#print axioms table5337_complete

def expanded5337 : Polynomial 143 := [(1, exponentOfVariables [0, 65, 104, 139]),
  (1, exponentOfVariables [0, 75, 90, 139]),
  (1, exponentOfVariables [11, 38, 90, 139]),
  (1, exponentOfVariables [11, 48, 90, 127]),
  (1, exponentOfVariables [20, 48, 75, 123]),
  (1, exponentOfVariables [20, 48, 81, 104])]

theorem table5337_expanded : tablePolynomial table5337 = expanded5337 := by
  rfl

theorem table5337_exponent00 :
    exponentOfVariables (n := 143) [0, 65, 104, 139] =
      (fun i => if i.val = 0 then (1) else if i.val = 65 then (1) else if i.val = 104 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5337_exponent01 :
    exponentOfVariables (n := 143) [0, 75, 90, 139] =
      (fun i => if i.val = 0 then (1) else if i.val = 75 then (1) else if i.val = 90 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5337_exponent02 :
    exponentOfVariables (n := 143) [11, 38, 90, 139] =
      (fun i => if i.val = 11 then (1) else if i.val = 38 then (1) else if i.val = 90 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5337_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 90, 127] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 90 then (1) else if i.val = 127 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5337_exponent04 :
    exponentOfVariables (n := 143) [20, 48, 75, 123] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 123 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5337_exponent05 :
    exponentOfVariables (n := 143) [20, 48, 81, 104] =
      (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 81 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5337_polynomial : expanded5337 = amplitude5337 := by
  simp only [expanded5337, amplitude5337, table5337_exponent00, table5337_exponent01, table5337_exponent02, table5337_exponent03, table5337_exponent04, table5337_exponent05]

theorem premiseCheck003 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude5337)) p003 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
