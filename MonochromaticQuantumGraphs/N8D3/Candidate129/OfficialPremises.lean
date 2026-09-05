import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude756
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude759
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude891
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude893
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude894
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude909
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude912
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1650
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1652
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1677
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1679
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3051
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3053
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3054
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3056
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3069
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3072
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3074
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3078
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3081
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3083
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3096
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3101
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3105
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3107
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3108
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3110
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3123
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3126
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3132
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3294
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3297
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3312
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3315
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3339
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3342
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3366
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3369
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3537
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3540
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3555
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3558
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3582
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3585
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3609
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3612
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3780
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3782
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3783
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3785
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3861
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3863
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3864
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3866
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5292
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5310
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5319
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5322
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5337
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5340

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

/-- All 57 premises are consequences of the official equations, not new assumptions. -/
theorem official_amplitude_premises (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) : AmplitudePremises (supportWeight W) where
  h000 := premise000 W h hW
  h001 := premise001 W h hW
  h003 := premise003 W h hW
  h004 := premise004 W h hW
  h007 := premise007 W h hW
  h008 := premise008 W h hW
  h012 := premise012 W h hW
  h013 := premise013 W h hW
  h015 := premise015 W h hW
  h016 := premise016 W h hW
  h020 := premise020 W h hW
  h021 := premise021 W h hW
  h025 := premise025 W h hW
  h026 := premise026 W h hW
  h028 := premise028 W h hW
  h029 := premise029 W h hW
  h034 := premise034 W h hW
  h035 := premise035 W h hW
  h037 := premise037 W h hW
  h038 := premise038 W h hW
  h042 := premise042 W h hW
  h043 := premise043 W h hW
  h045 := premise045 W h hW
  h046 := premise046 W h hW
  h053 := premise053 W h hW
  h055 := premise055 W h hW
  h059 := premise059 W h hW
  h061 := premise061 W h hW
  h064 := premise064 W h hW
  h066 := premise066 W h hW
  h070 := premise070 W h hW
  h072 := premise072 W h hW
  h076 := premise076 W h hW
  h078 := premise078 W h hW
  h085 := premise085 W h hW
  h090 := premise090 W h hW
  h091 := premise091 W h hW
  h094 := premise094 W h hW
  h095 := premise095 W h hW
  h100 := premise100 W h hW
  h102 := premise102 W h hW
  h106 := premise106 W h hW
  h107 := premise107 W h hW
  h111 := premise111 W h hW
  h112 := premise112 W h hW
  h116 := premise116 W h hW
  h117 := premise117 W h hW
  h120 := premise120 W h hW
  h121 := premise121 W h hW
  h123 := premise123 W h hW
  h124 := premise124 W h hW
  h128 := premise128 W h hW
  h131 := premise131 W h hW
  h132 := premise132 W h hW
  h134 := premise134 W h hW
  h135 := premise135 W h hW
  h142 := premise142 W h hW

#print axioms official_amplitude_premises

end MonochromaticQuantumGraphs.N8D3.Candidate129
