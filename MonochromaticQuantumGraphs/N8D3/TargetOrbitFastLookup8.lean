import MonochromaticQuantumGraphs.N8D3.TargetOrbitsBase8

/-!
# Compact lookup tables for N8/D3 orbit replay

The least-significant digit of each word is the value at input zero.  The
three bounded bridge theorems below kernel-check every entry against the
frozen tables and permutation decoder in `GeneratedData` and
`TargetOrbitsBase8`.
-/

namespace MonochromaticQuantumGraphs.N8D3

def matchingMateWordTable8 : Array Nat := #[
  14570689, 11789505, 9925825, 14527233, 11513089, 7810817, 14498113,
  9272641, 7434049, 11254145, 9042817, 6971265, 5716417, 5368769, 5135809,
  14570010, 11788826, 9925146, 14522914, 11508770, 7806498, 14465066,
  9239594, 7401002, 10991666, 8780338, 6708786, 3618874, 3271226, 3038266,
  14569555, 11788371, 9924691, 14487907, 11243939, 5706211, 14459179,
  8974763, 5300715, 10985779, 8745331, 4608499, 3612987, 3236219, 2773435,
  14518868, 11504724, 7802452, 14484316, 11240348, 5702620, 14451948,
  6852524, 5017068, 10978548, 6623092, 4557812, 3605756, 2952572, 2722748,
  14432341, 9206869, 7368277, 14426909, 8942493, 5268445, 14423269,
  6823845, 4988389, 8680693, 6565685, 4471285, 3171581, 2895165, 2636221,
  10729558, 8518230, 6446678, 10724126, 8483678, 4346846, 10720486,
  6365030, 4299750, 8451310, 6336302, 4241902, 2249982, 2206526, 2177406,
  1521751, 1174103, 941143, 1516319, 1139551, 676767, 1512679, 859495,
  629671, 1107183, 830767, 571823, 414967, 371511, 342391]

def matchingMatePlaceTable8 : Array Nat :=
  #[1, 8, 64, 512, 4096, 32768, 262144, 2097152]

def matchingMateLookup8 (m : Fin 105) (v : Fin 8) : Fin 8 :=
  Fin.ofNat 8
    (matchingMateWordTable8[m.val]! / matchingMatePlaceTable8[v.val]!)

def targetOrbitRepWordTable8 : Array Nat := #[
  0, 11025, 44100, 176400, 209475, 22155, 33180, 55230, 165480,
  187530, 198555, 220605, 573405, 639555, 88620, 143745, 176820,
  187845, 231945, 253995, 298095, 309120, 320145, 354480, 387555,
  574980, 586005, 608055, 619080, 420945, 476070]

def targetOrbitRepPlaceTable8 : Array Nat := #[1, 105, 11025]

def targetOrbitRepLookup8 (r : Fin 31) (c : Fin 3) : Fin 105 :=
  Fin.ofNat 105
    (targetOrbitRepWordTable8[r.val]! / targetOrbitRepPlaceTable8[c.val]!)

def colorPermWordTable8 : Array Nat := #[21, 19, 5, 15, 7, 11]

def colorPermPlaceTable8 : Array Nat := #[1, 3, 9]

def colorPermLookup8 (code : Fin 6) (c : Fin 3) : Fin 3 :=
  Fin.ofNat 3
    (colorPermWordTable8[code.val]! / colorPermPlaceTable8[c.val]!)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem matchingMateLookup8_eq_matchingMate8 :
    ∀ m : Fin 105, ∀ v : Fin 8,
      matchingMateLookup8 m v = matchingMate8 m v := by
  intro m
  fin_cases m <;> decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 1000000 in
theorem targetOrbitRepLookup8_eq_targetOrbitRep8 :
    ∀ r : Fin 31, ∀ c : Fin 3,
      targetOrbitRepLookup8 r c = targetOrbitRep8 r c := by
  intro r
  fin_cases r <;> decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 1000000 in
theorem colorPermLookup8_eq_colorPermOfCode8 :
    ∀ code : Fin 6, ∀ c : Fin 3,
      colorPermLookup8 code c = colorPermOfCode8 code c := by
  intro code
  fin_cases code <;> decide +kernel

end MonochromaticQuantumGraphs.N8D3
