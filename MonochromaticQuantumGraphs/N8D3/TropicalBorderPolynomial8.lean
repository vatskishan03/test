import Mathlib.Topology.Algebra.MvPolynomial
import MonochromaticQuantumGraphs.N8D3.TropicalBorderLimit8

/-!
# Polynomial non-separation from the N=8, D=3 tropical border

Polynomial evaluation is continuous in the tensor coordinates.  Consequently,
every polynomial that vanishes on the canonical supported perfect-matching
image also vanishes on its closure, and hence on the three-color GHZ tensor.
-/

namespace MonochromaticQuantumGraphs.N8D3

open Set

noncomputable section

/-- Polynomials in the `3^8` coordinates of an eight-party, three-color
tensor. -/
abbrev TropicalTensorPolynomial8 := MvPolynomial (Fin 8 → Fin 3) ℂ

/-- A tensor-coordinate polynomial vanishing on every exact-support torus tensor
also vanishes at `GHZ₃`. -/
theorem polynomial_eq_zero_on_tropicalExactSupportTensorImage8_imp_eval_ghz_eq_zero
    (p : TropicalTensorPolynomial8)
    (hvanish : ∀ T ∈ tropicalExactSupportTensorImage8,
      MvPolynomial.eval T p = 0) :
    MvPolynomial.eval ghzTensor8 p = 0 := by
  let zeroSet : Set TropicalTensor8 :=
    {T | MvPolynomial.eval T p = 0}
  have hzeroSet : IsClosed zeroSet := by
    exact isClosed_eq p.continuous_eval continuous_const
  have hsubset : tropicalExactSupportTensorImage8 ⊆ zeroSet := by
    intro T hT
    exact hvanish T hT
  exact (closure_minimal hsubset hzeroSet)
    ghzTensor8_mem_closure_tropicalExactSupportTensorImage8

/-- A tensor-coordinate polynomial vanishing on every official
perfect-matching tensor must vanish at the three-color, eight-party GHZ
tensor. -/
theorem polynomial_eq_zero_on_all_perfectMatchingTensor8_imp_eval_ghz_eq_zero
    (p : TropicalTensorPolynomial8)
    (hvanish : ∀ W : MonochromaticQuantumGraph.WeightsN 8 3 ℂ,
      MvPolynomial.eval (perfectMatchingTensor8 W) p = 0) :
    MvPolynomial.eval ghzTensor8 p = 0 := by
  apply polynomial_eq_zero_on_tropicalExactSupportTensorImage8_imp_eval_ghz_eq_zero p
  intro T hT
  rcases hT with ⟨W, _, rfl⟩
  exact hvanish W

/-- No polynomial in tensor coordinates can vanish on every
perfect-matching tensor while remaining nonzero on `GHZ₃`. -/
theorem no_polynomial_separates_perfectMatchingTensors8_from_ghz :
    ¬ ∃ p : TropicalTensorPolynomial8,
      (∀ W : MonochromaticQuantumGraph.WeightsN 8 3 ℂ,
        MvPolynomial.eval (perfectMatchingTensor8 W) p = 0) ∧
      MvPolynomial.eval ghzTensor8 p ≠ 0 := by
  rintro ⟨p, hvanish, hnonzero⟩
  exact hnonzero
    (polynomial_eq_zero_on_all_perfectMatchingTensor8_imp_eval_ghz_eq_zero
      p hvanish)

end

end MonochromaticQuantumGraphs.N8D3
