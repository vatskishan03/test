import MonochromaticQuantumGraphs.N8D3.Candidate129.MatchingBlocks
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData
import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def coloring5310 : Fin 8 → Fin 3 := ![0, 0, 2, 1, 2, 0, 1, 2]

def table5310 : Fin 105 → Option (List (Fin 143)) :=
  fun m => if m.val = 0 then some [0, 64, 104, 139] else
    if m.val = 6 then some [0, 75, 87, 139] else
    if m.val = 21 then some [11, 38, 87, 139] else
    if m.val = 24 then some [11, 48, 87, 127] else
    if m.val = 40 then some [19, 48, 75, 123] else
    if m.val = 41 then some [19, 48, 81, 104] else none

theorem table5310_entry000 :
    matchingVariables coloring5310 0 = table5310 0 := by rfl

theorem table5310_entry001 :
    matchingVariables coloring5310 1 = table5310 1 := by rfl

theorem table5310_entry002 :
    matchingVariables coloring5310 2 = table5310 2 := by rfl

theorem table5310_entry003 :
    matchingVariables coloring5310 3 = table5310 3 := by rfl

theorem table5310_entry004 :
    matchingVariables coloring5310 4 = table5310 4 := by rfl

theorem table5310_entry005 :
    matchingVariables coloring5310 5 = table5310 5 := by rfl

theorem table5310_entry006 :
    matchingVariables coloring5310 6 = table5310 6 := by rfl

theorem table5310_entry007 :
    matchingVariables coloring5310 7 = table5310 7 := by rfl

theorem table5310_entry008 :
    matchingVariables coloring5310 8 = table5310 8 := by rfl

theorem table5310_entry009 :
    matchingVariables coloring5310 9 = table5310 9 := by rfl

theorem table5310_entry010 :
    matchingVariables coloring5310 10 = table5310 10 := by rfl

theorem table5310_entry011 :
    matchingVariables coloring5310 11 = table5310 11 := by rfl

theorem table5310_entry012 :
    matchingVariables coloring5310 12 = table5310 12 := by rfl

theorem table5310_entry013 :
    matchingVariables coloring5310 13 = table5310 13 := by rfl

theorem table5310_entry014 :
    matchingVariables coloring5310 14 = table5310 14 := by rfl

theorem table5310_entry015 :
    matchingVariables coloring5310 15 = table5310 15 := by rfl

theorem table5310_entry016 :
    matchingVariables coloring5310 16 = table5310 16 := by rfl

theorem table5310_entry017 :
    matchingVariables coloring5310 17 = table5310 17 := by rfl

theorem table5310_entry018 :
    matchingVariables coloring5310 18 = table5310 18 := by rfl

theorem table5310_entry019 :
    matchingVariables coloring5310 19 = table5310 19 := by rfl

theorem table5310_entry020 :
    matchingVariables coloring5310 20 = table5310 20 := by rfl

theorem table5310_entry021 :
    matchingVariables coloring5310 21 = table5310 21 := by rfl

theorem table5310_entry022 :
    matchingVariables coloring5310 22 = table5310 22 := by rfl

theorem table5310_entry023 :
    matchingVariables coloring5310 23 = table5310 23 := by rfl

theorem table5310_entry024 :
    matchingVariables coloring5310 24 = table5310 24 := by rfl

theorem table5310_entry025 :
    matchingVariables coloring5310 25 = table5310 25 := by rfl

theorem table5310_entry026 :
    matchingVariables coloring5310 26 = table5310 26 := by rfl

theorem table5310_entry027 :
    matchingVariables coloring5310 27 = table5310 27 := by rfl

theorem table5310_entry028 :
    matchingVariables coloring5310 28 = table5310 28 := by rfl

theorem table5310_entry029 :
    matchingVariables coloring5310 29 = table5310 29 := by rfl

theorem table5310_entry030 :
    matchingVariables coloring5310 30 = table5310 30 := by rfl

theorem table5310_entry031 :
    matchingVariables coloring5310 31 = table5310 31 := by rfl

theorem table5310_entry032 :
    matchingVariables coloring5310 32 = table5310 32 := by rfl

theorem table5310_entry033 :
    matchingVariables coloring5310 33 = table5310 33 := by rfl

theorem table5310_entry034 :
    matchingVariables coloring5310 34 = table5310 34 := by rfl

theorem table5310_entry035 :
    matchingVariables coloring5310 35 = table5310 35 := by rfl

theorem table5310_entry036 :
    matchingVariables coloring5310 36 = table5310 36 := by rfl

theorem table5310_entry037 :
    matchingVariables coloring5310 37 = table5310 37 := by rfl

theorem table5310_entry038 :
    matchingVariables coloring5310 38 = table5310 38 := by rfl

theorem table5310_entry039 :
    matchingVariables coloring5310 39 = table5310 39 := by rfl

theorem table5310_entry040 :
    matchingVariables coloring5310 40 = table5310 40 := by rfl

theorem table5310_entry041 :
    matchingVariables coloring5310 41 = table5310 41 := by rfl

theorem table5310_entry042 :
    matchingVariables coloring5310 42 = table5310 42 := by rfl

theorem table5310_entry043 :
    matchingVariables coloring5310 43 = table5310 43 := by rfl

theorem table5310_entry044 :
    matchingVariables coloring5310 44 = table5310 44 := by rfl

theorem table5310_entry045 :
    matchingVariables coloring5310 45 = table5310 45 := by rfl

theorem table5310_entry046 :
    matchingVariables coloring5310 46 = table5310 46 := by rfl

theorem table5310_entry047 :
    matchingVariables coloring5310 47 = table5310 47 := by rfl

theorem table5310_entry048 :
    matchingVariables coloring5310 48 = table5310 48 := by rfl

theorem table5310_entry049 :
    matchingVariables coloring5310 49 = table5310 49 := by rfl

theorem table5310_entry050 :
    matchingVariables coloring5310 50 = table5310 50 := by rfl

theorem table5310_entry051 :
    matchingVariables coloring5310 51 = table5310 51 := by rfl

theorem table5310_entry052 :
    matchingVariables coloring5310 52 = table5310 52 := by rfl

theorem table5310_entry053 :
    matchingVariables coloring5310 53 = table5310 53 := by rfl

theorem table5310_entry054 :
    matchingVariables coloring5310 54 = table5310 54 := by rfl

theorem table5310_entry055 :
    matchingVariables coloring5310 55 = table5310 55 := by rfl

theorem table5310_entry056 :
    matchingVariables coloring5310 56 = table5310 56 := by rfl

theorem table5310_entry057 :
    matchingVariables coloring5310 57 = table5310 57 := by rfl

theorem table5310_entry058 :
    matchingVariables coloring5310 58 = table5310 58 := by rfl

theorem table5310_entry059 :
    matchingVariables coloring5310 59 = table5310 59 := by rfl

theorem table5310_entry060 :
    matchingVariables coloring5310 60 = table5310 60 := by rfl

theorem table5310_entry061 :
    matchingVariables coloring5310 61 = table5310 61 := by rfl

theorem table5310_entry062 :
    matchingVariables coloring5310 62 = table5310 62 := by rfl

theorem table5310_entry063 :
    matchingVariables coloring5310 63 = table5310 63 := by rfl

theorem table5310_entry064 :
    matchingVariables coloring5310 64 = table5310 64 := by rfl

theorem table5310_entry065 :
    matchingVariables coloring5310 65 = table5310 65 := by rfl

theorem table5310_entry066 :
    matchingVariables coloring5310 66 = table5310 66 := by rfl

theorem table5310_entry067 :
    matchingVariables coloring5310 67 = table5310 67 := by rfl

theorem table5310_entry068 :
    matchingVariables coloring5310 68 = table5310 68 := by rfl

theorem table5310_entry069 :
    matchingVariables coloring5310 69 = table5310 69 := by rfl

theorem table5310_entry070 :
    matchingVariables coloring5310 70 = table5310 70 := by rfl

theorem table5310_entry071 :
    matchingVariables coloring5310 71 = table5310 71 := by rfl

theorem table5310_entry072 :
    matchingVariables coloring5310 72 = table5310 72 := by rfl

theorem table5310_entry073 :
    matchingVariables coloring5310 73 = table5310 73 := by rfl

theorem table5310_entry074 :
    matchingVariables coloring5310 74 = table5310 74 := by rfl

theorem table5310_entry075 :
    matchingVariables coloring5310 75 = table5310 75 := by rfl

theorem table5310_entry076 :
    matchingVariables coloring5310 76 = table5310 76 := by rfl

theorem table5310_entry077 :
    matchingVariables coloring5310 77 = table5310 77 := by rfl

theorem table5310_entry078 :
    matchingVariables coloring5310 78 = table5310 78 := by rfl

theorem table5310_entry079 :
    matchingVariables coloring5310 79 = table5310 79 := by rfl

theorem table5310_entry080 :
    matchingVariables coloring5310 80 = table5310 80 := by rfl

theorem table5310_entry081 :
    matchingVariables coloring5310 81 = table5310 81 := by rfl

theorem table5310_entry082 :
    matchingVariables coloring5310 82 = table5310 82 := by rfl

theorem table5310_entry083 :
    matchingVariables coloring5310 83 = table5310 83 := by rfl

theorem table5310_entry084 :
    matchingVariables coloring5310 84 = table5310 84 := by rfl

theorem table5310_entry085 :
    matchingVariables coloring5310 85 = table5310 85 := by rfl

theorem table5310_entry086 :
    matchingVariables coloring5310 86 = table5310 86 := by rfl

theorem table5310_entry087 :
    matchingVariables coloring5310 87 = table5310 87 := by rfl

theorem table5310_entry088 :
    matchingVariables coloring5310 88 = table5310 88 := by rfl

theorem table5310_entry089 :
    matchingVariables coloring5310 89 = table5310 89 := by rfl

theorem table5310_entry090 :
    matchingVariables coloring5310 90 = table5310 90 := by rfl

theorem table5310_entry091 :
    matchingVariables coloring5310 91 = table5310 91 := by rfl

theorem table5310_entry092 :
    matchingVariables coloring5310 92 = table5310 92 := by rfl

theorem table5310_entry093 :
    matchingVariables coloring5310 93 = table5310 93 := by rfl

theorem table5310_entry094 :
    matchingVariables coloring5310 94 = table5310 94 := by rfl

theorem table5310_entry095 :
    matchingVariables coloring5310 95 = table5310 95 := by rfl

theorem table5310_entry096 :
    matchingVariables coloring5310 96 = table5310 96 := by rfl

theorem table5310_entry097 :
    matchingVariables coloring5310 97 = table5310 97 := by rfl

theorem table5310_entry098 :
    matchingVariables coloring5310 98 = table5310 98 := by rfl

theorem table5310_entry099 :
    matchingVariables coloring5310 99 = table5310 99 := by rfl

theorem table5310_entry100 :
    matchingVariables coloring5310 100 = table5310 100 := by rfl

theorem table5310_entry101 :
    matchingVariables coloring5310 101 = table5310 101 := by rfl

theorem table5310_entry102 :
    matchingVariables coloring5310 102 = table5310 102 := by rfl

theorem table5310_entry103 :
    matchingVariables coloring5310 103 = table5310 103 := by rfl

theorem table5310_entry104 :
    matchingVariables coloring5310 104 = table5310 104 := by rfl

theorem table5310_complete : ∀ m, matchingVariables coloring5310 m = table5310 m := by
  intro m
  fin_cases m
  · exact table5310_entry000
  · exact table5310_entry001
  · exact table5310_entry002
  · exact table5310_entry003
  · exact table5310_entry004
  · exact table5310_entry005
  · exact table5310_entry006
  · exact table5310_entry007
  · exact table5310_entry008
  · exact table5310_entry009
  · exact table5310_entry010
  · exact table5310_entry011
  · exact table5310_entry012
  · exact table5310_entry013
  · exact table5310_entry014
  · exact table5310_entry015
  · exact table5310_entry016
  · exact table5310_entry017
  · exact table5310_entry018
  · exact table5310_entry019
  · exact table5310_entry020
  · exact table5310_entry021
  · exact table5310_entry022
  · exact table5310_entry023
  · exact table5310_entry024
  · exact table5310_entry025
  · exact table5310_entry026
  · exact table5310_entry027
  · exact table5310_entry028
  · exact table5310_entry029
  · exact table5310_entry030
  · exact table5310_entry031
  · exact table5310_entry032
  · exact table5310_entry033
  · exact table5310_entry034
  · exact table5310_entry035
  · exact table5310_entry036
  · exact table5310_entry037
  · exact table5310_entry038
  · exact table5310_entry039
  · exact table5310_entry040
  · exact table5310_entry041
  · exact table5310_entry042
  · exact table5310_entry043
  · exact table5310_entry044
  · exact table5310_entry045
  · exact table5310_entry046
  · exact table5310_entry047
  · exact table5310_entry048
  · exact table5310_entry049
  · exact table5310_entry050
  · exact table5310_entry051
  · exact table5310_entry052
  · exact table5310_entry053
  · exact table5310_entry054
  · exact table5310_entry055
  · exact table5310_entry056
  · exact table5310_entry057
  · exact table5310_entry058
  · exact table5310_entry059
  · exact table5310_entry060
  · exact table5310_entry061
  · exact table5310_entry062
  · exact table5310_entry063
  · exact table5310_entry064
  · exact table5310_entry065
  · exact table5310_entry066
  · exact table5310_entry067
  · exact table5310_entry068
  · exact table5310_entry069
  · exact table5310_entry070
  · exact table5310_entry071
  · exact table5310_entry072
  · exact table5310_entry073
  · exact table5310_entry074
  · exact table5310_entry075
  · exact table5310_entry076
  · exact table5310_entry077
  · exact table5310_entry078
  · exact table5310_entry079
  · exact table5310_entry080
  · exact table5310_entry081
  · exact table5310_entry082
  · exact table5310_entry083
  · exact table5310_entry084
  · exact table5310_entry085
  · exact table5310_entry086
  · exact table5310_entry087
  · exact table5310_entry088
  · exact table5310_entry089
  · exact table5310_entry090
  · exact table5310_entry091
  · exact table5310_entry092
  · exact table5310_entry093
  · exact table5310_entry094
  · exact table5310_entry095
  · exact table5310_entry096
  · exact table5310_entry097
  · exact table5310_entry098
  · exact table5310_entry099
  · exact table5310_entry100
  · exact table5310_entry101
  · exact table5310_entry102
  · exact table5310_entry103
  · exact table5310_entry104

#print axioms table5310_complete

def expanded5310 : Polynomial 143 := [(1, exponentOfVariables [0, 64, 104, 139]),
  (1, exponentOfVariables [0, 75, 87, 139]),
  (1, exponentOfVariables [11, 38, 87, 139]),
  (1, exponentOfVariables [11, 48, 87, 127]),
  (1, exponentOfVariables [19, 48, 75, 123]),
  (1, exponentOfVariables [19, 48, 81, 104])]

theorem table5310_expanded : tablePolynomial table5310 = expanded5310 := by
  rfl

theorem table5310_exponent00 :
    exponentOfVariables (n := 143) [0, 64, 104, 139] =
      (fun i => if i.val = 0 then (1) else if i.val = 64 then (1) else if i.val = 104 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5310_exponent01 :
    exponentOfVariables (n := 143) [0, 75, 87, 139] =
      (fun i => if i.val = 0 then (1) else if i.val = 75 then (1) else if i.val = 87 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5310_exponent02 :
    exponentOfVariables (n := 143) [11, 38, 87, 139] =
      (fun i => if i.val = 11 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 139 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5310_exponent03 :
    exponentOfVariables (n := 143) [11, 48, 87, 127] =
      (fun i => if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 127 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5310_exponent04 :
    exponentOfVariables (n := 143) [19, 48, 75, 123] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 123 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5310_exponent05 :
    exponentOfVariables (n := 143) [19, 48, 81, 104] =
      (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 81 then (1) else if i.val = 104 then (1) else 0) := by
  funext i
  simp only [exponentOfVariables, Pi.add_apply, Pi.zero_apply]
  dsimp
  split_ifs <;> omega

theorem table5310_polynomial : expanded5310 = amplitude5310 := by
  simp only [expanded5310, amplitude5310, table5310_exponent00, table5310_exponent01, table5310_exponent02, table5310_exponent03, table5310_exponent04, table5310_exponent05]

theorem premiseCheck102 : agrees
    (scale (1) (translate (0 : Exponent 143) amplitude5310)) p102 = true := by
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
