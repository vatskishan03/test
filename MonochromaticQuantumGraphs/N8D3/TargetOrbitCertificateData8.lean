import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateData8.Shard096

namespace MonochromaticQuantumGraphs.N8D3

/-- Packed certificate lookup by lexicographic sorted-target rank. -/
def orbitPackedCertificate8 (i : Fin 198485) : Nat :=
  if i.val < 98304 then
    if i.val < 49152 then
      if i.val < 24576 then
        if i.val < 12288 then
          if i.val < 6144 then
            if i.val < 2048 then
              orbitPackedCertificate8Shard000 (Fin.ofNat 2048 (i.val))
            else
              if i.val < 4096 then
                orbitPackedCertificate8Shard001 (Fin.ofNat 2048 (i.val - 2048))
              else
                orbitPackedCertificate8Shard002 (Fin.ofNat 2048 (i.val - 4096))
          else
            if i.val < 8192 then
              orbitPackedCertificate8Shard003 (Fin.ofNat 2048 (i.val - 6144))
            else
              if i.val < 10240 then
                orbitPackedCertificate8Shard004 (Fin.ofNat 2048 (i.val - 8192))
              else
                orbitPackedCertificate8Shard005 (Fin.ofNat 2048 (i.val - 10240))
        else
          if i.val < 18432 then
            if i.val < 14336 then
              orbitPackedCertificate8Shard006 (Fin.ofNat 2048 (i.val - 12288))
            else
              if i.val < 16384 then
                orbitPackedCertificate8Shard007 (Fin.ofNat 2048 (i.val - 14336))
              else
                orbitPackedCertificate8Shard008 (Fin.ofNat 2048 (i.val - 16384))
          else
            if i.val < 20480 then
              orbitPackedCertificate8Shard009 (Fin.ofNat 2048 (i.val - 18432))
            else
              if i.val < 22528 then
                orbitPackedCertificate8Shard010 (Fin.ofNat 2048 (i.val - 20480))
              else
                orbitPackedCertificate8Shard011 (Fin.ofNat 2048 (i.val - 22528))
      else
        if i.val < 36864 then
          if i.val < 30720 then
            if i.val < 26624 then
              orbitPackedCertificate8Shard012 (Fin.ofNat 2048 (i.val - 24576))
            else
              if i.val < 28672 then
                orbitPackedCertificate8Shard013 (Fin.ofNat 2048 (i.val - 26624))
              else
                orbitPackedCertificate8Shard014 (Fin.ofNat 2048 (i.val - 28672))
          else
            if i.val < 32768 then
              orbitPackedCertificate8Shard015 (Fin.ofNat 2048 (i.val - 30720))
            else
              if i.val < 34816 then
                orbitPackedCertificate8Shard016 (Fin.ofNat 2048 (i.val - 32768))
              else
                orbitPackedCertificate8Shard017 (Fin.ofNat 2048 (i.val - 34816))
        else
          if i.val < 43008 then
            if i.val < 38912 then
              orbitPackedCertificate8Shard018 (Fin.ofNat 2048 (i.val - 36864))
            else
              if i.val < 40960 then
                orbitPackedCertificate8Shard019 (Fin.ofNat 2048 (i.val - 38912))
              else
                orbitPackedCertificate8Shard020 (Fin.ofNat 2048 (i.val - 40960))
          else
            if i.val < 45056 then
              orbitPackedCertificate8Shard021 (Fin.ofNat 2048 (i.val - 43008))
            else
              if i.val < 47104 then
                orbitPackedCertificate8Shard022 (Fin.ofNat 2048 (i.val - 45056))
              else
                orbitPackedCertificate8Shard023 (Fin.ofNat 2048 (i.val - 47104))
    else
      if i.val < 73728 then
        if i.val < 61440 then
          if i.val < 55296 then
            if i.val < 51200 then
              orbitPackedCertificate8Shard024 (Fin.ofNat 2048 (i.val - 49152))
            else
              if i.val < 53248 then
                orbitPackedCertificate8Shard025 (Fin.ofNat 2048 (i.val - 51200))
              else
                orbitPackedCertificate8Shard026 (Fin.ofNat 2048 (i.val - 53248))
          else
            if i.val < 57344 then
              orbitPackedCertificate8Shard027 (Fin.ofNat 2048 (i.val - 55296))
            else
              if i.val < 59392 then
                orbitPackedCertificate8Shard028 (Fin.ofNat 2048 (i.val - 57344))
              else
                orbitPackedCertificate8Shard029 (Fin.ofNat 2048 (i.val - 59392))
        else
          if i.val < 67584 then
            if i.val < 63488 then
              orbitPackedCertificate8Shard030 (Fin.ofNat 2048 (i.val - 61440))
            else
              if i.val < 65536 then
                orbitPackedCertificate8Shard031 (Fin.ofNat 2048 (i.val - 63488))
              else
                orbitPackedCertificate8Shard032 (Fin.ofNat 2048 (i.val - 65536))
          else
            if i.val < 69632 then
              orbitPackedCertificate8Shard033 (Fin.ofNat 2048 (i.val - 67584))
            else
              if i.val < 71680 then
                orbitPackedCertificate8Shard034 (Fin.ofNat 2048 (i.val - 69632))
              else
                orbitPackedCertificate8Shard035 (Fin.ofNat 2048 (i.val - 71680))
      else
        if i.val < 86016 then
          if i.val < 79872 then
            if i.val < 75776 then
              orbitPackedCertificate8Shard036 (Fin.ofNat 2048 (i.val - 73728))
            else
              if i.val < 77824 then
                orbitPackedCertificate8Shard037 (Fin.ofNat 2048 (i.val - 75776))
              else
                orbitPackedCertificate8Shard038 (Fin.ofNat 2048 (i.val - 77824))
          else
            if i.val < 81920 then
              orbitPackedCertificate8Shard039 (Fin.ofNat 2048 (i.val - 79872))
            else
              if i.val < 83968 then
                orbitPackedCertificate8Shard040 (Fin.ofNat 2048 (i.val - 81920))
              else
                orbitPackedCertificate8Shard041 (Fin.ofNat 2048 (i.val - 83968))
        else
          if i.val < 92160 then
            if i.val < 88064 then
              orbitPackedCertificate8Shard042 (Fin.ofNat 2048 (i.val - 86016))
            else
              if i.val < 90112 then
                orbitPackedCertificate8Shard043 (Fin.ofNat 2048 (i.val - 88064))
              else
                orbitPackedCertificate8Shard044 (Fin.ofNat 2048 (i.val - 90112))
          else
            if i.val < 94208 then
              orbitPackedCertificate8Shard045 (Fin.ofNat 2048 (i.val - 92160))
            else
              if i.val < 96256 then
                orbitPackedCertificate8Shard046 (Fin.ofNat 2048 (i.val - 94208))
              else
                orbitPackedCertificate8Shard047 (Fin.ofNat 2048 (i.val - 96256))
  else
    if i.val < 147456 then
      if i.val < 122880 then
        if i.val < 110592 then
          if i.val < 104448 then
            if i.val < 100352 then
              orbitPackedCertificate8Shard048 (Fin.ofNat 2048 (i.val - 98304))
            else
              if i.val < 102400 then
                orbitPackedCertificate8Shard049 (Fin.ofNat 2048 (i.val - 100352))
              else
                orbitPackedCertificate8Shard050 (Fin.ofNat 2048 (i.val - 102400))
          else
            if i.val < 106496 then
              orbitPackedCertificate8Shard051 (Fin.ofNat 2048 (i.val - 104448))
            else
              if i.val < 108544 then
                orbitPackedCertificate8Shard052 (Fin.ofNat 2048 (i.val - 106496))
              else
                orbitPackedCertificate8Shard053 (Fin.ofNat 2048 (i.val - 108544))
        else
          if i.val < 116736 then
            if i.val < 112640 then
              orbitPackedCertificate8Shard054 (Fin.ofNat 2048 (i.val - 110592))
            else
              if i.val < 114688 then
                orbitPackedCertificate8Shard055 (Fin.ofNat 2048 (i.val - 112640))
              else
                orbitPackedCertificate8Shard056 (Fin.ofNat 2048 (i.val - 114688))
          else
            if i.val < 118784 then
              orbitPackedCertificate8Shard057 (Fin.ofNat 2048 (i.val - 116736))
            else
              if i.val < 120832 then
                orbitPackedCertificate8Shard058 (Fin.ofNat 2048 (i.val - 118784))
              else
                orbitPackedCertificate8Shard059 (Fin.ofNat 2048 (i.val - 120832))
      else
        if i.val < 135168 then
          if i.val < 129024 then
            if i.val < 124928 then
              orbitPackedCertificate8Shard060 (Fin.ofNat 2048 (i.val - 122880))
            else
              if i.val < 126976 then
                orbitPackedCertificate8Shard061 (Fin.ofNat 2048 (i.val - 124928))
              else
                orbitPackedCertificate8Shard062 (Fin.ofNat 2048 (i.val - 126976))
          else
            if i.val < 131072 then
              orbitPackedCertificate8Shard063 (Fin.ofNat 2048 (i.val - 129024))
            else
              if i.val < 133120 then
                orbitPackedCertificate8Shard064 (Fin.ofNat 2048 (i.val - 131072))
              else
                orbitPackedCertificate8Shard065 (Fin.ofNat 2048 (i.val - 133120))
        else
          if i.val < 141312 then
            if i.val < 137216 then
              orbitPackedCertificate8Shard066 (Fin.ofNat 2048 (i.val - 135168))
            else
              if i.val < 139264 then
                orbitPackedCertificate8Shard067 (Fin.ofNat 2048 (i.val - 137216))
              else
                orbitPackedCertificate8Shard068 (Fin.ofNat 2048 (i.val - 139264))
          else
            if i.val < 143360 then
              orbitPackedCertificate8Shard069 (Fin.ofNat 2048 (i.val - 141312))
            else
              if i.val < 145408 then
                orbitPackedCertificate8Shard070 (Fin.ofNat 2048 (i.val - 143360))
              else
                orbitPackedCertificate8Shard071 (Fin.ofNat 2048 (i.val - 145408))
    else
      if i.val < 172032 then
        if i.val < 159744 then
          if i.val < 153600 then
            if i.val < 149504 then
              orbitPackedCertificate8Shard072 (Fin.ofNat 2048 (i.val - 147456))
            else
              if i.val < 151552 then
                orbitPackedCertificate8Shard073 (Fin.ofNat 2048 (i.val - 149504))
              else
                orbitPackedCertificate8Shard074 (Fin.ofNat 2048 (i.val - 151552))
          else
            if i.val < 155648 then
              orbitPackedCertificate8Shard075 (Fin.ofNat 2048 (i.val - 153600))
            else
              if i.val < 157696 then
                orbitPackedCertificate8Shard076 (Fin.ofNat 2048 (i.val - 155648))
              else
                orbitPackedCertificate8Shard077 (Fin.ofNat 2048 (i.val - 157696))
        else
          if i.val < 165888 then
            if i.val < 161792 then
              orbitPackedCertificate8Shard078 (Fin.ofNat 2048 (i.val - 159744))
            else
              if i.val < 163840 then
                orbitPackedCertificate8Shard079 (Fin.ofNat 2048 (i.val - 161792))
              else
                orbitPackedCertificate8Shard080 (Fin.ofNat 2048 (i.val - 163840))
          else
            if i.val < 167936 then
              orbitPackedCertificate8Shard081 (Fin.ofNat 2048 (i.val - 165888))
            else
              if i.val < 169984 then
                orbitPackedCertificate8Shard082 (Fin.ofNat 2048 (i.val - 167936))
              else
                orbitPackedCertificate8Shard083 (Fin.ofNat 2048 (i.val - 169984))
      else
        if i.val < 184320 then
          if i.val < 178176 then
            if i.val < 174080 then
              orbitPackedCertificate8Shard084 (Fin.ofNat 2048 (i.val - 172032))
            else
              if i.val < 176128 then
                orbitPackedCertificate8Shard085 (Fin.ofNat 2048 (i.val - 174080))
              else
                orbitPackedCertificate8Shard086 (Fin.ofNat 2048 (i.val - 176128))
          else
            if i.val < 180224 then
              orbitPackedCertificate8Shard087 (Fin.ofNat 2048 (i.val - 178176))
            else
              if i.val < 182272 then
                orbitPackedCertificate8Shard088 (Fin.ofNat 2048 (i.val - 180224))
              else
                orbitPackedCertificate8Shard089 (Fin.ofNat 2048 (i.val - 182272))
        else
          if i.val < 190464 then
            if i.val < 186368 then
              orbitPackedCertificate8Shard090 (Fin.ofNat 2048 (i.val - 184320))
            else
              if i.val < 188416 then
                orbitPackedCertificate8Shard091 (Fin.ofNat 2048 (i.val - 186368))
              else
                orbitPackedCertificate8Shard092 (Fin.ofNat 2048 (i.val - 188416))
          else
            if i.val < 194560 then
              if i.val < 192512 then
                orbitPackedCertificate8Shard093 (Fin.ofNat 2048 (i.val - 190464))
              else
                orbitPackedCertificate8Shard094 (Fin.ofNat 2048 (i.val - 192512))
            else
              if i.val < 196608 then
                orbitPackedCertificate8Shard095 (Fin.ofNat 2048 (i.val - 194560))
              else
                orbitPackedCertificate8Shard096 (Fin.ofNat 1877 (i.val - 196608))

end MonochromaticQuantumGraphs.N8D3
