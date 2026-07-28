import MonochromaticQuantumGraphs.N8D3.VertexPermImageData8.Shard000

/-!
# Packed S8 images, codes 256 through 511

The table is generated from the exact mixed-radix decoder.  Its
bounded theorem is replayed by the Lean kernel in this module.
-/

namespace MonochromaticQuantumGraphs.N8D3

def vertexPermImagesPacked8Shard001 (i : Fin 256) : Nat :=
  if i.val < 128 then
    if i.val < 64 then
      if i.val < 32 then
        if i.val < 16 then
          if i.val < 8 then
            if i.val < 4 then
              if i.val < 2 then
                if i.val < 1 then
                  15255464
                else
                  15222697
              else
                if i.val < 3 then
                  14731178
                else
                  15253931
            else
              if i.val < 6 then
                if i.val < 5 then
                  15239084
                else
                  15255429
              else
                if i.val < 7 then
                  15255086
                else
                  575407
          else
            if i.val < 12 then
              if i.val < 10 then
                if i.val < 9 then
                  15386224
                else
                  15386161
              else
                if i.val < 11 then
                  14861938
                else
                  15384691
            else
              if i.val < 14 then
                if i.val < 13 then
                  15369844
                else
                  15222389
              else
                if i.val < 15 then
                  15386182
                else
                  706167
        else
          if i.val < 24 then
            if i.val < 20 then
              if i.val < 18 then
                if i.val < 17 then
                  2803640
                else
                  706489
              else
                if i.val < 19 then
                  2279354
                else
                  2802107
            else
              if i.val < 22 then
                if i.val < 21 then
                  2787260
                else
                  2639805
              else
                if i.val < 23 then
                  2803262
                else
                  2803591
          else
            if i.val < 28 then
              if i.val < 26 then
                if i.val < 25 then
                  5949384
                else
                  5949377
              else
                if i.val < 27 then
                  1755082
                else
                  5947851
            else
              if i.val < 30 then
                if i.val < 29 then
                  5933004
                else
                  5785549
              else
                if i.val < 31 then
                  4376526
                else
                  5948943
      else
        if i.val < 48 then
          if i.val < 40 then
            if i.val < 36 then
              if i.val < 34 then
                if i.val < 33 then
                  3852240
                else
                  1755089
              else
                if i.val < 35 then
                  3852226
                else
                  3850707
            else
              if i.val < 38 then
                if i.val < 37 then
                  3835860
                else
                  3688405
              else
                if i.val < 39 then
                  2279382
                else
                  3851799
          else
            if i.val < 44 then
              if i.val < 42 then
                if i.val < 41 then
                  5948376
                else
                  5947865
              else
                if i.val < 43 then
                  1754074
                else
                  5948355
            else
              if i.val < 46 then
                if i.val < 45 then
                  5931996
                else
                  5784541
              else
                if i.val < 47 then
                  4375518
                else
                  5947935
        else
          if i.val < 56 then
            if i.val < 52 then
              if i.val < 50 then
                if i.val < 49 then
                  5937120
                else
                  5933025
              else
                if i.val < 51 then
                  1742818
                else
                  5935587
            else
              if i.val < 54 then
                if i.val < 53 then
                  5937092
                else
                  5773285
              else
                if i.val < 55 then
                  4364262
                else
                  5936679
          else
            if i.val < 60 then
              if i.val < 58 then
                if i.val < 57 then
                  5818344
                else
                  5785577
              else
                if i.val < 59 then
                  1624042
                else
                  5816811
            else
              if i.val < 62 then
                if i.val < 61 then
                  5801964
                else
                  5818309
              else
                if i.val < 63 then
                  4245486
                else
                  5817903
    else
      if i.val < 96 then
        if i.val < 80 then
          if i.val < 72 then
            if i.val < 68 then
              if i.val < 66 then
                if i.val < 65 then
                  4638704
                else
                  4376561
              else
                if i.val < 67 then
                  444402
                else
                  4637171
            else
              if i.val < 70 then
                if i.val < 69 then
                  4622324
                else
                  4474869
              else
                if i.val < 71 then
                  4638662
                else
                  4638263
          else
            if i.val < 76 then
              if i.val < 74 then
                if i.val < 73 then
                  5949048
                else
                  5948985
              else
                if i.val < 75 then
                  1754746
                else
                  5947515
            else
              if i.val < 78 then
                if i.val < 77 then
                  5932668
                else
                  5785213
              else
                if i.val < 79 then
                  4376190
                else
                  5948999
        else
          if i.val < 88 then
            if i.val < 84 then
              if i.val < 82 then
                if i.val < 81 then
                  16431240
                else
                  16431233
              else
                if i.val < 83 then
                  16431114
                else
                  16418955
            else
              if i.val < 86 then
                if i.val < 85 then
                  16429196
                else
                  16267405
              else
                if i.val < 87 then
                  14858382
                else
                  1751183
          else
            if i.val < 92 then
              if i.val < 90 then
                if i.val < 89 then
                  16431184
                else
                  16431121
              else
                if i.val < 91 then
                  16431170
                else
                  16418899
            else
              if i.val < 94 then
                if i.val < 93 then
                  16429140
                else
                  16267349
              else
                if i.val < 95 then
                  14858326
                else
                  1751127
      else
        if i.val < 112 then
          if i.val < 104 then
            if i.val < 100 then
              if i.val < 98 then
                if i.val < 97 then
                  16423064
                else
                  16418969
              else
                if i.val < 99 then
                  16422938
                else
                  16423043
            else
              if i.val < 102 then
                if i.val < 101 then
                  16421020
                else
                  16259229
              else
                if i.val < 103 then
                  14850206
                else
                  1743007
          else
            if i.val < 108 then
              if i.val < 106 then
                if i.val < 105 then
                  16429728
                else
                  16429217
              else
                if i.val < 107 then
                  16429602
                else
                  16417443
            else
              if i.val < 110 then
                if i.val < 109 then
                  16429700
                else
                  16265893
              else
                if i.val < 111 then
                  14856870
                else
                  1749671
        else
          if i.val < 120 then
            if i.val < 116 then
              if i.val < 114 then
                if i.val < 113 then
                  16300200
                else
                  16267433
              else
                if i.val < 115 then
                  16300074
                else
                  16287915
            else
              if i.val < 118 then
                if i.val < 117 then
                  16298156
                else
                  16300165
              else
                if i.val < 119 then
                  14727342
                else
                  1620143
          else
            if i.val < 124 then
              if i.val < 122 then
                if i.val < 121 then
                  15120560
                else
                  14858417
              else
                if i.val < 123 then
                  15120434
                else
                  15108275
            else
              if i.val < 126 then
                if i.val < 125 then
                  15118516
                else
                  14956725
              else
                if i.val < 127 then
                  15120518
                else
                  440503
  else
    if i.val < 192 then
      if i.val < 160 then
        if i.val < 144 then
          if i.val < 136 then
            if i.val < 132 then
              if i.val < 130 then
                if i.val < 129 then
                  3848376
                else
                  1751225
              else
                if i.val < 131 then
                  3848250
                else
                  3836091
            else
              if i.val < 134 then
                if i.val < 133 then
                  3846332
                else
                  3684541
              else
                if i.val < 135 then
                  2275518
                else
                  3848327
          else
            if i.val < 140 then
              if i.val < 138 then
                if i.val < 137 then
                  16427208
                else
                  16427201
              else
                if i.val < 139 then
                  16419018
                else
                  16427019
            else
              if i.val < 142 then
                if i.val < 141 then
                  16425164
                else
                  16263373
              else
                if i.val < 143 then
                  14854350
                else
                  1747151
        else
          if i.val < 152 then
            if i.val < 148 then
              if i.val < 146 then
                if i.val < 145 then
                  16423120
                else
                  16419025
              else
                if i.val < 147 then
                  16423106
                else
                  16422931
            else
              if i.val < 150 then
                if i.val < 149 then
                  16421076
                else
                  16259285
              else
                if i.val < 151 then
                  14850262
                else
                  1743063
          else
            if i.val < 156 then
              if i.val < 154 then
                if i.val < 153 then
                  16427096
                else
                  16427033
              else
                if i.val < 155 then
                  16418906
                else
                  16427075
            else
              if i.val < 158 then
                if i.val < 157 then
                  16425052
                else
                  16263261
              else
                if i.val < 159 then
                  14854238
                else
                  1747039
      else
        if i.val < 176 then
          if i.val < 168 then
            if i.val < 164 then
              if i.val < 162 then
                if i.val < 161 then
                  16425696
                else
                  16425185
              else
                if i.val < 163 then
                  16417506
                else
                  16425507
            else
              if i.val < 166 then
                if i.val < 165 then
                  16425668
                else
                  16261861
              else
                if i.val < 167 then
                  14852838
                else
                  1745639
          else
            if i.val < 172 then
              if i.val < 170 then
                if i.val < 169 then
                  16296168
                else
                  16263401
              else
                if i.val < 171 then
                  16287978
                else
                  16295979
            else
              if i.val < 174 then
                if i.val < 173 then
                  16294124
                else
                  16296133
              else
                if i.val < 175 then
                  14723310
                else
                  1616111
        else
          if i.val < 184 then
            if i.val < 180 then
              if i.val < 178 then
                if i.val < 177 then
                  15116528
                else
                  14854385
              else
                if i.val < 179 then
                  15108338
                else
                  15116339
            else
              if i.val < 182 then
                if i.val < 181 then
                  15114484
                else
                  14952693
              else
                if i.val < 183 then
                  15116486
                else
                  436471
          else
            if i.val < 188 then
              if i.val < 186 then
                if i.val < 185 then
                  3844344
                else
                  1747193
              else
                if i.val < 187 then
                  3836154
                else
                  3844155
            else
              if i.val < 190 then
                if i.val < 189 then
                  3842300
                else
                  3680509
              else
                if i.val < 191 then
                  2271486
                else
                  3844295
    else
      if i.val < 224 then
        if i.val < 208 then
          if i.val < 200 then
            if i.val < 196 then
              if i.val < 194 then
                if i.val < 193 then
                  16430344
                else
                  16430337
              else
                if i.val < 195 then
                  16429322
                else
                  16418059
            else
              if i.val < 198 then
                if i.val < 197 then
                  16430092
                else
                  16266509
              else
                if i.val < 199 then
                  14857486
                else
                  1750287
          else
            if i.val < 204 then
              if i.val < 202 then
                if i.val < 201 then
                  16429840
                else
                  16429329
              else
                if i.val < 203 then
                  16429826
                else
                  16417555
            else
              if i.val < 206 then
                if i.val < 205 then
                  16429588
                else
                  16266005
              else
                if i.val < 207 then
                  14856982
                else
                  1749783
        else
          if i.val < 216 then
            if i.val < 212 then
              if i.val < 210 then
                if i.val < 209 then
                  16422168
                else
                  16418073
              else
                if i.val < 211 then
                  16421146
                else
                  16422147
            else
              if i.val < 214 then
                if i.val < 213 then
                  16421916
                else
                  16258333
              else
                if i.val < 215 then
                  14849310
                else
                  1742111
          else
            if i.val < 220 then
              if i.val < 218 then
                if i.val < 217 then
                  16430176
                else
                  16430113
              else
                if i.val < 219 then
                  16429154
                else
                  16417891
            else
              if i.val < 222 then
                if i.val < 221 then
                  16430148
                else
                  16266341
              else
                if i.val < 223 then
                  14857318
                else
                  1750119
      else
        if i.val < 240 then
          if i.val < 232 then
            if i.val < 228 then
              if i.val < 226 then
                if i.val < 225 then
                  16299304
                else
                  16266537
              else
                if i.val < 227 then
                  16298282
                else
                  16287019
            else
              if i.val < 230 then
                if i.val < 229 then
                  16299052
                else
                  16299269
              else
                if i.val < 231 then
                  14726446
                else
                  1619247
          else
            if i.val < 236 then
              if i.val < 234 then
                if i.val < 233 then
                  15119664
                else
                  14857521
              else
                if i.val < 235 then
                  15118642
                else
                  15107379
            else
              if i.val < 238 then
                if i.val < 237 then
                  15119412
                else
                  14955829
              else
                if i.val < 239 then
                  15119622
                else
                  439607
        else
          if i.val < 248 then
            if i.val < 244 then
              if i.val < 242 then
                if i.val < 241 then
                  3847480
                else
                  1750329
              else
                if i.val < 243 then
                  3846458
                else
                  3835195
            else
              if i.val < 246 then
                if i.val < 245 then
                  3847228
                else
                  3683645
              else
                if i.val < 247 then
                  2274622
                else
                  3847431
          else
            if i.val < 252 then
              if i.val < 250 then
                if i.val < 249 then
                  16333128
                else
                  16333121
              else
                if i.val < 251 then
                  16267594
                else
                  16320843
            else
              if i.val < 254 then
                if i.val < 253 then
                  16331084
                else
                  16332813
              else
                if i.val < 255 then
                  14760270
                else
                  1653071

def vertexPermGlobalCode8Shard001 (i : Fin 256) : Fin 40320 :=
  ⟨256 + i.val, by omega⟩

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem vertexPermImage8Shard001_correct :
    ∀ i : Fin 256, ∀ v : Fin 8,
      Fin.ofNat 8
          (vertexPermImagesPacked8Shard001 i / (8 ^ v.val)) =
        vertexPermApplyFast8 (vertexPermGlobalCode8Shard001 i) v := by
  intro i
  fin_cases i <;> decide +kernel

end MonochromaticQuantumGraphs.N8D3
