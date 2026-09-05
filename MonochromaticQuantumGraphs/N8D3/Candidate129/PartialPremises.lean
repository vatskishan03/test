import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude756
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude759
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude891
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude893
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude894
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude909
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude912
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude1650
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude1652
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude1677
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude1679
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3051
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3053
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3054
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3056
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3069
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3072
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3074
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3078
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3081
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3083
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3096
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3101
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3105
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3107
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3108
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3110
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3123
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3126
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3132
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3294
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3297
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3312
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3315
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3339
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3342
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3366
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3369
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3537
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3540
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3555
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3558
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3582
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3585
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3609
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3612
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3780
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3782
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3783
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3785
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3861
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3863
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3864
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude3866
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude5292
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude5310
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude5319
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude5322
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude5337
import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialAmplitude5340

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem partial_amplitude_premises (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) : AmplitudePremises (partialWeight W) where
  h000 := partial_premise000 W h hW
  h001 := partial_premise001 W h hW
  h003 := partial_premise003 W h hW
  h004 := partial_premise004 W h hW
  h007 := partial_premise007 W h hW
  h008 := partial_premise008 W h hW
  h012 := partial_premise012 W h hW
  h013 := partial_premise013 W h hW
  h015 := partial_premise015 W h hW
  h016 := partial_premise016 W h hW
  h020 := partial_premise020 W h hW
  h021 := partial_premise021 W h hW
  h025 := partial_premise025 W h hW
  h026 := partial_premise026 W h hW
  h028 := partial_premise028 W h hW
  h029 := partial_premise029 W h hW
  h034 := partial_premise034 W h hW
  h035 := partial_premise035 W h hW
  h037 := partial_premise037 W h hW
  h038 := partial_premise038 W h hW
  h042 := partial_premise042 W h hW
  h043 := partial_premise043 W h hW
  h045 := partial_premise045 W h hW
  h046 := partial_premise046 W h hW
  h053 := partial_premise053 W h hW
  h055 := partial_premise055 W h hW
  h059 := partial_premise059 W h hW
  h061 := partial_premise061 W h hW
  h064 := partial_premise064 W h hW
  h066 := partial_premise066 W h hW
  h070 := partial_premise070 W h hW
  h072 := partial_premise072 W h hW
  h076 := partial_premise076 W h hW
  h078 := partial_premise078 W h hW
  h085 := partial_premise085 W h hW
  h090 := partial_premise090 W h hW
  h091 := partial_premise091 W h hW
  h094 := partial_premise094 W h hW
  h095 := partial_premise095 W h hW
  h100 := partial_premise100 W h hW
  h102 := partial_premise102 W h hW
  h106 := partial_premise106 W h hW
  h107 := partial_premise107 W h hW
  h111 := partial_premise111 W h hW
  h112 := partial_premise112 W h hW
  h116 := partial_premise116 W h hW
  h117 := partial_premise117 W h hW
  h120 := partial_premise120 W h hW
  h121 := partial_premise121 W h hW
  h123 := partial_premise123 W h hW
  h124 := partial_premise124 W h hW
  h128 := partial_premise128 W h hW
  h131 := partial_premise131 W h hW
  h132 := partial_premise132 W h hW
  h134 := partial_premise134 W h hW
  h135 := partial_premise135 W h hW
  h142 := partial_premise142 W h hW

#print axioms partial_amplitude_premises

end MonochromaticQuantumGraphs.N8D3.Candidate129
