import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1ResidualData8

/-! # Branch-one residual expansion shard 0 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 10000

set_option maxHeartbeats 1000000 in
theorem branch1ResidualGroupedExpansion8_shard0
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branch1X8 W * pmSumN 8 3 W (branch1ResidualBaseColoring8 0) -
        branch1Y8 W * pmSumN 8 3 W (branch1ResidualChangedColoring8 0) =
      branch1ResidualGroupedRhs8 W 0 := by
  rw [pmSumN8_eq_sum_tropicalSupportedTerms8 hSupport,
    branch1ResidualBaseSupportedSet8 0,
    pmSumN8_eq_sum_tropicalSupportedTerms8 hSupport,
    branch1ResidualChangedSupportedSet8 0]
  simp [branch1ResidualMatchingSet8, branch1ResidualMatchingSet10_8,
    pmTerm8, matchingEdges8,
    branch1ResidualBaseColoring8, branch1ResidualChangedColoring8,
    branchWeight8, branch1X8, branch1Y8, branch1Delta8,
    branch1Residual02Group8, branch1Residual23Group8,
    branch1Residual25Group8, branch1Residual25Bracket8,
    branch1ResidualFactor8, branch1ResidualGroupedRhs8,
    Fin.prod_univ_four]
  ring

end

end MonochromaticQuantumGraphs.N8D3
