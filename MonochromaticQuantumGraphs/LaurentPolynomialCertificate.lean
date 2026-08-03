import MonochromaticQuantumGraphs.LaurentFaceCertificate

/-!
# Sparse Laurent-polynomial certificates

This module supplies the semantic checker between exact finite relation data
and the signed-character lattice checker.  Certificate generators provide
only sparse integer polynomials, explicit monomial shifts, and integer
character-combination witnesses.  Lean replays every polynomial identity and
all Laurent evaluation algebra.
-/

namespace MonochromaticQuantumGraphs

open scoped BigOperators

noncomputable section

/-- A sparse Laurent polynomial with integer coefficients. -/
abbrev LaurentPolynomial (ι : Type*) := LaurentExponent ι →₀ ℤ

namespace LaurentPolynomial

/-- Laurent evaluation as a linear map from integer coefficients to complex
numbers. -/
def evalLinear {ι : Type*} [Fintype ι] (x : ι → ℂ) :
    LaurentPolynomial ι →ₗ[ℤ] ℂ :=
  Finsupp.linearCombination ℤ fun e ↦ laurentEval x e

/-- Evaluation of a sparse Laurent polynomial. -/
def eval {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (p : LaurentPolynomial ι) : ℂ :=
  evalLinear x p

/-- Semantic validity of a Laurent-polynomial relation. -/
def Holds {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (p : LaurentPolynomial ι) : Prop :=
  p.eval x = 0

@[simp] theorem eval_zero {ι : Type*} [Fintype ι] (x : ι → ℂ) :
    eval x (0 : LaurentPolynomial ι) = 0 := by
  exact LinearMap.map_zero (evalLinear x)

theorem eval_add {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (p q : LaurentPolynomial ι) :
    eval x (p + q) = eval x p + eval x q := by
  exact LinearMap.map_add (evalLinear x) p q

theorem eval_sub {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (p q : LaurentPolynomial ι) :
    eval x (p - q) = eval x p - eval x q := by
  exact LinearMap.map_sub (evalLinear x) p q

theorem eval_zsmul {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (n : ℤ) (p : LaurentPolynomial ι) :
    eval x (n • p) = n • eval x p := by
  exact LinearMap.map_smul (evalLinear x) n p

theorem eval_finset_sum {ι κ : Type*} [Fintype ι]
    (x : ι → ℂ) (s : Finset κ) (p : κ → LaurentPolynomial ι) :
    eval x (∑ k ∈ s, p k) = ∑ k ∈ s, eval x (p k) := by
  simp [eval]

@[simp] theorem eval_single {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (e : LaurentExponent ι) (c : ℤ) :
    eval x (Finsupp.single e c) = c • laurentEval x e := by
  simpa [eval, evalLinear] using
    (Finsupp.linearCombination_single
      (v := fun f : LaurentExponent ι ↦ laurentEval x f) ℤ c e)

/-- Translation by a Laurent monomial, as an integer-linear map. -/
def translateLinear {ι : Type*} (shift : LaurentExponent ι) :
    LaurentPolynomial ι →ₗ[ℤ] LaurentPolynomial ι :=
  Finsupp.linearCombination ℤ fun e ↦
    Finsupp.single (shift + e) 1

/-- Multiply every term by the Laurent monomial with exponent `shift`. -/
def translate {ι : Type*} (shift : LaurentExponent ι)
    (p : LaurentPolynomial ι) : LaurentPolynomial ι :=
  translateLinear shift p

theorem translate_add {ι : Type*} (shift : LaurentExponent ι)
    (p q : LaurentPolynomial ι) :
    translate shift (p + q) = translate shift p + translate shift q := by
  exact LinearMap.map_add (translateLinear shift) p q

@[simp] theorem translate_single {ι : Type*}
    (shift e : LaurentExponent ι) (c : ℤ) :
    translate shift (Finsupp.single e c) =
      Finsupp.single (shift + e) c := by
  simp [translate, translateLinear]

/-- Evaluation turns a monomial translation into multiplication by that
monomial. -/
theorem eval_translate {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (shift : LaurentExponent ι) (p : LaurentPolynomial ι) :
    eval x (translate shift p) = laurentEval x shift * eval x p := by
  classical
  induction p using Finsupp.induction with
  | zero => simp [translate, translateLinear]
  | @single_add e c p he hc ih =>
      rw [translate_add, eval_add, eval_add, ih,
        translate_single, eval_single, eval_single,
        laurentEval_add x hx, mul_add]
      ring

/-- One shifted integer multiple of a source relation. -/
structure ShiftedUse (σ ι : Type*) where
  source : σ
  scale : ℤ
  shift : LaurentExponent ι

/-- An exact sparse-polynomial identity expressing a target as a finite
integer combination of translated source relations. -/
structure ShiftedCombinationCertificate
    {σ ι κ : Type*} [Fintype κ]
    (sources : σ → LaurentPolynomial ι)
    (target : LaurentPolynomial ι) where
  use : κ → ShiftedUse σ ι
  combination_eq :
    ∑ k, (use k).scale •
      translate (use k).shift (sources (use k).source) = target

/-- Kernel replay of a shifted-combination certificate. -/
theorem holds_of_shiftedCombinationCertificate
    {σ ι κ : Type*} [Fintype ι] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (sources : σ → LaurentPolynomial ι)
    (target : LaurentPolynomial ι)
    (cert : ShiftedCombinationCertificate (κ := κ) sources target)
    (hsource : ∀ s, (sources s).Holds x) :
    target.Holds x := by
  classical
  unfold Holds at hsource ⊢
  rw [← cert.combination_eq,
    eval_finset_sum x Finset.univ]
  apply Finset.sum_eq_zero
  intro k _
  rw [eval_zsmul, eval_translate x hx, hsource]
  simp

end LaurentPolynomial

/-- A signed character comparing two Laurent monomials. -/
def differenceRow {ι : Type*}
    (sourceExponent targetExponent : LaurentExponent ι)
    (signExponent : ℤ) :
    SignedCharacterRow ι where
  exponent := sourceExponent - targetExponent
  signExponent := signExponent

/-- An explicit signed-character implication reducing one monomial to
another. -/
structure MonomialReductionCertificate
    {ι χ : Type*} [Fintype χ]
    (chars : χ → SignedCharacterRow ι)
    (sourceExponent targetExponent : LaurentExponent ι) where
  signExponent : ℤ
  implication : SignedCharacterRow.ImplicationCertificate chars
    (differenceRow sourceExponent targetExponent signExponent)

/-- Semantic replay of an exact monomial-reduction certificate. -/
theorem laurentEval_eq_sign_mul_of_reduction
    {ι χ : Type*} [Fintype ι] [Fintype χ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (sourceExponent targetExponent : LaurentExponent ι)
    (cert : MonomialReductionCertificate chars sourceExponent targetExponent)
    (hchars : ∀ c, (chars c).Holds x) :
    laurentEval x sourceExponent =
      (-1 : ℂ) ^ cert.signExponent * laurentEval x targetExponent := by
  have hdiff := SignedCharacterRow.holds_of_implicationCertificate
    x hx chars
      (differenceRow sourceExponent targetExponent cert.signExponent)
      cert.implication hchars
  change laurentEval x (sourceExponent - targetExponent) =
    (-1 : ℂ) ^ cert.signExponent at hdiff
  rw [laurentEval_sub x hx] at hdiff
  exact (div_eq_iff
    (laurentEval_ne_zero x hx targetExponent)).mp hdiff

namespace SignedCharacterRow

/-- The actual pointwise factor represented by a signed character. -/
def factorValue {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (row : SignedCharacterRow ι) : ℂ :=
  laurentEval x row.exponent - (-1 : ℂ) ^ row.signExponent

theorem factorValue_eq_zero_iff {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (row : SignedCharacterRow ι) :
    row.factorValue x = 0 ↔ row.Holds x := by
  simp [factorValue, Holds, sub_eq_zero]

end SignedCharacterRow

end


end MonochromaticQuantumGraphs
