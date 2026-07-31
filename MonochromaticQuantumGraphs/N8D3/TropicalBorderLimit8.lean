import MonochromaticQuantumGraphs.N8D3.TropicalBorderFinite8
import MonochromaticQuantumGraphs.N8D3.TropicalBorderWeights8

/-!
# Coordinatewise tropical limit and closure theorem

The finite certificate makes every supported non-target exponent at least one
smaller than the selected target rate.  After the exact vertex-zero
normalization, the three monochromatic coordinates are identically one and
all nonmonochromatic coordinates tend to zero at `+∞`.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open Filter Set
open scoped BigOperators Matrix Topology

noncomputable section

/-- A raw monomial after division by the selected target rate at vertex zero. -/
def tropicalScaledTerm8
    (t : ℝ) (q : Fin 8 → Fin 3) (m : Fin 105) : ℝ :=
  if tropicalMatchingSupported8 q m then
    t ^ (tropicalMatchingValuation8 q m - tropicalTargetRate8 (q 0))
  else 0

/-- The complete rate-scaled perfect-matching amplitude. -/
def tropicalScaledAmplitude8 (t : ℝ) (q : Fin 8 → Fin 3) : ℝ :=
  ∑ m : Fin 105, tropicalScaledTerm8 t q m

/-- The real quotient represented by the normalized complex tensor coordinate. -/
def tropicalNormalizedAmplitude8 (t : ℝ) (q : Fin 8 → Fin 3) : ℝ :=
  tropicalRawAmplitude8 t q / tropicalRawMonoAmplitude8 t (q 0)

/-- The finite exception predicate recognizes exactly a constant coloring and
its selected target matching. -/
theorem tropicalSelectedTarget8_eq_true_iff
    (q : Fin 8 → Fin 3) (m : Fin 105) :
    tropicalSelectedTarget8 q m = true ↔
      q = tropicalMonoColoring8 (q 0) ∧
        m = tropicalTargetMatching8 (q 0) := by
  constructor
  · intro h
    simp only [tropicalSelectedTarget8, Bool.and_eq_true, beq_iff_eq] at h
    rcases h with ⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, hm⟩
    refine ⟨?_, hm⟩
    funext i
    fin_cases i <;>
      simp [tropicalMonoColoring8, h1, h2, h3, h4, h5, h6, h7]
  · rintro ⟨hq, hm⟩
    rw [hm, hq]
    simp [tropicalSelectedTarget8, tropicalMonoColoring8]

/-- On eight vertices, the official `allEqual` predicate is equivalent to
equality with the constant coloring at vertex zero. -/
theorem allEqual_iff_eq_tropicalMonoColoring8 (q : Fin 8 → Fin 3) :
    allEqual q ↔ q = tropicalMonoColoring8 (q 0) := by
  constructor
  · intro h
    simp [allEqual, allEqualList, vertices] at h
    funext i
    fin_cases i <;> simp [tropicalMonoColoring8] <;> aesop
  · intro h
    rw [h, tropicalMonoColoring8_eq_monoColoring8]
    exact allEqual_monoColoring8 _

theorem tropicalSelectedTarget8_eq_false_of_not_allEqual
    {q : Fin 8 → Fin 3} (hq : ¬ allEqual q) (m : Fin 105) :
    tropicalSelectedTarget8 q m = false := by
  apply Bool.eq_false_of_not_eq_true
  intro htrue
  apply hq
  exact (allEqual_iff_eq_tropicalMonoColoring8 q).2
    ((tropicalSelectedTarget8_eq_true_iff q m).1 htrue).1

theorem tropicalSelectedTarget8_mono_eq_false_of_ne
    (c : Fin 3) {m : Fin 105} (hm : m ≠ tropicalTargetMatching8 c) :
    tropicalSelectedTarget8 (tropicalMonoColoring8 c) m = false := by
  apply Bool.eq_false_of_not_eq_true
  intro htrue
  apply hm
  simpa [tropicalMonoColoring8] using
    ((tropicalSelectedTarget8_eq_true_iff
      (tropicalMonoColoring8 c) m).1 htrue).2

/-- Every supported competing scaled monomial tends to zero. -/
theorem tropicalScaledTerm8_tendsto_zero
    (q : Fin 8 → Fin 3) (m : Fin 105)
    (hselected : tropicalSelectedTarget8 q m = false) :
    Tendsto (fun t : ℝ => tropicalScaledTerm8 t q m) atTop (𝓝 0) := by
  by_cases hs : tropicalMatchingSupported8 q m = true
  · have hv := tropicalStrictValuationGap8 q m hs hselected
    have hneg :
        tropicalMatchingValuation8 q m - tropicalTargetRate8 (q 0) < 0 := by
      omega
    simpa [tropicalScaledTerm8, hs] using
      (tendsto_zpow_atTop_zero (𝕜 := ℝ) hneg)
  · have hs0 : tropicalMatchingSupported8 q m = false :=
      Bool.eq_false_of_not_eq_true hs
    simpa [tropicalScaledTerm8, hs0] using
      (tendsto_const_nhds : Tendsto (fun _ : ℝ => (0 : ℝ)) atTop (𝓝 0))

/-- The selected target scaled monomial is identically one. -/
@[simp] theorem tropicalScaledTerm8_target
    (t : ℝ) (c : Fin 3) :
    tropicalScaledTerm8 t (tropicalMonoColoring8 c)
        (tropicalTargetMatching8 c) = 1 := by
  rw [tropicalScaledTerm8,
    if_pos (tropicalTargetMatchingSupported8 c),
    tropicalTargetMatchingValuation8 c]
  simp [tropicalMonoColoring8]

/-- A nonmonochromatic scaled amplitude tends to zero. -/
theorem tropicalScaledAmplitude8_tendsto_zero
    {q : Fin 8 → Fin 3} (hq : ¬ allEqual q) :
    Tendsto (fun t : ℝ => tropicalScaledAmplitude8 t q) atTop (𝓝 0) := by
  simpa [tropicalScaledAmplitude8] using
    tendsto_finset_sum Finset.univ (fun m _ =>
      tropicalScaledTerm8_tendsto_zero q m
        (tropicalSelectedTarget8_eq_false_of_not_allEqual hq m))

/-- A monochromatic scaled amplitude tends to its unique leading coefficient,
which is one. -/
theorem tropicalScaledAmplitude8_mono_tendsto_one (c : Fin 3) :
    Tendsto
      (fun t : ℝ => tropicalScaledAmplitude8 t (tropicalMonoColoring8 c))
      atTop (𝓝 1) := by
  let target := tropicalTargetMatching8 c
  have hrest : Tendsto
      (fun t : ℝ => ∑ m ∈ Finset.univ.erase target,
        tropicalScaledTerm8 t (tropicalMonoColoring8 c) m)
      atTop (𝓝 0) := by
    simpa using tendsto_finset_sum (Finset.univ.erase target) (fun m hm =>
      tropicalScaledTerm8_tendsto_zero (tropicalMonoColoring8 c) m
        (tropicalSelectedTarget8_mono_eq_false_of_ne c
          (Finset.mem_erase.mp hm).1))
  have hadd := (tendsto_const_nhds :
      Tendsto (fun _ : ℝ => (1 : ℝ)) atTop (𝓝 1)).add hrest
  convert hadd using 1
  · funext t
    rw [tropicalScaledAmplitude8,
      ← Finset.univ.add_sum_erase
        (fun m => tropicalScaledTerm8 t (tropicalMonoColoring8 c) m)
        (Finset.mem_univ target)]
    simp [target]
  · simp

/-- Dividing a raw monomial by the target rate produces the scaled monomial. -/
theorem tropicalRawTermValue8_div_targetRate
    {t : ℝ} (ht : 0 < t) (q : Fin 8 → Fin 3) (m : Fin 105) :
    tropicalRawTermValue8 t q m / t ^ tropicalTargetRate8 (q 0) =
      tropicalScaledTerm8 t q m := by
  by_cases hs : tropicalMatchingSupported8 q m = true
  · simp [tropicalRawTermValue8, tropicalScaledTerm8, hs,
      zpow_sub₀ ht.ne']
  · have hs0 : tropicalMatchingSupported8 q m = false :=
      Bool.eq_false_of_not_eq_true hs
    simp [tropicalRawTermValue8, tropicalScaledTerm8, hs0]

/-- Amplitude-level raw/scaled identity. -/
theorem tropicalRawAmplitude8_div_targetRate
    {t : ℝ} (ht : 0 < t) (q : Fin 8 → Fin 3) :
    tropicalRawAmplitude8 t q / t ^ tropicalTargetRate8 (q 0) =
      tropicalScaledAmplitude8 t q := by
  unfold tropicalRawAmplitude8 tropicalScaledAmplitude8
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro m _
  exact tropicalRawTermValue8_div_targetRate ht q m

/-- For positive `t`, canceling the common target rate converts the normalized
raw quotient into the quotient of scaled amplitudes. -/
theorem tropicalNormalizedAmplitude8_eq_scaled
    {t : ℝ} (ht : 0 < t) (q : Fin 8 → Fin 3) :
    tropicalNormalizedAmplitude8 t q =
      tropicalScaledAmplitude8 t q /
        tropicalScaledAmplitude8 t (tropicalMonoColoring8 (q 0)) := by
  have hnum := tropicalRawAmplitude8_div_targetRate ht q
  have hden := tropicalRawAmplitude8_div_targetRate ht
    (tropicalMonoColoring8 (q 0))
  simp [tropicalMonoColoring8] at hden
  unfold tropicalNormalizedAmplitude8 tropicalRawMonoAmplitude8
  rw [← hnum, ← hden]
  exact (div_div_div_cancel_right₀
    (zpow_ne_zero _ ht.ne')
    (tropicalRawAmplitude8 t q)
    (tropicalRawAmplitude8 t (tropicalMonoColoring8 (q 0)))).symm

/-- The real normalized amplitude of every nonmonochromatic coloring tends to
zero. -/
theorem tropicalNormalizedAmplitude8_tendsto_zero
    {q : Fin 8 → Fin 3} (hq : ¬ allEqual q) :
    Tendsto (fun t : ℝ => tropicalNormalizedAmplitude8 t q) atTop (𝓝 0) := by
  have hratio := (tropicalScaledAmplitude8_tendsto_zero hq).div
    (tropicalScaledAmplitude8_mono_tendsto_one (q 0)) one_ne_zero
  have hratio0 : Tendsto
      (fun t : ℝ => tropicalScaledAmplitude8 t q /
        tropicalScaledAmplitude8 t (tropicalMonoColoring8 (q 0)))
      atTop (𝓝 0) := by simpa using hratio
  refine hratio0.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with t ht
  exact (tropicalNormalizedAmplitude8_eq_scaled ht q).symm

/-- The real normalized monochromatic amplitude is exactly one for positive
parameters. -/
theorem tropicalNormalizedAmplitude8_mono
    {t : ℝ} (ht : 0 < t) (c : Fin 3) :
    tropicalNormalizedAmplitude8 t (tropicalMonoColoring8 c) = 1 := by
  unfold tropicalNormalizedAmplitude8
  change tropicalRawMonoAmplitude8 t c / tropicalRawMonoAmplitude8 t c = 1
  exact div_self (tropicalRawMonoAmplitude8_pos ht c).ne'

/-- Official perfect-matching tensor coordinates on eight vertices. -/
abbrev TropicalTensor8 := (Fin 8 → Fin 3) → ℂ

def perfectMatchingTensor8 (W : WeightsN 8 3 ℂ) : TropicalTensor8 := fun q =>
  pmSumN 8 3 W q

/-- The three-color, eight-party GHZ tensor. -/
def ghzTensor8 : TropicalTensor8 := fun q =>
  if allEqual q then 1 else 0

def tropicalNormalizedTensor8 (t : ℝ) : TropicalTensor8 :=
  perfectMatchingTensor8 (tropicalNormalizedWeights8 t)

/-- Every nonmonochromatic official tensor coordinate tends to zero. -/
theorem tropicalNormalizedTensor8_coord_tendsto_zero
    {q : Fin 8 → Fin 3} (hq : ¬ allEqual q) :
    Tendsto (fun t : ℝ => tropicalNormalizedTensor8 t q) atTop (𝓝 0) := by
  have hreal := tropicalNormalizedAmplitude8_tendsto_zero hq
  have hcomplex : Tendsto
      (fun t : ℝ => (tropicalNormalizedAmplitude8 t q : ℂ))
      atTop (𝓝 0) := by
    simpa using (Complex.continuous_ofReal.tendsto 0).comp hreal
  refine hcomplex.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with t ht
  exact (pmSumN_tropicalNormalizedWeights8 ht.ne' q).symm

/-- Every monochromatic official tensor coordinate is eventually (indeed for
all positive parameters) exactly one. -/
theorem tropicalNormalizedTensor8_coord_mono_tendsto_one (c : Fin 3) :
    Tendsto
      (fun t : ℝ => tropicalNormalizedTensor8 t (monoColoring8 c))
      atTop (𝓝 1) := by
  refine tendsto_const_nhds.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with t ht
  exact (pmSumN_tropicalNormalizedWeights8_mono ht c).symm

/-- The normalized perfect-matching tensors converge coordinatewise to GHZ₃. -/
theorem tropicalNormalizedTensor8_tendsto_ghz :
    Tendsto tropicalNormalizedTensor8 atTop (𝓝 ghzTensor8) := by
  rw [tendsto_pi_nhds]
  intro q
  by_cases hq : allEqual q
  · have hqm := (allEqual_iff_eq_tropicalMonoColoring8 q).1 hq
    rw [hqm, tropicalMonoColoring8_eq_monoColoring8]
    simpa [ghzTensor8, allEqual_monoColoring8] using
      tropicalNormalizedTensor8_coord_mono_tendsto_one (q 0)
  · simpa [ghzTensor8, hq] using
      tropicalNormalizedTensor8_coord_tendsto_zero hq

/-- Tensors realized by weights supported on the canonical 144 entries. -/
def tropicalSupportTensorImage8 : Set TropicalTensor8 :=
  {T | ∃ W : WeightsN 8 3 ℂ,
    (∀ e, tropicalEdgeSupported8 e = false → W e = 0) ∧
      T = perfectMatchingTensor8 W}

theorem tropicalNormalizedTensor8_mem_supportImage (t : ℝ) :
    tropicalNormalizedTensor8 t ∈ tropicalSupportTensorImage8 := by
  refine ⟨tropicalNormalizedWeights8 t, ?_, rfl⟩
  intro e he
  exact tropicalNormalizedWeights8_eq_zero_of_unsupported t e he

/-- **Tropical border theorem.** The three-color GHZ tensor on eight vertices
lies in the closure of the perfect-matching tensor image on the canonical
144-entry support.  This is a border/closure statement, not an exact graph. -/
theorem ghzTensor8_mem_closure_tropicalSupportTensorImage8 :
    ghzTensor8 ∈ closure tropicalSupportTensorImage8 :=
  mem_closure_of_tendsto tropicalNormalizedTensor8_tendsto_ghz
    (Eventually.of_forall tropicalNormalizedTensor8_mem_supportImage)

end

end MonochromaticQuantumGraphs.N8D3
