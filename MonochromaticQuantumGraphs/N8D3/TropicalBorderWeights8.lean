import MonochromaticQuantumGraphs.N8D3.Basic
import MonochromaticQuantumGraphs.N8D3.TropicalBorderData8

/-!
# Raw tropical weights and exact vertex-zero normalization

This module turns the canonical support and integer valuation into an explicit
one-parameter family of complex edge weights.  The normalization divides the
unique matching edge incident with vertex zero by the complete raw
monochromatic amplitude for its color.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

/-- The supported one-parameter family `t ^ ν`, embedded from `ℝ` into `ℂ`. -/
def tropicalRawWeights8 (t : ℝ) : WeightsN 8 3 ℂ := fun e =>
  if tropicalEdgeSupported8 e then
    ((t ^ tropicalEdgeValuation8 e : ℝ) : ℂ)
  else 0

/-- The real value of one raw matching monomial. -/
def tropicalRawTermValue8
    (t : ℝ) (q : Fin 8 → Fin 3) (m : Fin 105) : ℝ :=
  if tropicalMatchingSupported8 q m then
    t ^ tropicalMatchingValuation8 q m
  else 0

/-- The raw real perfect-matching amplitude represented by the certificate. -/
def tropicalRawAmplitude8 (t : ℝ) (q : Fin 8 → Fin 3) : ℝ :=
  ∑ m : Fin 105, tropicalRawTermValue8 t q m

/-- The complete raw monochromatic amplitude for color `c`. -/
def tropicalRawMonoAmplitude8 (t : ℝ) (c : Fin 3) : ℝ :=
  tropicalRawAmplitude8 t (tropicalMonoColoring8 c)

theorem tropicalMonoColoring8_eq_monoColoring8 (c : Fin 3) :
    tropicalMonoColoring8 c = monoColoring8 c := rfl

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-- In the matching table, vertex zero occurs as the left endpoint exactly in
the first tabulated edge. -/
theorem matchingEdges8_left_eq_zero_iff (m : Fin 105) (k : Fin 4) :
    (matchingEdges8 m k).1 = 0 ↔ k = 0 := by
  fin_cases k <;> fin_cases m <;> decide

/-- A raw factor selected by a tabulated matching is exactly the corresponding
certificate coordinate weight. -/
theorem tropicalRawWeights8_matching_factor
    (t : ℝ) (q : Fin 8 → Fin 3) (m : Fin 105) (k : Fin 4) :
    tropicalRawWeights8 t
        (let e := matchingEdges8 m k
         mkEdge e.1 e.2 (q e.1) (q e.2)) =
      if tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m k) then
        ((t ^ tropicalValuationCoord8
          (tropicalMatchingCoordinate8 q m k) : ℝ) : ℂ)
      else 0 := by
  have hlt := matchingEdges8_lt m k
  simp [tropicalRawWeights8, tropicalMatchingCoordinate8,
    tropicalSupportedEntry8, tropicalEntryValuation8,
    tropicalEdgeSupported8, tropicalEdgeValuation8, mkEdge, hlt]

/-- Kernel-level bridge from the complex matching monomial to the real
certificate monomial. -/
theorem pmTerm8_tropicalRawWeights8
    {t : ℝ} (ht : t ≠ 0) (q : Fin 8 → Fin 3) (m : Fin 105) :
    pmTerm8 (tropicalRawWeights8 t) q m =
      (tropicalRawTermValue8 t q m : ℂ) := by
  simp only [pmTerm8, Fin.prod_univ_four]
  rw [tropicalRawWeights8_matching_factor t q m 0,
    tropicalRawWeights8_matching_factor t q m 1,
    tropicalRawWeights8_matching_factor t q m 2,
    tropicalRawWeights8_matching_factor t q m 3]
  unfold tropicalRawTermValue8 tropicalMatchingSupported8
    tropicalMatchingValuation8
  by_cases h0 : tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 0) = true <;>
  by_cases h1 : tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 1) = true <;>
  by_cases h2 : tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 2) = true <;>
  by_cases h3 : tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 3) = true <;>
    simp_all [zpow_add₀ ht]

/-- The official recursive perfect-matching coordinate of the raw weights is
the real certificate sum embedded into `ℂ`. -/
theorem pmSumN_tropicalRawWeights8
    {t : ℝ} (ht : t ≠ 0) (q : Fin 8 → Fin 3) :
    pmSumN 8 3 (tropicalRawWeights8 t) q =
      (tropicalRawAmplitude8 t q : ℂ) := by
  rw [pmSumN8_eq_sum_pmTerm8]
  simp_rw [pmTerm8_tropicalRawWeights8 ht]
  simp [tropicalRawAmplitude8]

theorem tropicalRawTermValue8_nonneg
    {t : ℝ} (ht : 0 ≤ t) (q : Fin 8 → Fin 3) (m : Fin 105) :
    0 ≤ tropicalRawTermValue8 t q m := by
  unfold tropicalRawTermValue8
  split_ifs
  · exact zpow_nonneg ht _
  · exact le_rfl

@[simp] theorem tropicalRawTermValue8_target
    (t : ℝ) (c : Fin 3) :
    tropicalRawTermValue8 t (tropicalMonoColoring8 c)
        (tropicalTargetMatching8 c) = t ^ tropicalTargetRate8 c := by
  rw [tropicalRawTermValue8, if_pos (tropicalTargetMatchingSupported8 c),
    tropicalTargetMatchingValuation8 c]

/-- The complete monochromatic normalization denominator is positive for
every positive parameter. -/
theorem tropicalRawMonoAmplitude8_pos
    {t : ℝ} (ht : 0 < t) (c : Fin 3) :
    0 < tropicalRawMonoAmplitude8 t c := by
  unfold tropicalRawMonoAmplitude8 tropicalRawAmplitude8
  apply Finset.sum_pos'
  · intro m _
    exact tropicalRawTermValue8_nonneg ht.le _ _
  · refine ⟨tropicalTargetMatching8 c, Finset.mem_univ _, ?_⟩
    rw [tropicalRawTermValue8_target]
    exact zpow_pos ht _

/-- Exact target normalization: only an edge whose left endpoint is vertex
zero is divided by the complete raw monochromatic amplitude for its left
color. -/
def tropicalNormalizedWeights8 (t : ℝ) : WeightsN 8 3 ℂ := fun e =>
  if e.u = 0 then
    tropicalRawWeights8 t e / (tropicalRawMonoAmplitude8 t e.i : ℂ)
  else tropicalRawWeights8 t e

/-- The normalized family has no coordinates outside the canonical support. -/
theorem tropicalNormalizedWeights8_eq_zero_of_unsupported
    (t : ℝ) (e : EdgeN 8 3) (h : tropicalEdgeSupported8 e = false) :
    tropicalNormalizedWeights8 t e = 0 := by
  simp [tropicalNormalizedWeights8, tropicalRawWeights8, h]

/-- Every matching monomial acquires exactly one common normalization factor. -/
theorem pmTerm8_tropicalNormalizedWeights8
    (t : ℝ) (q : Fin 8 → Fin 3) (m : Fin 105) :
    pmTerm8 (tropicalNormalizedWeights8 t) q m =
      pmTerm8 (tropicalRawWeights8 t) q m /
        (tropicalRawMonoAmplitude8 t (q 0) : ℂ) := by
  have h0 : (matchingEdges8 m 0).1 = 0 :=
    (matchingEdges8_left_eq_zero_iff m 0).2 rfl
  have h1 : (matchingEdges8 m 1).1 ≠ 0 := by
    intro h
    have : (1 : Fin 4) = 0 := (matchingEdges8_left_eq_zero_iff m 1).1 h
    omega
  have h2 : (matchingEdges8 m 2).1 ≠ 0 := by
    intro h
    have : (2 : Fin 4) = 0 := (matchingEdges8_left_eq_zero_iff m 2).1 h
    omega
  have h3 : (matchingEdges8 m 3).1 ≠ 0 := by
    intro h
    have : (3 : Fin 4) = 0 := (matchingEdges8_left_eq_zero_iff m 3).1 h
    omega
  simp only [pmTerm8, Fin.prod_univ_four]
  simp [tropicalNormalizedWeights8, mkEdge, h0, h1, h2, h3]
  ring

/-- Exact amplitude-level effect of the vertex-zero normalization. -/
theorem pmSumN_tropicalNormalizedWeights8_eq_raw
    (t : ℝ) (q : Fin 8 → Fin 3) :
    pmSumN 8 3 (tropicalNormalizedWeights8 t) q =
      pmSumN 8 3 (tropicalRawWeights8 t) q /
        (tropicalRawMonoAmplitude8 t (q 0) : ℂ) := by
  rw [pmSumN8_eq_sum_pmTerm8, pmSumN8_eq_sum_pmTerm8]
  simp_rw [pmTerm8_tropicalNormalizedWeights8]
  rw [← Finset.sum_div]

/-- The normalized tensor coordinate is the quotient of the two real raw
amplitudes, embedded into `ℂ`. -/
theorem pmSumN_tropicalNormalizedWeights8
    {t : ℝ} (ht : t ≠ 0) (q : Fin 8 → Fin 3) :
    pmSumN 8 3 (tropicalNormalizedWeights8 t) q =
      ((tropicalRawAmplitude8 t q /
        tropicalRawMonoAmplitude8 t (q 0) : ℝ) : ℂ) := by
  rw [pmSumN_tropicalNormalizedWeights8_eq_raw,
    pmSumN_tropicalRawWeights8 ht]
  norm_cast

/-- Every monochromatic amplitude is exactly one after normalization. -/
theorem pmSumN_tropicalNormalizedWeights8_mono
    {t : ℝ} (ht : 0 < t) (c : Fin 3) :
    pmSumN 8 3 (tropicalNormalizedWeights8 t) (monoColoring8 c) = 1 := by
  rw [← tropicalMonoColoring8_eq_monoColoring8]
  rw [pmSumN_tropicalNormalizedWeights8 ht.ne']
  change ((tropicalRawMonoAmplitude8 t c /
    tropicalRawMonoAmplitude8 t c : ℝ) : ℂ) = 1
  norm_cast
  exact div_self (tropicalRawMonoAmplitude8_pos ht c).ne'

end

end MonochromaticQuantumGraphs.N8D3
