import MonochromaticQuantumGraphs.N8D3.MixedPermApplyFast8

/-!
# Packed S8 images, codes 0 through 255

The table is generated from the exact mixed-radix decoder.  Its
bounded theorem is replayed by the Lean kernel in this module.
-/

namespace MonochromaticQuantumGraphs.N8D3

def vertexPermImagesPacked8Shard000 (i : Fin 256) : Nat :=
  if i.val < 128 then
    if i.val < 64 then
      if i.val < 32 then
        if i.val < 16 then
          if i.val < 8 then
            if i.val < 4 then
              if i.val < 2 then
                if i.val < 1 then
                  16434824
                else
                  16434817
              else
                if i.val < 3 then
                  16434698
                else
                  16433291
            else
              if i.val < 6 then
                if i.val < 5 then
                  16418444
                else
                  16270989
              else
                if i.val < 7 then
                  14861966
                else
                  1754767
          else
            if i.val < 12 then
              if i.val < 10 then
                if i.val < 9 then
                  16434768
                else
                  16434705
              else
                if i.val < 11 then
                  16434754
                else
                  16433235
            else
              if i.val < 14 then
                if i.val < 13 then
                  16418388
                else
                  16270933
              else
                if i.val < 15 then
                  14861910
                else
                  1754711
        else
          if i.val < 24 then
            if i.val < 20 then
              if i.val < 18 then
                if i.val < 17 then
                  16433816
                else
                  16433305
              else
                if i.val < 19 then
                  16433690
                else
                  16433795
            else
              if i.val < 22 then
                if i.val < 21 then
                  16417436
                else
                  16269981
              else
                if i.val < 23 then
                  14860958
                else
                  1753759
          else
            if i.val < 28 then
              if i.val < 26 then
                if i.val < 25 then
                  16422560
                else
                  16418465
              else
                if i.val < 27 then
                  16422434
                else
                  16421027
            else
              if i.val < 30 then
                if i.val < 29 then
                  16422532
                else
                  16258725
              else
                if i.val < 31 then
                  14849702
                else
                  1742503
      else
        if i.val < 48 then
          if i.val < 40 then
            if i.val < 36 then
              if i.val < 34 then
                if i.val < 33 then
                  16303784
                else
                  16271017
              else
                if i.val < 35 then
                  16303658
                else
                  16302251
            else
              if i.val < 38 then
                if i.val < 37 then
                  16287404
                else
                  16303749
              else
                if i.val < 39 then
                  14730926
                else
                  1623727
          else
            if i.val < 44 then
              if i.val < 42 then
                if i.val < 41 then
                  15124144
                else
                  14862001
              else
                if i.val < 43 then
                  15124018
                else
                  15122611
            else
              if i.val < 46 then
                if i.val < 45 then
                  15107764
                else
                  14960309
              else
                if i.val < 47 then
                  15124102
                else
                  444087
        else
          if i.val < 56 then
            if i.val < 52 then
              if i.val < 50 then
                if i.val < 49 then
                  3851960
                else
                  1754809
              else
                if i.val < 51 then
                  3851834
                else
                  3850427
            else
              if i.val < 54 then
                if i.val < 53 then
                  3835580
                else
                  3688125
              else
                if i.val < 55 then
                  2279102
                else
                  3851911
          else
            if i.val < 60 then
              if i.val < 58 then
                if i.val < 57 then
                  16434376
                else
                  16434369
              else
                if i.val < 59 then
                  16433354
                else
                  16434187
            else
              if i.val < 62 then
                if i.val < 61 then
                  16417996
                else
                  16270541
              else
                if i.val < 63 then
                  14861518
                else
                  1754319
    else
      if i.val < 96 then
        if i.val < 80 then
          if i.val < 72 then
            if i.val < 68 then
              if i.val < 66 then
                if i.val < 65 then
                  16433872
                else
                  16433361
              else
                if i.val < 67 then
                  16433858
                else
                  16433683
            else
              if i.val < 70 then
                if i.val < 69 then
                  16417492
                else
                  16270037
              else
                if i.val < 71 then
                  14861014
                else
                  1753815
          else
            if i.val < 76 then
              if i.val < 74 then
                if i.val < 73 then
                  16434264
                else
                  16434201
              else
                if i.val < 75 then
                  16433242
                else
                  16434243
            else
              if i.val < 78 then
                if i.val < 77 then
                  16417884
                else
                  16270429
              else
                if i.val < 79 then
                  14861406
                else
                  1754207
        else
          if i.val < 88 then
            if i.val < 84 then
              if i.val < 82 then
                if i.val < 81 then
                  16422112
                else
                  16418017
              else
                if i.val < 83 then
                  16421090
                else
                  16421923
            else
              if i.val < 86 then
                if i.val < 85 then
                  16422084
                else
                  16258277
              else
                if i.val < 87 then
                  14849254
                else
                  1742055
          else
            if i.val < 92 then
              if i.val < 90 then
                if i.val < 89 then
                  16303336
                else
                  16270569
              else
                if i.val < 91 then
                  16302314
                else
                  16303147
            else
              if i.val < 94 then
                if i.val < 93 then
                  16286956
                else
                  16303301
              else
                if i.val < 95 then
                  14730478
                else
                  1623279
      else
        if i.val < 112 then
          if i.val < 104 then
            if i.val < 100 then
              if i.val < 98 then
                if i.val < 97 then
                  15123696
                else
                  14861553
              else
                if i.val < 99 then
                  15122674
                else
                  15123507
            else
              if i.val < 102 then
                if i.val < 101 then
                  15107316
                else
                  14959861
              else
                if i.val < 103 then
                  15123654
                else
                  443639
          else
            if i.val < 108 then
              if i.val < 106 then
                if i.val < 105 then
                  3851512
                else
                  1754361
              else
                if i.val < 107 then
                  3850490
                else
                  3851323
            else
              if i.val < 110 then
                if i.val < 109 then
                  3835132
                else
                  3687677
              else
                if i.val < 111 then
                  2278654
                else
                  3851463
        else
          if i.val < 120 then
            if i.val < 116 then
              if i.val < 114 then
                if i.val < 113 then
                  16426760
                else
                  16426753
              else
                if i.val < 115 then
                  16418570
                else
                  16425227
            else
              if i.val < 118 then
                if i.val < 117 then
                  16426508
                else
                  16262925
              else
                if i.val < 119 then
                  14853902
                else
                  1746703
          else
            if i.val < 124 then
              if i.val < 122 then
                if i.val < 121 then
                  16422672
                else
                  16418577
              else
                if i.val < 123 then
                  16422658
                else
                  16421139
            else
              if i.val < 126 then
                if i.val < 125 then
                  16422420
                else
                  16258837
              else
                if i.val < 127 then
                  14849814
                else
                  1742615
  else
    if i.val < 192 then
      if i.val < 160 then
        if i.val < 144 then
          if i.val < 136 then
            if i.val < 132 then
              if i.val < 130 then
                if i.val < 129 then
                  16425752
                else
                  16425241
              else
                if i.val < 131 then
                  16417562
                else
                  16425731
            else
              if i.val < 134 then
                if i.val < 133 then
                  16425500
                else
                  16261917
              else
                if i.val < 135 then
                  14852894
                else
                  1745695
          else
            if i.val < 140 then
              if i.val < 138 then
                if i.val < 137 then
                  16426592
                else
                  16426529
              else
                if i.val < 139 then
                  16418402
                else
                  16425059
            else
              if i.val < 142 then
                if i.val < 141 then
                  16426564
                else
                  16262757
              else
                if i.val < 143 then
                  14853734
                else
                  1746535
        else
          if i.val < 152 then
            if i.val < 148 then
              if i.val < 146 then
                if i.val < 145 then
                  16295720
                else
                  16262953
              else
                if i.val < 147 then
                  16287530
                else
                  16294187
            else
              if i.val < 150 then
                if i.val < 149 then
                  16295468
                else
                  16295685
              else
                if i.val < 151 then
                  14722862
                else
                  1615663
          else
            if i.val < 156 then
              if i.val < 154 then
                if i.val < 153 then
                  15116080
                else
                  14853937
              else
                if i.val < 155 then
                  15107890
                else
                  15114547
            else
              if i.val < 158 then
                if i.val < 157 then
                  15115828
                else
                  14952245
              else
                if i.val < 159 then
                  15116038
                else
                  436023
      else
        if i.val < 176 then
          if i.val < 168 then
            if i.val < 164 then
              if i.val < 162 then
                if i.val < 161 then
                  3843896
                else
                  1746745
              else
                if i.val < 163 then
                  3835706
                else
                  3842363
            else
              if i.val < 166 then
                if i.val < 165 then
                  3843644
                else
                  3680061
              else
                if i.val < 167 then
                  2271038
                else
                  3843847
          else
            if i.val < 172 then
              if i.val < 170 then
                if i.val < 169 then
                  16336712
                else
                  16336705
              else
                if i.val < 171 then
                  16271178
                else
                  16335179
            else
              if i.val < 174 then
                if i.val < 173 then
                  16320332
                else
                  16336397
              else
                if i.val < 175 then
                  14763854
                else
                  1656655
        else
          if i.val < 184 then
            if i.val < 180 then
              if i.val < 178 then
                if i.val < 177 then
                  16303952
                else
                  16271185
              else
                if i.val < 179 then
                  16303938
                else
                  16302419
            else
              if i.val < 182 then
                if i.val < 181 then
                  16287572
                else
                  16303637
              else
                if i.val < 183 then
                  14731094
                else
                  1623895
          else
            if i.val < 188 then
              if i.val < 186 then
                if i.val < 185 then
                  16335704
                else
                  16335193
              else
                if i.val < 187 then
                  16270170
                else
                  16335683
            else
              if i.val < 190 then
                if i.val < 189 then
                  16319324
                else
                  16335389
              else
                if i.val < 191 then
                  14762846
                else
                  1655647
    else
      if i.val < 224 then
        if i.val < 208 then
          if i.val < 200 then
            if i.val < 196 then
              if i.val < 194 then
                if i.val < 193 then
                  16324448
                else
                  16320353
              else
                if i.val < 195 then
                  16258914
                else
                  16322915
            else
              if i.val < 198 then
                if i.val < 197 then
                  16324420
                else
                  16324133
              else
                if i.val < 199 then
                  14751590
                else
                  1644391
          else
            if i.val < 204 then
              if i.val < 202 then
                if i.val < 201 then
                  16336488
                else
                  16336425
              else
                if i.val < 203 then
                  16270954
                else
                  16334955
            else
              if i.val < 206 then
                if i.val < 205 then
                  16320108
                else
                  16336453
              else
                if i.val < 207 then
                  14763630
                else
                  1656431
        else
          if i.val < 216 then
            if i.val < 212 then
              if i.val < 210 then
                if i.val < 209 then
                  15026032
                else
                  14763889
              else
                if i.val < 211 then
                  14960498
                else
                  15024499
            else
              if i.val < 214 then
                if i.val < 213 then
                  15009652
                else
                  15025717
              else
                if i.val < 215 then
                  15025990
                else
                  345975
          else
            if i.val < 220 then
              if i.val < 218 then
                if i.val < 217 then
                  3753848
                else
                  1656697
              else
                if i.val < 219 then
                  3688314
                else
                  3752315
            else
              if i.val < 222 then
                if i.val < 221 then
                  3737468
                else
                  3753533
              else
                if i.val < 223 then
                  2180990
                else
                  3753799
      else
        if i.val < 240 then
          if i.val < 232 then
            if i.val < 228 then
              if i.val < 226 then
                if i.val < 225 then
                  15386504
                else
                  15386497
              else
                if i.val < 227 then
                  14862218
                else
                  15384971
            else
              if i.val < 230 then
                if i.val < 229 then
                  15370124
                else
                  15222669
              else
                if i.val < 231 then
                  15386126
                else
                  706447
          else
            if i.val < 236 then
              if i.val < 234 then
                if i.val < 233 then
                  15124368
                else
                  14862225
              else
                if i.val < 235 then
                  15124354
                else
                  15122835
            else
              if i.val < 238 then
                if i.val < 237 then
                  15107988
                else
                  14960533
              else
                if i.val < 239 then
                  15123990
                else
                  444311
        else
          if i.val < 248 then
            if i.val < 244 then
              if i.val < 242 then
                if i.val < 241 then
                  15385496
                else
                  15384985
              else
                if i.val < 243 then
                  14861210
                else
                  15385475
            else
              if i.val < 246 then
                if i.val < 245 then
                  15369116
                else
                  15221661
              else
                if i.val < 247 then
                  15385118
                else
                  705439
          else
            if i.val < 252 then
              if i.val < 250 then
                if i.val < 249 then
                  15374240
                else
                  15370145
              else
                if i.val < 251 then
                  14849954
                else
                  15372707
            else
              if i.val < 254 then
                if i.val < 253 then
                  15374212
                else
                  15210405
              else
                if i.val < 255 then
                  15373862
                else
                  694183

def vertexPermGlobalCode8Shard000 (i : Fin 256) : Fin 40320 :=
  ⟨0 + i.val, by omega⟩

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem vertexPermImage8Shard000_correct :
    ∀ i : Fin 256, ∀ v : Fin 8,
      Fin.ofNat 8
          (vertexPermImagesPacked8Shard000 i / (8 ^ v.val)) =
        vertexPermApplyFast8 (vertexPermGlobalCode8Shard000 i) v := by
  intro i
  fin_cases i <;> decide +kernel

end MonochromaticQuantumGraphs.N8D3
