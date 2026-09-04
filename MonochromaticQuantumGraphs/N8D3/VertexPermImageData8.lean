import MonochromaticQuantumGraphs.N8D3.VertexPermImageData8.Shard157

/-!
# Fast packed images for all 40,320 mixed-radix S8 codes

The data shards and their correctness theorems form a serial import
chain.  This module adds only a balanced global dispatcher and combines
the already kernel-checked shard theorems.
-/

namespace MonochromaticQuantumGraphs.N8D3

/-- Extract image `v` from eight base-8 digits packed into `Nat`. -/
def vertexPermImageOfPacked8 (packed : Nat) (v : Fin 8) : Fin 8 :=
  Fin.ofNat 8 (packed / (8 ^ v.val))

/-- Packed images of the permutation selected by a mixed-radix code. -/
def vertexPermImagesPacked8 (code : Fin 40320) : Nat :=
  if h : code.val < 20224 then
    if h : code.val < 9984 then
      if h : code.val < 4864 then
        if h : code.val < 2304 then
          if h : code.val < 1024 then
            if h : code.val < 512 then
              if h : code.val < 256 then
                vertexPermImagesPacked8Shard000 (⟨code.val, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard001 (⟨code.val - 256, by omega⟩ : Fin 256)
            else
              if h : code.val < 768 then
                vertexPermImagesPacked8Shard002 (⟨code.val - 512, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard003 (⟨code.val - 768, by omega⟩ : Fin 256)
          else
            if h : code.val < 1536 then
              if h : code.val < 1280 then
                vertexPermImagesPacked8Shard004 (⟨code.val - 1024, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard005 (⟨code.val - 1280, by omega⟩ : Fin 256)
            else
              if h : code.val < 1792 then
                vertexPermImagesPacked8Shard006 (⟨code.val - 1536, by omega⟩ : Fin 256)
              else
                if h : code.val < 2048 then
                  vertexPermImagesPacked8Shard007 (⟨code.val - 1792, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard008 (⟨code.val - 2048, by omega⟩ : Fin 256)
        else
          if h : code.val < 3584 then
            if h : code.val < 2816 then
              if h : code.val < 2560 then
                vertexPermImagesPacked8Shard009 (⟨code.val - 2304, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard010 (⟨code.val - 2560, by omega⟩ : Fin 256)
            else
              if h : code.val < 3072 then
                vertexPermImagesPacked8Shard011 (⟨code.val - 2816, by omega⟩ : Fin 256)
              else
                if h : code.val < 3328 then
                  vertexPermImagesPacked8Shard012 (⟨code.val - 3072, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard013 (⟨code.val - 3328, by omega⟩ : Fin 256)
          else
            if h : code.val < 4096 then
              if h : code.val < 3840 then
                vertexPermImagesPacked8Shard014 (⟨code.val - 3584, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard015 (⟨code.val - 3840, by omega⟩ : Fin 256)
            else
              if h : code.val < 4352 then
                vertexPermImagesPacked8Shard016 (⟨code.val - 4096, by omega⟩ : Fin 256)
              else
                if h : code.val < 4608 then
                  vertexPermImagesPacked8Shard017 (⟨code.val - 4352, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard018 (⟨code.val - 4608, by omega⟩ : Fin 256)
      else
        if h : code.val < 7424 then
          if h : code.val < 6144 then
            if h : code.val < 5376 then
              if h : code.val < 5120 then
                vertexPermImagesPacked8Shard019 (⟨code.val - 4864, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard020 (⟨code.val - 5120, by omega⟩ : Fin 256)
            else
              if h : code.val < 5632 then
                vertexPermImagesPacked8Shard021 (⟨code.val - 5376, by omega⟩ : Fin 256)
              else
                if h : code.val < 5888 then
                  vertexPermImagesPacked8Shard022 (⟨code.val - 5632, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard023 (⟨code.val - 5888, by omega⟩ : Fin 256)
          else
            if h : code.val < 6656 then
              if h : code.val < 6400 then
                vertexPermImagesPacked8Shard024 (⟨code.val - 6144, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard025 (⟨code.val - 6400, by omega⟩ : Fin 256)
            else
              if h : code.val < 6912 then
                vertexPermImagesPacked8Shard026 (⟨code.val - 6656, by omega⟩ : Fin 256)
              else
                if h : code.val < 7168 then
                  vertexPermImagesPacked8Shard027 (⟨code.val - 6912, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard028 (⟨code.val - 7168, by omega⟩ : Fin 256)
        else
          if h : code.val < 8704 then
            if h : code.val < 7936 then
              if h : code.val < 7680 then
                vertexPermImagesPacked8Shard029 (⟨code.val - 7424, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard030 (⟨code.val - 7680, by omega⟩ : Fin 256)
            else
              if h : code.val < 8192 then
                vertexPermImagesPacked8Shard031 (⟨code.val - 7936, by omega⟩ : Fin 256)
              else
                if h : code.val < 8448 then
                  vertexPermImagesPacked8Shard032 (⟨code.val - 8192, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard033 (⟨code.val - 8448, by omega⟩ : Fin 256)
          else
            if h : code.val < 9216 then
              if h : code.val < 8960 then
                vertexPermImagesPacked8Shard034 (⟨code.val - 8704, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard035 (⟨code.val - 8960, by omega⟩ : Fin 256)
            else
              if h : code.val < 9472 then
                vertexPermImagesPacked8Shard036 (⟨code.val - 9216, by omega⟩ : Fin 256)
              else
                if h : code.val < 9728 then
                  vertexPermImagesPacked8Shard037 (⟨code.val - 9472, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard038 (⟨code.val - 9728, by omega⟩ : Fin 256)
    else
      if h : code.val < 15104 then
        if h : code.val < 12544 then
          if h : code.val < 11264 then
            if h : code.val < 10496 then
              if h : code.val < 10240 then
                vertexPermImagesPacked8Shard039 (⟨code.val - 9984, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard040 (⟨code.val - 10240, by omega⟩ : Fin 256)
            else
              if h : code.val < 10752 then
                vertexPermImagesPacked8Shard041 (⟨code.val - 10496, by omega⟩ : Fin 256)
              else
                if h : code.val < 11008 then
                  vertexPermImagesPacked8Shard042 (⟨code.val - 10752, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard043 (⟨code.val - 11008, by omega⟩ : Fin 256)
          else
            if h : code.val < 11776 then
              if h : code.val < 11520 then
                vertexPermImagesPacked8Shard044 (⟨code.val - 11264, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard045 (⟨code.val - 11520, by omega⟩ : Fin 256)
            else
              if h : code.val < 12032 then
                vertexPermImagesPacked8Shard046 (⟨code.val - 11776, by omega⟩ : Fin 256)
              else
                if h : code.val < 12288 then
                  vertexPermImagesPacked8Shard047 (⟨code.val - 12032, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard048 (⟨code.val - 12288, by omega⟩ : Fin 256)
        else
          if h : code.val < 13824 then
            if h : code.val < 13056 then
              if h : code.val < 12800 then
                vertexPermImagesPacked8Shard049 (⟨code.val - 12544, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard050 (⟨code.val - 12800, by omega⟩ : Fin 256)
            else
              if h : code.val < 13312 then
                vertexPermImagesPacked8Shard051 (⟨code.val - 13056, by omega⟩ : Fin 256)
              else
                if h : code.val < 13568 then
                  vertexPermImagesPacked8Shard052 (⟨code.val - 13312, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard053 (⟨code.val - 13568, by omega⟩ : Fin 256)
          else
            if h : code.val < 14336 then
              if h : code.val < 14080 then
                vertexPermImagesPacked8Shard054 (⟨code.val - 13824, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard055 (⟨code.val - 14080, by omega⟩ : Fin 256)
            else
              if h : code.val < 14592 then
                vertexPermImagesPacked8Shard056 (⟨code.val - 14336, by omega⟩ : Fin 256)
              else
                if h : code.val < 14848 then
                  vertexPermImagesPacked8Shard057 (⟨code.val - 14592, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard058 (⟨code.val - 14848, by omega⟩ : Fin 256)
      else
        if h : code.val < 17664 then
          if h : code.val < 16384 then
            if h : code.val < 15616 then
              if h : code.val < 15360 then
                vertexPermImagesPacked8Shard059 (⟨code.val - 15104, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard060 (⟨code.val - 15360, by omega⟩ : Fin 256)
            else
              if h : code.val < 15872 then
                vertexPermImagesPacked8Shard061 (⟨code.val - 15616, by omega⟩ : Fin 256)
              else
                if h : code.val < 16128 then
                  vertexPermImagesPacked8Shard062 (⟨code.val - 15872, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard063 (⟨code.val - 16128, by omega⟩ : Fin 256)
          else
            if h : code.val < 16896 then
              if h : code.val < 16640 then
                vertexPermImagesPacked8Shard064 (⟨code.val - 16384, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard065 (⟨code.val - 16640, by omega⟩ : Fin 256)
            else
              if h : code.val < 17152 then
                vertexPermImagesPacked8Shard066 (⟨code.val - 16896, by omega⟩ : Fin 256)
              else
                if h : code.val < 17408 then
                  vertexPermImagesPacked8Shard067 (⟨code.val - 17152, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard068 (⟨code.val - 17408, by omega⟩ : Fin 256)
        else
          if h : code.val < 18944 then
            if h : code.val < 18176 then
              if h : code.val < 17920 then
                vertexPermImagesPacked8Shard069 (⟨code.val - 17664, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard070 (⟨code.val - 17920, by omega⟩ : Fin 256)
            else
              if h : code.val < 18432 then
                vertexPermImagesPacked8Shard071 (⟨code.val - 18176, by omega⟩ : Fin 256)
              else
                if h : code.val < 18688 then
                  vertexPermImagesPacked8Shard072 (⟨code.val - 18432, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard073 (⟨code.val - 18688, by omega⟩ : Fin 256)
          else
            if h : code.val < 19456 then
              if h : code.val < 19200 then
                vertexPermImagesPacked8Shard074 (⟨code.val - 18944, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard075 (⟨code.val - 19200, by omega⟩ : Fin 256)
            else
              if h : code.val < 19712 then
                vertexPermImagesPacked8Shard076 (⟨code.val - 19456, by omega⟩ : Fin 256)
              else
                if h : code.val < 19968 then
                  vertexPermImagesPacked8Shard077 (⟨code.val - 19712, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard078 (⟨code.val - 19968, by omega⟩ : Fin 256)
  else
    if h : code.val < 30208 then
      if h : code.val < 25088 then
        if h : code.val < 22528 then
          if h : code.val < 21248 then
            if h : code.val < 20736 then
              if h : code.val < 20480 then
                vertexPermImagesPacked8Shard079 (⟨code.val - 20224, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard080 (⟨code.val - 20480, by omega⟩ : Fin 256)
            else
              if h : code.val < 20992 then
                vertexPermImagesPacked8Shard081 (⟨code.val - 20736, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard082 (⟨code.val - 20992, by omega⟩ : Fin 256)
          else
            if h : code.val < 21760 then
              if h : code.val < 21504 then
                vertexPermImagesPacked8Shard083 (⟨code.val - 21248, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard084 (⟨code.val - 21504, by omega⟩ : Fin 256)
            else
              if h : code.val < 22016 then
                vertexPermImagesPacked8Shard085 (⟨code.val - 21760, by omega⟩ : Fin 256)
              else
                if h : code.val < 22272 then
                  vertexPermImagesPacked8Shard086 (⟨code.val - 22016, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard087 (⟨code.val - 22272, by omega⟩ : Fin 256)
        else
          if h : code.val < 23808 then
            if h : code.val < 23040 then
              if h : code.val < 22784 then
                vertexPermImagesPacked8Shard088 (⟨code.val - 22528, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard089 (⟨code.val - 22784, by omega⟩ : Fin 256)
            else
              if h : code.val < 23296 then
                vertexPermImagesPacked8Shard090 (⟨code.val - 23040, by omega⟩ : Fin 256)
              else
                if h : code.val < 23552 then
                  vertexPermImagesPacked8Shard091 (⟨code.val - 23296, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard092 (⟨code.val - 23552, by omega⟩ : Fin 256)
          else
            if h : code.val < 24320 then
              if h : code.val < 24064 then
                vertexPermImagesPacked8Shard093 (⟨code.val - 23808, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard094 (⟨code.val - 24064, by omega⟩ : Fin 256)
            else
              if h : code.val < 24576 then
                vertexPermImagesPacked8Shard095 (⟨code.val - 24320, by omega⟩ : Fin 256)
              else
                if h : code.val < 24832 then
                  vertexPermImagesPacked8Shard096 (⟨code.val - 24576, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard097 (⟨code.val - 24832, by omega⟩ : Fin 256)
      else
        if h : code.val < 27648 then
          if h : code.val < 26368 then
            if h : code.val < 25600 then
              if h : code.val < 25344 then
                vertexPermImagesPacked8Shard098 (⟨code.val - 25088, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard099 (⟨code.val - 25344, by omega⟩ : Fin 256)
            else
              if h : code.val < 25856 then
                vertexPermImagesPacked8Shard100 (⟨code.val - 25600, by omega⟩ : Fin 256)
              else
                if h : code.val < 26112 then
                  vertexPermImagesPacked8Shard101 (⟨code.val - 25856, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard102 (⟨code.val - 26112, by omega⟩ : Fin 256)
          else
            if h : code.val < 26880 then
              if h : code.val < 26624 then
                vertexPermImagesPacked8Shard103 (⟨code.val - 26368, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard104 (⟨code.val - 26624, by omega⟩ : Fin 256)
            else
              if h : code.val < 27136 then
                vertexPermImagesPacked8Shard105 (⟨code.val - 26880, by omega⟩ : Fin 256)
              else
                if h : code.val < 27392 then
                  vertexPermImagesPacked8Shard106 (⟨code.val - 27136, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard107 (⟨code.val - 27392, by omega⟩ : Fin 256)
        else
          if h : code.val < 28928 then
            if h : code.val < 28160 then
              if h : code.val < 27904 then
                vertexPermImagesPacked8Shard108 (⟨code.val - 27648, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard109 (⟨code.val - 27904, by omega⟩ : Fin 256)
            else
              if h : code.val < 28416 then
                vertexPermImagesPacked8Shard110 (⟨code.val - 28160, by omega⟩ : Fin 256)
              else
                if h : code.val < 28672 then
                  vertexPermImagesPacked8Shard111 (⟨code.val - 28416, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard112 (⟨code.val - 28672, by omega⟩ : Fin 256)
          else
            if h : code.val < 29440 then
              if h : code.val < 29184 then
                vertexPermImagesPacked8Shard113 (⟨code.val - 28928, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard114 (⟨code.val - 29184, by omega⟩ : Fin 256)
            else
              if h : code.val < 29696 then
                vertexPermImagesPacked8Shard115 (⟨code.val - 29440, by omega⟩ : Fin 256)
              else
                if h : code.val < 29952 then
                  vertexPermImagesPacked8Shard116 (⟨code.val - 29696, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard117 (⟨code.val - 29952, by omega⟩ : Fin 256)
    else
      if h : code.val < 35328 then
        if h : code.val < 32768 then
          if h : code.val < 31488 then
            if h : code.val < 30720 then
              if h : code.val < 30464 then
                vertexPermImagesPacked8Shard118 (⟨code.val - 30208, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard119 (⟨code.val - 30464, by omega⟩ : Fin 256)
            else
              if h : code.val < 30976 then
                vertexPermImagesPacked8Shard120 (⟨code.val - 30720, by omega⟩ : Fin 256)
              else
                if h : code.val < 31232 then
                  vertexPermImagesPacked8Shard121 (⟨code.val - 30976, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard122 (⟨code.val - 31232, by omega⟩ : Fin 256)
          else
            if h : code.val < 32000 then
              if h : code.val < 31744 then
                vertexPermImagesPacked8Shard123 (⟨code.val - 31488, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard124 (⟨code.val - 31744, by omega⟩ : Fin 256)
            else
              if h : code.val < 32256 then
                vertexPermImagesPacked8Shard125 (⟨code.val - 32000, by omega⟩ : Fin 256)
              else
                if h : code.val < 32512 then
                  vertexPermImagesPacked8Shard126 (⟨code.val - 32256, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard127 (⟨code.val - 32512, by omega⟩ : Fin 256)
        else
          if h : code.val < 34048 then
            if h : code.val < 33280 then
              if h : code.val < 33024 then
                vertexPermImagesPacked8Shard128 (⟨code.val - 32768, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard129 (⟨code.val - 33024, by omega⟩ : Fin 256)
            else
              if h : code.val < 33536 then
                vertexPermImagesPacked8Shard130 (⟨code.val - 33280, by omega⟩ : Fin 256)
              else
                if h : code.val < 33792 then
                  vertexPermImagesPacked8Shard131 (⟨code.val - 33536, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard132 (⟨code.val - 33792, by omega⟩ : Fin 256)
          else
            if h : code.val < 34560 then
              if h : code.val < 34304 then
                vertexPermImagesPacked8Shard133 (⟨code.val - 34048, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard134 (⟨code.val - 34304, by omega⟩ : Fin 256)
            else
              if h : code.val < 34816 then
                vertexPermImagesPacked8Shard135 (⟨code.val - 34560, by omega⟩ : Fin 256)
              else
                if h : code.val < 35072 then
                  vertexPermImagesPacked8Shard136 (⟨code.val - 34816, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard137 (⟨code.val - 35072, by omega⟩ : Fin 256)
      else
        if h : code.val < 37888 then
          if h : code.val < 36608 then
            if h : code.val < 35840 then
              if h : code.val < 35584 then
                vertexPermImagesPacked8Shard138 (⟨code.val - 35328, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard139 (⟨code.val - 35584, by omega⟩ : Fin 256)
            else
              if h : code.val < 36096 then
                vertexPermImagesPacked8Shard140 (⟨code.val - 35840, by omega⟩ : Fin 256)
              else
                if h : code.val < 36352 then
                  vertexPermImagesPacked8Shard141 (⟨code.val - 36096, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard142 (⟨code.val - 36352, by omega⟩ : Fin 256)
          else
            if h : code.val < 37120 then
              if h : code.val < 36864 then
                vertexPermImagesPacked8Shard143 (⟨code.val - 36608, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard144 (⟨code.val - 36864, by omega⟩ : Fin 256)
            else
              if h : code.val < 37376 then
                vertexPermImagesPacked8Shard145 (⟨code.val - 37120, by omega⟩ : Fin 256)
              else
                if h : code.val < 37632 then
                  vertexPermImagesPacked8Shard146 (⟨code.val - 37376, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard147 (⟨code.val - 37632, by omega⟩ : Fin 256)
        else
          if h : code.val < 39168 then
            if h : code.val < 38400 then
              if h : code.val < 38144 then
                vertexPermImagesPacked8Shard148 (⟨code.val - 37888, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard149 (⟨code.val - 38144, by omega⟩ : Fin 256)
            else
              if h : code.val < 38656 then
                vertexPermImagesPacked8Shard150 (⟨code.val - 38400, by omega⟩ : Fin 256)
              else
                if h : code.val < 38912 then
                  vertexPermImagesPacked8Shard151 (⟨code.val - 38656, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard152 (⟨code.val - 38912, by omega⟩ : Fin 256)
          else
            if h : code.val < 39680 then
              if h : code.val < 39424 then
                vertexPermImagesPacked8Shard153 (⟨code.val - 39168, by omega⟩ : Fin 256)
              else
                vertexPermImagesPacked8Shard154 (⟨code.val - 39424, by omega⟩ : Fin 256)
            else
              if h : code.val < 39936 then
                vertexPermImagesPacked8Shard155 (⟨code.val - 39680, by omega⟩ : Fin 256)
              else
                if h : code.val < 40192 then
                  vertexPermImagesPacked8Shard156 (⟨code.val - 39936, by omega⟩ : Fin 256)
                else
                  vertexPermImagesPacked8Shard157 (⟨code.val - 40192, by omega⟩ : Fin 128)

/-- Fast table lookup for one image of an encoded vertex permutation. -/
def vertexPermImage8 (code : Fin 40320) (v : Fin 8) : Fin 8 :=
  vertexPermImageOfPacked8 (vertexPermImagesPacked8 code) v

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
/-- The fast image table agrees pointwise with the arithmetic
applicator.  All finite work was kernel-checked in bounded shards. -/
theorem vertexPermImage8_eq_vertexPermApplyFast8
    (code : Fin 40320) (v : Fin 8) :
    vertexPermImage8 code v = vertexPermApplyFast8 code v := by
  unfold vertexPermImage8 vertexPermImageOfPacked8 vertexPermImagesPacked8
  by_cases h : code.val < 20224
  · rw [dif_pos h]
    by_cases h : code.val < 9984
    · rw [dif_pos h]
      by_cases h : code.val < 4864
      · rw [dif_pos h]
        by_cases h : code.val < 2304
        · rw [dif_pos h]
          by_cases h : code.val < 1024
          · rw [dif_pos h]
            by_cases h : code.val < 512
            · rw [dif_pos h]
              by_cases h : code.val < 256
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val, by omega⟩
                have hcode : vertexPermGlobalCode8Shard000 i = code := by
                  apply Fin.ext
                  change 0 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard000 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard000_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 256, by omega⟩
                have hcode : vertexPermGlobalCode8Shard001 i = code := by
                  apply Fin.ext
                  change 256 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard001 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard001_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 768
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 512, by omega⟩
                have hcode : vertexPermGlobalCode8Shard002 i = code := by
                  apply Fin.ext
                  change 512 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard002 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard002_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 768, by omega⟩
                have hcode : vertexPermGlobalCode8Shard003 i = code := by
                  apply Fin.ext
                  change 768 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard003 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard003_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 1536
            · rw [dif_pos h]
              by_cases h : code.val < 1280
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 1024, by omega⟩
                have hcode : vertexPermGlobalCode8Shard004 i = code := by
                  apply Fin.ext
                  change 1024 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard004 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard004_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 1280, by omega⟩
                have hcode : vertexPermGlobalCode8Shard005 i = code := by
                  apply Fin.ext
                  change 1280 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard005 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard005_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 1792
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 1536, by omega⟩
                have hcode : vertexPermGlobalCode8Shard006 i = code := by
                  apply Fin.ext
                  change 1536 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard006 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard006_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 2048
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 1792, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard007 i = code := by
                    apply Fin.ext
                    change 1792 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard007 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard007_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 2048, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard008 i = code := by
                    apply Fin.ext
                    change 2048 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard008 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard008_correct i v
        · rw [dif_neg h]
          by_cases h : code.val < 3584
          · rw [dif_pos h]
            by_cases h : code.val < 2816
            · rw [dif_pos h]
              by_cases h : code.val < 2560
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 2304, by omega⟩
                have hcode : vertexPermGlobalCode8Shard009 i = code := by
                  apply Fin.ext
                  change 2304 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard009 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard009_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 2560, by omega⟩
                have hcode : vertexPermGlobalCode8Shard010 i = code := by
                  apply Fin.ext
                  change 2560 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard010 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard010_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 3072
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 2816, by omega⟩
                have hcode : vertexPermGlobalCode8Shard011 i = code := by
                  apply Fin.ext
                  change 2816 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard011 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard011_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 3328
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 3072, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard012 i = code := by
                    apply Fin.ext
                    change 3072 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard012 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard012_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 3328, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard013 i = code := by
                    apply Fin.ext
                    change 3328 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard013 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard013_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 4096
            · rw [dif_pos h]
              by_cases h : code.val < 3840
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 3584, by omega⟩
                have hcode : vertexPermGlobalCode8Shard014 i = code := by
                  apply Fin.ext
                  change 3584 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard014 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard014_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 3840, by omega⟩
                have hcode : vertexPermGlobalCode8Shard015 i = code := by
                  apply Fin.ext
                  change 3840 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard015 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard015_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 4352
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 4096, by omega⟩
                have hcode : vertexPermGlobalCode8Shard016 i = code := by
                  apply Fin.ext
                  change 4096 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard016 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard016_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 4608
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 4352, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard017 i = code := by
                    apply Fin.ext
                    change 4352 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard017 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard017_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 4608, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard018 i = code := by
                    apply Fin.ext
                    change 4608 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard018 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard018_correct i v
      · rw [dif_neg h]
        by_cases h : code.val < 7424
        · rw [dif_pos h]
          by_cases h : code.val < 6144
          · rw [dif_pos h]
            by_cases h : code.val < 5376
            · rw [dif_pos h]
              by_cases h : code.val < 5120
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 4864, by omega⟩
                have hcode : vertexPermGlobalCode8Shard019 i = code := by
                  apply Fin.ext
                  change 4864 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard019 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard019_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 5120, by omega⟩
                have hcode : vertexPermGlobalCode8Shard020 i = code := by
                  apply Fin.ext
                  change 5120 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard020 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard020_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 5632
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 5376, by omega⟩
                have hcode : vertexPermGlobalCode8Shard021 i = code := by
                  apply Fin.ext
                  change 5376 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard021 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard021_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 5888
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 5632, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard022 i = code := by
                    apply Fin.ext
                    change 5632 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard022 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard022_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 5888, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard023 i = code := by
                    apply Fin.ext
                    change 5888 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard023 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard023_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 6656
            · rw [dif_pos h]
              by_cases h : code.val < 6400
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 6144, by omega⟩
                have hcode : vertexPermGlobalCode8Shard024 i = code := by
                  apply Fin.ext
                  change 6144 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard024 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard024_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 6400, by omega⟩
                have hcode : vertexPermGlobalCode8Shard025 i = code := by
                  apply Fin.ext
                  change 6400 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard025 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard025_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 6912
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 6656, by omega⟩
                have hcode : vertexPermGlobalCode8Shard026 i = code := by
                  apply Fin.ext
                  change 6656 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard026 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard026_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 7168
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 6912, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard027 i = code := by
                    apply Fin.ext
                    change 6912 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard027 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard027_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 7168, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard028 i = code := by
                    apply Fin.ext
                    change 7168 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard028 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard028_correct i v
        · rw [dif_neg h]
          by_cases h : code.val < 8704
          · rw [dif_pos h]
            by_cases h : code.val < 7936
            · rw [dif_pos h]
              by_cases h : code.val < 7680
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 7424, by omega⟩
                have hcode : vertexPermGlobalCode8Shard029 i = code := by
                  apply Fin.ext
                  change 7424 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard029 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard029_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 7680, by omega⟩
                have hcode : vertexPermGlobalCode8Shard030 i = code := by
                  apply Fin.ext
                  change 7680 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard030 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard030_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 8192
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 7936, by omega⟩
                have hcode : vertexPermGlobalCode8Shard031 i = code := by
                  apply Fin.ext
                  change 7936 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard031 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard031_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 8448
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 8192, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard032 i = code := by
                    apply Fin.ext
                    change 8192 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard032 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard032_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 8448, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard033 i = code := by
                    apply Fin.ext
                    change 8448 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard033 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard033_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 9216
            · rw [dif_pos h]
              by_cases h : code.val < 8960
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 8704, by omega⟩
                have hcode : vertexPermGlobalCode8Shard034 i = code := by
                  apply Fin.ext
                  change 8704 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard034 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard034_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 8960, by omega⟩
                have hcode : vertexPermGlobalCode8Shard035 i = code := by
                  apply Fin.ext
                  change 8960 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard035 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard035_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 9472
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 9216, by omega⟩
                have hcode : vertexPermGlobalCode8Shard036 i = code := by
                  apply Fin.ext
                  change 9216 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard036 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard036_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 9728
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 9472, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard037 i = code := by
                    apply Fin.ext
                    change 9472 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard037 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard037_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 9728, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard038 i = code := by
                    apply Fin.ext
                    change 9728 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard038 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard038_correct i v
    · rw [dif_neg h]
      by_cases h : code.val < 15104
      · rw [dif_pos h]
        by_cases h : code.val < 12544
        · rw [dif_pos h]
          by_cases h : code.val < 11264
          · rw [dif_pos h]
            by_cases h : code.val < 10496
            · rw [dif_pos h]
              by_cases h : code.val < 10240
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 9984, by omega⟩
                have hcode : vertexPermGlobalCode8Shard039 i = code := by
                  apply Fin.ext
                  change 9984 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard039 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard039_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 10240, by omega⟩
                have hcode : vertexPermGlobalCode8Shard040 i = code := by
                  apply Fin.ext
                  change 10240 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard040 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard040_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 10752
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 10496, by omega⟩
                have hcode : vertexPermGlobalCode8Shard041 i = code := by
                  apply Fin.ext
                  change 10496 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard041 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard041_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 11008
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 10752, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard042 i = code := by
                    apply Fin.ext
                    change 10752 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard042 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard042_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 11008, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard043 i = code := by
                    apply Fin.ext
                    change 11008 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard043 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard043_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 11776
            · rw [dif_pos h]
              by_cases h : code.val < 11520
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 11264, by omega⟩
                have hcode : vertexPermGlobalCode8Shard044 i = code := by
                  apply Fin.ext
                  change 11264 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard044 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard044_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 11520, by omega⟩
                have hcode : vertexPermGlobalCode8Shard045 i = code := by
                  apply Fin.ext
                  change 11520 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard045 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard045_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 12032
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 11776, by omega⟩
                have hcode : vertexPermGlobalCode8Shard046 i = code := by
                  apply Fin.ext
                  change 11776 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard046 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard046_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 12288
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 12032, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard047 i = code := by
                    apply Fin.ext
                    change 12032 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard047 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard047_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 12288, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard048 i = code := by
                    apply Fin.ext
                    change 12288 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard048 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard048_correct i v
        · rw [dif_neg h]
          by_cases h : code.val < 13824
          · rw [dif_pos h]
            by_cases h : code.val < 13056
            · rw [dif_pos h]
              by_cases h : code.val < 12800
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 12544, by omega⟩
                have hcode : vertexPermGlobalCode8Shard049 i = code := by
                  apply Fin.ext
                  change 12544 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard049 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard049_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 12800, by omega⟩
                have hcode : vertexPermGlobalCode8Shard050 i = code := by
                  apply Fin.ext
                  change 12800 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard050 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard050_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 13312
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 13056, by omega⟩
                have hcode : vertexPermGlobalCode8Shard051 i = code := by
                  apply Fin.ext
                  change 13056 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard051 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard051_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 13568
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 13312, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard052 i = code := by
                    apply Fin.ext
                    change 13312 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard052 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard052_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 13568, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard053 i = code := by
                    apply Fin.ext
                    change 13568 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard053 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard053_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 14336
            · rw [dif_pos h]
              by_cases h : code.val < 14080
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 13824, by omega⟩
                have hcode : vertexPermGlobalCode8Shard054 i = code := by
                  apply Fin.ext
                  change 13824 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard054 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard054_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 14080, by omega⟩
                have hcode : vertexPermGlobalCode8Shard055 i = code := by
                  apply Fin.ext
                  change 14080 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard055 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard055_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 14592
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 14336, by omega⟩
                have hcode : vertexPermGlobalCode8Shard056 i = code := by
                  apply Fin.ext
                  change 14336 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard056 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard056_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 14848
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 14592, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard057 i = code := by
                    apply Fin.ext
                    change 14592 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard057 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard057_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 14848, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard058 i = code := by
                    apply Fin.ext
                    change 14848 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard058 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard058_correct i v
      · rw [dif_neg h]
        by_cases h : code.val < 17664
        · rw [dif_pos h]
          by_cases h : code.val < 16384
          · rw [dif_pos h]
            by_cases h : code.val < 15616
            · rw [dif_pos h]
              by_cases h : code.val < 15360
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 15104, by omega⟩
                have hcode : vertexPermGlobalCode8Shard059 i = code := by
                  apply Fin.ext
                  change 15104 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard059 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard059_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 15360, by omega⟩
                have hcode : vertexPermGlobalCode8Shard060 i = code := by
                  apply Fin.ext
                  change 15360 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard060 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard060_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 15872
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 15616, by omega⟩
                have hcode : vertexPermGlobalCode8Shard061 i = code := by
                  apply Fin.ext
                  change 15616 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard061 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard061_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 16128
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 15872, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard062 i = code := by
                    apply Fin.ext
                    change 15872 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard062 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard062_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 16128, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard063 i = code := by
                    apply Fin.ext
                    change 16128 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard063 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard063_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 16896
            · rw [dif_pos h]
              by_cases h : code.val < 16640
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 16384, by omega⟩
                have hcode : vertexPermGlobalCode8Shard064 i = code := by
                  apply Fin.ext
                  change 16384 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard064 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard064_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 16640, by omega⟩
                have hcode : vertexPermGlobalCode8Shard065 i = code := by
                  apply Fin.ext
                  change 16640 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard065 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard065_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 17152
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 16896, by omega⟩
                have hcode : vertexPermGlobalCode8Shard066 i = code := by
                  apply Fin.ext
                  change 16896 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard066 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard066_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 17408
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 17152, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard067 i = code := by
                    apply Fin.ext
                    change 17152 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard067 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard067_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 17408, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard068 i = code := by
                    apply Fin.ext
                    change 17408 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard068 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard068_correct i v
        · rw [dif_neg h]
          by_cases h : code.val < 18944
          · rw [dif_pos h]
            by_cases h : code.val < 18176
            · rw [dif_pos h]
              by_cases h : code.val < 17920
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 17664, by omega⟩
                have hcode : vertexPermGlobalCode8Shard069 i = code := by
                  apply Fin.ext
                  change 17664 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard069 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard069_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 17920, by omega⟩
                have hcode : vertexPermGlobalCode8Shard070 i = code := by
                  apply Fin.ext
                  change 17920 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard070 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard070_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 18432
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 18176, by omega⟩
                have hcode : vertexPermGlobalCode8Shard071 i = code := by
                  apply Fin.ext
                  change 18176 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard071 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard071_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 18688
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 18432, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard072 i = code := by
                    apply Fin.ext
                    change 18432 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard072 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard072_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 18688, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard073 i = code := by
                    apply Fin.ext
                    change 18688 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard073 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard073_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 19456
            · rw [dif_pos h]
              by_cases h : code.val < 19200
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 18944, by omega⟩
                have hcode : vertexPermGlobalCode8Shard074 i = code := by
                  apply Fin.ext
                  change 18944 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard074 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard074_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 19200, by omega⟩
                have hcode : vertexPermGlobalCode8Shard075 i = code := by
                  apply Fin.ext
                  change 19200 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard075 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard075_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 19712
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 19456, by omega⟩
                have hcode : vertexPermGlobalCode8Shard076 i = code := by
                  apply Fin.ext
                  change 19456 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard076 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard076_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 19968
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 19712, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard077 i = code := by
                    apply Fin.ext
                    change 19712 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard077 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard077_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 19968, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard078 i = code := by
                    apply Fin.ext
                    change 19968 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard078 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard078_correct i v
  · rw [dif_neg h]
    by_cases h : code.val < 30208
    · rw [dif_pos h]
      by_cases h : code.val < 25088
      · rw [dif_pos h]
        by_cases h : code.val < 22528
        · rw [dif_pos h]
          by_cases h : code.val < 21248
          · rw [dif_pos h]
            by_cases h : code.val < 20736
            · rw [dif_pos h]
              by_cases h : code.val < 20480
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 20224, by omega⟩
                have hcode : vertexPermGlobalCode8Shard079 i = code := by
                  apply Fin.ext
                  change 20224 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard079 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard079_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 20480, by omega⟩
                have hcode : vertexPermGlobalCode8Shard080 i = code := by
                  apply Fin.ext
                  change 20480 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard080 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard080_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 20992
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 20736, by omega⟩
                have hcode : vertexPermGlobalCode8Shard081 i = code := by
                  apply Fin.ext
                  change 20736 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard081 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard081_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 20992, by omega⟩
                have hcode : vertexPermGlobalCode8Shard082 i = code := by
                  apply Fin.ext
                  change 20992 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard082 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard082_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 21760
            · rw [dif_pos h]
              by_cases h : code.val < 21504
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 21248, by omega⟩
                have hcode : vertexPermGlobalCode8Shard083 i = code := by
                  apply Fin.ext
                  change 21248 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard083 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard083_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 21504, by omega⟩
                have hcode : vertexPermGlobalCode8Shard084 i = code := by
                  apply Fin.ext
                  change 21504 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard084 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard084_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 22016
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 21760, by omega⟩
                have hcode : vertexPermGlobalCode8Shard085 i = code := by
                  apply Fin.ext
                  change 21760 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard085 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard085_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 22272
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 22016, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard086 i = code := by
                    apply Fin.ext
                    change 22016 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard086 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard086_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 22272, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard087 i = code := by
                    apply Fin.ext
                    change 22272 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard087 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard087_correct i v
        · rw [dif_neg h]
          by_cases h : code.val < 23808
          · rw [dif_pos h]
            by_cases h : code.val < 23040
            · rw [dif_pos h]
              by_cases h : code.val < 22784
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 22528, by omega⟩
                have hcode : vertexPermGlobalCode8Shard088 i = code := by
                  apply Fin.ext
                  change 22528 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard088 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard088_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 22784, by omega⟩
                have hcode : vertexPermGlobalCode8Shard089 i = code := by
                  apply Fin.ext
                  change 22784 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard089 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard089_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 23296
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 23040, by omega⟩
                have hcode : vertexPermGlobalCode8Shard090 i = code := by
                  apply Fin.ext
                  change 23040 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard090 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard090_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 23552
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 23296, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard091 i = code := by
                    apply Fin.ext
                    change 23296 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard091 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard091_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 23552, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard092 i = code := by
                    apply Fin.ext
                    change 23552 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard092 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard092_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 24320
            · rw [dif_pos h]
              by_cases h : code.val < 24064
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 23808, by omega⟩
                have hcode : vertexPermGlobalCode8Shard093 i = code := by
                  apply Fin.ext
                  change 23808 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard093 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard093_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 24064, by omega⟩
                have hcode : vertexPermGlobalCode8Shard094 i = code := by
                  apply Fin.ext
                  change 24064 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard094 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard094_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 24576
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 24320, by omega⟩
                have hcode : vertexPermGlobalCode8Shard095 i = code := by
                  apply Fin.ext
                  change 24320 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard095 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard095_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 24832
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 24576, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard096 i = code := by
                    apply Fin.ext
                    change 24576 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard096 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard096_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 24832, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard097 i = code := by
                    apply Fin.ext
                    change 24832 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard097 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard097_correct i v
      · rw [dif_neg h]
        by_cases h : code.val < 27648
        · rw [dif_pos h]
          by_cases h : code.val < 26368
          · rw [dif_pos h]
            by_cases h : code.val < 25600
            · rw [dif_pos h]
              by_cases h : code.val < 25344
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 25088, by omega⟩
                have hcode : vertexPermGlobalCode8Shard098 i = code := by
                  apply Fin.ext
                  change 25088 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard098 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard098_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 25344, by omega⟩
                have hcode : vertexPermGlobalCode8Shard099 i = code := by
                  apply Fin.ext
                  change 25344 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard099 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard099_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 25856
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 25600, by omega⟩
                have hcode : vertexPermGlobalCode8Shard100 i = code := by
                  apply Fin.ext
                  change 25600 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard100 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard100_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 26112
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 25856, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard101 i = code := by
                    apply Fin.ext
                    change 25856 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard101 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard101_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 26112, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard102 i = code := by
                    apply Fin.ext
                    change 26112 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard102 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard102_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 26880
            · rw [dif_pos h]
              by_cases h : code.val < 26624
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 26368, by omega⟩
                have hcode : vertexPermGlobalCode8Shard103 i = code := by
                  apply Fin.ext
                  change 26368 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard103 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard103_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 26624, by omega⟩
                have hcode : vertexPermGlobalCode8Shard104 i = code := by
                  apply Fin.ext
                  change 26624 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard104 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard104_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 27136
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 26880, by omega⟩
                have hcode : vertexPermGlobalCode8Shard105 i = code := by
                  apply Fin.ext
                  change 26880 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard105 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard105_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 27392
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 27136, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard106 i = code := by
                    apply Fin.ext
                    change 27136 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard106 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard106_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 27392, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard107 i = code := by
                    apply Fin.ext
                    change 27392 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard107 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard107_correct i v
        · rw [dif_neg h]
          by_cases h : code.val < 28928
          · rw [dif_pos h]
            by_cases h : code.val < 28160
            · rw [dif_pos h]
              by_cases h : code.val < 27904
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 27648, by omega⟩
                have hcode : vertexPermGlobalCode8Shard108 i = code := by
                  apply Fin.ext
                  change 27648 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard108 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard108_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 27904, by omega⟩
                have hcode : vertexPermGlobalCode8Shard109 i = code := by
                  apply Fin.ext
                  change 27904 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard109 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard109_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 28416
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 28160, by omega⟩
                have hcode : vertexPermGlobalCode8Shard110 i = code := by
                  apply Fin.ext
                  change 28160 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard110 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard110_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 28672
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 28416, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard111 i = code := by
                    apply Fin.ext
                    change 28416 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard111 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard111_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 28672, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard112 i = code := by
                    apply Fin.ext
                    change 28672 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard112 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard112_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 29440
            · rw [dif_pos h]
              by_cases h : code.val < 29184
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 28928, by omega⟩
                have hcode : vertexPermGlobalCode8Shard113 i = code := by
                  apply Fin.ext
                  change 28928 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard113 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard113_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 29184, by omega⟩
                have hcode : vertexPermGlobalCode8Shard114 i = code := by
                  apply Fin.ext
                  change 29184 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard114 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard114_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 29696
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 29440, by omega⟩
                have hcode : vertexPermGlobalCode8Shard115 i = code := by
                  apply Fin.ext
                  change 29440 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard115 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard115_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 29952
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 29696, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard116 i = code := by
                    apply Fin.ext
                    change 29696 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard116 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard116_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 29952, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard117 i = code := by
                    apply Fin.ext
                    change 29952 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard117 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard117_correct i v
    · rw [dif_neg h]
      by_cases h : code.val < 35328
      · rw [dif_pos h]
        by_cases h : code.val < 32768
        · rw [dif_pos h]
          by_cases h : code.val < 31488
          · rw [dif_pos h]
            by_cases h : code.val < 30720
            · rw [dif_pos h]
              by_cases h : code.val < 30464
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 30208, by omega⟩
                have hcode : vertexPermGlobalCode8Shard118 i = code := by
                  apply Fin.ext
                  change 30208 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard118 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard118_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 30464, by omega⟩
                have hcode : vertexPermGlobalCode8Shard119 i = code := by
                  apply Fin.ext
                  change 30464 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard119 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard119_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 30976
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 30720, by omega⟩
                have hcode : vertexPermGlobalCode8Shard120 i = code := by
                  apply Fin.ext
                  change 30720 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard120 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard120_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 31232
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 30976, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard121 i = code := by
                    apply Fin.ext
                    change 30976 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard121 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard121_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 31232, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard122 i = code := by
                    apply Fin.ext
                    change 31232 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard122 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard122_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 32000
            · rw [dif_pos h]
              by_cases h : code.val < 31744
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 31488, by omega⟩
                have hcode : vertexPermGlobalCode8Shard123 i = code := by
                  apply Fin.ext
                  change 31488 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard123 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard123_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 31744, by omega⟩
                have hcode : vertexPermGlobalCode8Shard124 i = code := by
                  apply Fin.ext
                  change 31744 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard124 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard124_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 32256
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 32000, by omega⟩
                have hcode : vertexPermGlobalCode8Shard125 i = code := by
                  apply Fin.ext
                  change 32000 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard125 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard125_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 32512
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 32256, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard126 i = code := by
                    apply Fin.ext
                    change 32256 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard126 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard126_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 32512, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard127 i = code := by
                    apply Fin.ext
                    change 32512 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard127 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard127_correct i v
        · rw [dif_neg h]
          by_cases h : code.val < 34048
          · rw [dif_pos h]
            by_cases h : code.val < 33280
            · rw [dif_pos h]
              by_cases h : code.val < 33024
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 32768, by omega⟩
                have hcode : vertexPermGlobalCode8Shard128 i = code := by
                  apply Fin.ext
                  change 32768 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard128 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard128_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 33024, by omega⟩
                have hcode : vertexPermGlobalCode8Shard129 i = code := by
                  apply Fin.ext
                  change 33024 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard129 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard129_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 33536
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 33280, by omega⟩
                have hcode : vertexPermGlobalCode8Shard130 i = code := by
                  apply Fin.ext
                  change 33280 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard130 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard130_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 33792
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 33536, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard131 i = code := by
                    apply Fin.ext
                    change 33536 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard131 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard131_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 33792, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard132 i = code := by
                    apply Fin.ext
                    change 33792 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard132 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard132_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 34560
            · rw [dif_pos h]
              by_cases h : code.val < 34304
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 34048, by omega⟩
                have hcode : vertexPermGlobalCode8Shard133 i = code := by
                  apply Fin.ext
                  change 34048 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard133 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard133_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 34304, by omega⟩
                have hcode : vertexPermGlobalCode8Shard134 i = code := by
                  apply Fin.ext
                  change 34304 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard134 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard134_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 34816
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 34560, by omega⟩
                have hcode : vertexPermGlobalCode8Shard135 i = code := by
                  apply Fin.ext
                  change 34560 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard135 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard135_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 35072
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 34816, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard136 i = code := by
                    apply Fin.ext
                    change 34816 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard136 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard136_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 35072, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard137 i = code := by
                    apply Fin.ext
                    change 35072 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard137 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard137_correct i v
      · rw [dif_neg h]
        by_cases h : code.val < 37888
        · rw [dif_pos h]
          by_cases h : code.val < 36608
          · rw [dif_pos h]
            by_cases h : code.val < 35840
            · rw [dif_pos h]
              by_cases h : code.val < 35584
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 35328, by omega⟩
                have hcode : vertexPermGlobalCode8Shard138 i = code := by
                  apply Fin.ext
                  change 35328 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard138 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard138_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 35584, by omega⟩
                have hcode : vertexPermGlobalCode8Shard139 i = code := by
                  apply Fin.ext
                  change 35584 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard139 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard139_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 36096
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 35840, by omega⟩
                have hcode : vertexPermGlobalCode8Shard140 i = code := by
                  apply Fin.ext
                  change 35840 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard140 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard140_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 36352
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 36096, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard141 i = code := by
                    apply Fin.ext
                    change 36096 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard141 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard141_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 36352, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard142 i = code := by
                    apply Fin.ext
                    change 36352 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard142 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard142_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 37120
            · rw [dif_pos h]
              by_cases h : code.val < 36864
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 36608, by omega⟩
                have hcode : vertexPermGlobalCode8Shard143 i = code := by
                  apply Fin.ext
                  change 36608 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard143 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard143_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 36864, by omega⟩
                have hcode : vertexPermGlobalCode8Shard144 i = code := by
                  apply Fin.ext
                  change 36864 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard144 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard144_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 37376
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 37120, by omega⟩
                have hcode : vertexPermGlobalCode8Shard145 i = code := by
                  apply Fin.ext
                  change 37120 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard145 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard145_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 37632
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 37376, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard146 i = code := by
                    apply Fin.ext
                    change 37376 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard146 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard146_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 37632, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard147 i = code := by
                    apply Fin.ext
                    change 37632 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard147 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard147_correct i v
        · rw [dif_neg h]
          by_cases h : code.val < 39168
          · rw [dif_pos h]
            by_cases h : code.val < 38400
            · rw [dif_pos h]
              by_cases h : code.val < 38144
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 37888, by omega⟩
                have hcode : vertexPermGlobalCode8Shard148 i = code := by
                  apply Fin.ext
                  change 37888 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard148 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard148_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 38144, by omega⟩
                have hcode : vertexPermGlobalCode8Shard149 i = code := by
                  apply Fin.ext
                  change 38144 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard149 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard149_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 38656
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 38400, by omega⟩
                have hcode : vertexPermGlobalCode8Shard150 i = code := by
                  apply Fin.ext
                  change 38400 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard150 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard150_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 38912
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 38656, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard151 i = code := by
                    apply Fin.ext
                    change 38656 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard151 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard151_correct i v
                · rw [dif_neg h]
                  let i : Fin 256 := ⟨code.val - 38912, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard152 i = code := by
                    apply Fin.ext
                    change 38912 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard152 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard152_correct i v
          · rw [dif_neg h]
            by_cases h : code.val < 39680
            · rw [dif_pos h]
              by_cases h : code.val < 39424
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 39168, by omega⟩
                have hcode : vertexPermGlobalCode8Shard153 i = code := by
                  apply Fin.ext
                  change 39168 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard153 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard153_correct i v
              · rw [dif_neg h]
                let i : Fin 256 := ⟨code.val - 39424, by omega⟩
                have hcode : vertexPermGlobalCode8Shard154 i = code := by
                  apply Fin.ext
                  change 39424 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard154 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard154_correct i v
            · rw [dif_neg h]
              by_cases h : code.val < 39936
              · rw [dif_pos h]
                let i : Fin 256 := ⟨code.val - 39680, by omega⟩
                have hcode : vertexPermGlobalCode8Shard155 i = code := by
                  apply Fin.ext
                  change 39680 + i.val = code.val
                  dsimp only [i]
                  omega
                change Fin.ofNat 8
                    (vertexPermImagesPacked8Shard155 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                rw [← hcode]
                exact vertexPermImage8Shard155_correct i v
              · rw [dif_neg h]
                by_cases h : code.val < 40192
                · rw [dif_pos h]
                  let i : Fin 256 := ⟨code.val - 39936, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard156 i = code := by
                    apply Fin.ext
                    change 39936 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard156 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard156_correct i v
                · rw [dif_neg h]
                  let i : Fin 128 := ⟨code.val - 40192, by omega⟩
                  have hcode : vertexPermGlobalCode8Shard157 i = code := by
                    apply Fin.ext
                    change 40192 + i.val = code.val
                    dsimp only [i]
                    omega
                  change Fin.ofNat 8
                      (vertexPermImagesPacked8Shard157 i / (8 ^ v.val)) = vertexPermApplyFast8 code v
                  rw [← hcode]
                  exact vertexPermImage8Shard157_correct i v

/-- The table therefore agrees with the official mixed-radix
permutation decoder. -/
theorem vertexPermImage8_eq_vertexPermOfCode8
    (code : Fin 40320) (v : Fin 8) :
    vertexPermImage8 code v = vertexPermOfCode8 code v :=
  (vertexPermImage8_eq_vertexPermApplyFast8 code v).trans
    (vertexPermApplyFast8_eq_vertexPermOfCode8 code v)

end MonochromaticQuantumGraphs.N8D3
