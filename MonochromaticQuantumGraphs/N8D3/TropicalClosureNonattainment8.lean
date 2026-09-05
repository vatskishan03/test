import MonochromaticQuantumGraphs.N8D3.TropicalNonattainment8
import MonochromaticQuantumGraphs.N8D3.TropicalBorderPolynomial8

/-!
# Border nonattainment on the frozen N=8, D=3 tropical support

The GHZ tensor lies in the closure of the exact-support tensor image but not
in the image itself.  Continuity then rules out separating this particular
nonattainment by a tensor-coordinate polynomial that vanishes on the entire
exact-support image.
-/

namespace MonochromaticQuantumGraphs.N8D3

open Set

noncomputable section

/-- The three-color GHZ tensor is a genuine boundary point of the frozen
exact-support perfect-matching tensor image. -/
theorem ghzTensor8_mem_closure_diff_tropicalExactSupportTensorImage8 :
    ghzTensor8 ∈
      closure tropicalExactSupportTensorImage8 \
        tropicalExactSupportTensorImage8 :=
  ⟨ghzTensor8_mem_closure_tropicalExactSupportTensorImage8,
    ghzTensor8_not_mem_tropicalExactSupportTensorImage8⟩

/-- No tensor-coordinate polynomial vanishes on the whole frozen
exact-support image while being nonzero at its nonattained GHZ boundary
point. -/
theorem no_polynomial_separates_tropicalExactSupportTensorImage8_from_ghz :
    ¬ ∃ p : TropicalTensorPolynomial8,
      (∀ T ∈ tropicalExactSupportTensorImage8,
        MvPolynomial.eval T p = 0) ∧
      MvPolynomial.eval ghzTensor8 p ≠ 0 := by
  rintro ⟨p, hvanish, hnonzero⟩
  exact hnonzero
    (polynomial_eq_zero_on_tropicalExactSupportTensorImage8_imp_eval_ghz_eq_zero
      p hvanish)

end

end MonochromaticQuantumGraphs.N8D3
