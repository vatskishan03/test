import Mathlib

/-!
# Denominator-free terminal contradictions for the N8D3 support

These lemmas isolate the ordinary commutative-algebra endgames from the finite
certificate replay.  The branch modules only have to supply the two cleared
derivative identities (branch 0), or the five displayed torus equations
(branch 1), together with nonzeroness of the referenced support coordinates.
-/

namespace MonochromaticQuantumGraphs.N8D3

/-- Branch 0 endgame.  A cleared target derivative makes `delta` nonzero,
whereas a cleared forbidden derivative makes it zero. -/
theorem branch0_cleared_derivative_contradiction
    {x delta targetFactor zeroFactor : ℂ}
    (hx : x ≠ 0) (_htargetFactor : targetFactor ≠ 0)
    (hzeroFactor : zeroFactor ≠ 0)
    (htarget : x = delta * targetFactor)
    (hzero : 0 = delta * zeroFactor) : False := by
  have hdelta : delta ≠ 0 := by
    intro hd
    apply hx
    rw [hd, zero_mul] at htarget
    exact htarget
  have : delta = 0 := by
    rcases mul_eq_zero.mp hzero.symm with h | h
    · exact h
    · exact (hzeroFactor h).elim
  exact hdelta this

/-- The three bilinear equations used in branch 1 imply the required cross
relation without dividing by any coordinate. -/
theorem branch1_cross_relation
    {b c p q s t u v : ℂ}
    (hs : s ≠ 0) (hu : u ≠ 0)
    (h2 : b * u + p * s = 0)
    (h3 : b * v + q * s = 0)
    (h4 : c * u + p * t = 0) :
    c * v = -(q * t) := by
  have hps : p * s = -(b * u) := by
    linear_combination h2
  have hqs : q * s = -(b * v) := by
    linear_combination h3
  have hspv : s * (p * v - q * u) = 0 := by
    calc
      s * (p * v - q * u) = v * (p * s) - u * (q * s) := by ring
      _ = v * (-(b * u)) - u * (-(b * v)) := by rw [hps, hqs]
      _ = 0 := by ring
  have hpv : p * v = q * u := by
    have := (mul_eq_zero.mp hspv).resolve_left hs
    exact sub_eq_zero.mp this
  have hcu : c * u = -(p * t) := by
    linear_combination h4
  have hucross : u * (c * v + q * t) = 0 := by
    calc
      u * (c * v + q * t) = v * (c * u) + t * (q * u) := by ring
      _ = v * (-(p * t)) + t * (p * v) := by rw [hcu, ← hpv]
      _ = 0 := by ring
  have hcross : c * v + q * t = 0 :=
    (mul_eq_zero.mp hucross).resolve_left hu
  exact eq_neg_of_add_eq_zero_left hcross

/-- Branch 1 torus endgame.  The first displayed equation is retained in the
interface because it is part of the frozen five-equation certificate; the
cross-multiplication argument needs only the last three bilinear equations. -/
theorem branch1_five_equation_torus_contradiction
    {a b c p q r s t u v H M : ℂ}
    (hs : s ≠ 0) (hu : u ≠ 0) (hM : M ≠ 0)
    (_h1 : a * u + p * r = 0)
    (h2 : b * u + p * s = 0)
    (h3 : b * v + q * s = 0)
    (h4 : c * u + p * t = 0)
    (h5 : M + H * c * v + H * q * t = 0) : False := by
  have hcross := branch1_cross_relation hs hu h2 h3 h4
  apply hM
  calc
    M = M + H * c * v + H * q * t := by
      rw [mul_assoc H c v, hcross]
      ring
    _ = 0 := h5

end MonochromaticQuantumGraphs.N8D3
