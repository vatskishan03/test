import MonochromaticQuantumGraphs.LaurentFaceCertificate
import Mathlib.LinearAlgebra.Finsupp.LinearCombination
import Mathlib.Algebra.Ring.Parity
import Mathlib.Data.Fintype.Sum
import Mathlib.Tactic.Ring

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
  implication : SignedCharacterRow.ImplicationCertificate
    (SignedCharacterRow.withParityGenerator chars)
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
    x hx (SignedCharacterRow.withParityGenerator chars)
      (differenceRow sourceExponent targetExponent cert.signExponent)
      cert.implication
      (SignedCharacterRow.withParityGenerator_holds x chars hchars)
  change laurentEval x (sourceExponent - targetExponent) =
    (-1 : ℂ) ^ cert.signExponent at hdiff
  rw [laurentEval_sub x hx] at hdiff
  exact (div_eq_iff
    (laurentEval_ne_zero x hx targetExponent)).mp hdiff

/-- The integer coefficient obtained after absorbing a power of `-1` into an
integer Laurent-polynomial coefficient. -/
def signedCoefficient (signExponent coefficient : ℤ) : ℤ :=
  if Even signExponent then coefficient else -coefficient

/-- Absorbing a certified sign into an integer scalar commutes with complex
evaluation. -/
theorem zsmul_neg_one_zpow_mul
    (signExponent coefficient : ℤ) (z : ℂ) :
    coefficient • ((-1 : ℂ) ^ signExponent * z) =
      signedCoefficient signExponent coefficient • z := by
  rw [neg_one_zpow_eq_ite]
  by_cases h : Even signExponent
  · simp [signedCoefficient, h]
  · simp [signedCoefficient, h]

/-- One source monomial, its chosen representative, and the raw signed-
character certificate connecting them. -/
structure CharacterReductionUse
    {ι χ : Type*} [Fintype χ]
    (chars : χ → SignedCharacterRow ι) where
  coefficient : ℤ
  sourceExponent : LaurentExponent ι
  targetExponent : LaurentExponent ι
  reduction : MonomialReductionCertificate chars sourceExponent targetExponent

/-- An exact term-by-term reduction of a sparse Laurent polynomial modulo a
finite family of signed characters.  Both sparse-polynomial equalities are
checked by Lean; the certificate does not trust a quotient normal form. -/
structure CharacterReductionCertificate
    {ι χ κ : Type*} [Fintype χ] [Fintype κ]
    (chars : χ → SignedCharacterRow ι)
    (source target : LaurentPolynomial ι) where
  use : κ → CharacterReductionUse chars
  source_eq :
    ∑ k, Finsupp.single (use k).sourceExponent (use k).coefficient = source
  target_eq :
    ∑ k, Finsupp.single (use k).targetExponent
      (signedCoefficient (use k).reduction.signExponent (use k).coefficient) =
        target

/-- Kernel replay of an exact term-by-term character reduction. -/
theorem eval_eq_of_characterReductionCertificate
    {ι χ κ : Type*} [Fintype ι] [Fintype χ] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (source target : LaurentPolynomial ι)
    (cert : CharacterReductionCertificate (κ := κ) chars source target)
    (hchars : ∀ c, (chars c).Holds x) :
    source.eval x = target.eval x := by
  classical
  calc
    source.eval x =
        LaurentPolynomial.eval x
          (∑ k, Finsupp.single (cert.use k).sourceExponent
            (cert.use k).coefficient) :=
      congrArg (LaurentPolynomial.eval x) cert.source_eq.symm
    _ = ∑ k, LaurentPolynomial.eval x
          (Finsupp.single (cert.use k).sourceExponent
            (cert.use k).coefficient) :=
      LaurentPolynomial.eval_finset_sum x Finset.univ _
    _ = ∑ k, LaurentPolynomial.eval x
          (Finsupp.single (cert.use k).targetExponent
            (signedCoefficient (cert.use k).reduction.signExponent
              (cert.use k).coefficient)) := by
      apply Finset.sum_congr rfl
      intro k _
      rw [LaurentPolynomial.eval_single, LaurentPolynomial.eval_single,
        laurentEval_eq_sign_mul_of_reduction x hx chars
          (cert.use k).sourceExponent (cert.use k).targetExponent
          (cert.use k).reduction hchars]
      exact zsmul_neg_one_zpow_mul
        (cert.use k).reduction.signExponent (cert.use k).coefficient _
    _ = LaurentPolynomial.eval x
          (∑ k, Finsupp.single (cert.use k).targetExponent
            (signedCoefficient (cert.use k).reduction.signExponent
              (cert.use k).coefficient)) :=
      (LaurentPolynomial.eval_finset_sum x Finset.univ _).symm
    _ = target.eval x :=
      congrArg (LaurentPolynomial.eval x) cert.target_eq

/-- Semantic consequence of a term-by-term character reduction. -/
theorem holds_of_characterReductionCertificate
    {ι χ κ : Type*} [Fintype ι] [Fintype χ] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (source target : LaurentPolynomial ι)
    (cert : CharacterReductionCertificate (κ := κ) chars source target)
    (hchars : ∀ c, (chars c).Holds x)
    (hsource : source.Holds x) :
    target.Holds x := by
  unfold LaurentPolynomial.Holds at hsource ⊢
  rw [← eval_eq_of_characterReductionCertificate
    x hx chars source target cert hchars]
  exact hsource

/-- An exact character reduction whose normalized target differs from the
checked aggregate by a nonzero integer unit. -/
structure NormalizedCharacterReductionCertificate
    {ι χ κ : Type*} [Fintype χ] [Fintype κ]
    (chars : χ → SignedCharacterRow ι)
    (source target : LaurentPolynomial ι) where
  unit : ℤ
  unit_ne_zero : unit ≠ 0
  reduction : CharacterReductionCertificate (κ := κ) chars source
    (unit • target)

/-- A valid source relation forces the normalized target relation, with the
nonzero integer normalization cancelled inside Lean. -/
theorem holds_of_normalizedCharacterReductionCertificate
    {ι χ κ : Type*} [Fintype ι] [Fintype χ] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (source target : LaurentPolynomial ι)
    (cert : NormalizedCharacterReductionCertificate
      (κ := κ) chars source target)
    (hchars : ∀ c, (chars c).Holds x)
    (hsource : source.Holds x) :
    target.Holds x := by
  have hscaled : (cert.unit • target).Holds x :=
    holds_of_characterReductionCertificate
      x hx chars source _ cert.reduction hchars hsource
  unfold LaurentPolynomial.Holds at hscaled ⊢
  rw [LaurentPolynomial.eval_zsmul] at hscaled
  simp only [← Int.cast_smul_eq_zsmul ℂ, smul_eq_mul] at hscaled
  exact (mul_eq_zero.mp hscaled).resolve_left
    (Int.cast_ne_zero.mpr cert.unit_ne_zero)

namespace SignedCharacterRow

/-- The actual pointwise factor represented by a signed character. -/
def factorValue {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (row : SignedCharacterRow ι) : ℂ :=
  laurentEval x row.exponent - (-1 : ℂ) ^ row.signExponent

theorem factorValue_eq_zero_iff {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (row : SignedCharacterRow ι) :
    row.factorValue x = 0 ↔ row.Holds x := by
  simp [factorValue, Holds, sub_eq_zero]

/-- The sparse two-term Laurent polynomial represented by a signed
character. -/
def factorPolynomial {ι : Type*} (row : SignedCharacterRow ι) :
    LaurentPolynomial ι :=
  Finsupp.single row.exponent 1 -
    Finsupp.single 0 (signedCoefficient row.signExponent 1)

/-- Exact evaluation of the two-term factor polynomial. -/
theorem eval_factorPolynomial {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (row : SignedCharacterRow ι) :
    row.factorPolynomial.eval x = row.factorValue x := by
  unfold factorPolynomial
  rw [LaurentPolynomial.eval_sub,
    LaurentPolynomial.eval_single, LaurentPolynomial.eval_single]
  simp only [one_zsmul, laurentEval_zero, factorValue]
  rw [neg_one_zpow_eq_ite]
  by_cases h : Even row.signExponent
  · simp [signedCoefficient, h]
  · simp [signedCoefficient, h]

/-- The exact four-term expansion of the product of two signed-character
factors. -/
def factorProductPolynomial {ι : Type*}
    (left right : SignedCharacterRow ι) : LaurentPolynomial ι :=
  Finsupp.single (left.exponent + right.exponent) 1 -
    Finsupp.single left.exponent
      (signedCoefficient right.signExponent 1) -
    Finsupp.single right.exponent
      (signedCoefficient left.signExponent 1) +
    Finsupp.single 0
      (signedCoefficient left.signExponent 1 *
        signedCoefficient right.signExponent 1)

/-- Exact evaluation of the expanded four-term factor product. -/
theorem eval_factorProductPolynomial
    {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (left right : SignedCharacterRow ι) :
    (factorProductPolynomial left right).eval x =
      left.factorValue x * right.factorValue x := by
  unfold factorProductPolynomial
  rw [LaurentPolynomial.eval_add, LaurentPolynomial.eval_sub,
    LaurentPolynomial.eval_sub]
  simp only [LaurentPolynomial.eval_single, one_zsmul,
    laurentEval_add x hx, laurentEval_zero, factorValue]
  rw [neg_one_zpow_eq_ite, neg_one_zpow_eq_ite]
  by_cases hl : Even left.signExponent <;>
    by_cases hr : Even right.signExponent <;>
      simp [signedCoefficient, hl, hr] <;> ring

end SignedCharacterRow

/-- A known source relation reduces to a nonzero integer and Laurent-monomial
multiple of one signed-character factor. -/
structure LaurentCharacterCertificate
    {ι χ κ : Type*} [Fintype χ] [Fintype κ]
    (chars : χ → SignedCharacterRow ι)
    (source : LaurentPolynomial ι)
    (target : SignedCharacterRow ι) where
  unit : ℤ
  unit_ne_zero : unit ≠ 0
  shift : LaurentExponent ι
  reduction : CharacterReductionCertificate (κ := κ) chars source
    (unit • LaurentPolynomial.translate shift target.factorPolynomial)

/-- Pointwise kernel replay of a one-factor character certificate. -/
theorem holds_of_laurentCharacterCertificate
    {ι χ κ : Type*} [Fintype ι] [Fintype χ] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (source : LaurentPolynomial ι)
    (target : SignedCharacterRow ι)
    (cert : LaurentCharacterCertificate
      (κ := κ) chars source target)
    (hchars : ∀ c, (chars c).Holds x)
    (hsource : source.Holds x) :
    target.Holds x := by
  have htarget :
      LaurentPolynomial.Holds x
        (cert.unit • LaurentPolynomial.translate cert.shift
          target.factorPolynomial) :=
    holds_of_characterReductionCertificate
      x hx chars source _ cert.reduction hchars hsource
  unfold LaurentPolynomial.Holds at htarget
  rw [LaurentPolynomial.eval_zsmul,
    LaurentPolynomial.eval_translate x hx,
    SignedCharacterRow.eval_factorPolynomial] at htarget
  simp only [← Int.cast_smul_eq_zsmul ℂ, smul_eq_mul] at htarget
  have hunit : (cert.unit : ℂ) ≠ 0 :=
    Int.cast_ne_zero.mpr cert.unit_ne_zero
  have hshift : laurentEval x cert.shift ≠ 0 :=
    laurentEval_ne_zero x hx cert.shift
  have hfactor : target.factorValue x = 0 :=
    (mul_eq_zero.mp
      ((mul_eq_zero.mp htarget).resolve_left hunit)).resolve_left hshift
  exact (SignedCharacterRow.factorValue_eq_zero_iff x target).mp hfactor

/-- A known source relation reduces, modulo the declared signed characters,
to a nonzero integer and Laurent-monomial multiple of one raw factor
product. -/
structure LaurentFactorCertificate
    {ι χ κ : Type*} [Fintype χ] [Fintype κ]
    (chars : χ → SignedCharacterRow ι)
    (source : LaurentPolynomial ι)
    (left right : SignedCharacterRow ι) where
  unit : ℤ
  unit_ne_zero : unit ≠ 0
  shift : LaurentExponent ι
  reduction : CharacterReductionCertificate (κ := κ) chars source
    (unit • LaurentPolynomial.translate shift
      (left.factorProductPolynomial right))

/-- Pointwise kernel replay of a complete sparse factor certificate. -/
theorem factorValues_mul_eq_zero_of_certificate
    {ι χ κ : Type*} [Fintype ι] [Fintype χ] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (source : LaurentPolynomial ι)
    (left right : SignedCharacterRow ι)
    (cert : LaurentFactorCertificate
      (κ := κ) chars source left right)
    (hchars : ∀ c, (chars c).Holds x)
    (hsource : source.Holds x) :
    left.factorValue x * right.factorValue x = 0 := by
  have htarget :
      LaurentPolynomial.Holds x
        (cert.unit • LaurentPolynomial.translate cert.shift
          (left.factorProductPolynomial right)) :=
    holds_of_characterReductionCertificate
      x hx chars source _ cert.reduction hchars hsource
  unfold LaurentPolynomial.Holds at htarget
  rw [LaurentPolynomial.eval_zsmul,
    LaurentPolynomial.eval_translate x hx,
    SignedCharacterRow.eval_factorProductPolynomial x hx] at htarget
  simp only [← Int.cast_smul_eq_zsmul ℂ, smul_eq_mul] at htarget
  have hunit : (cert.unit : ℂ) ≠ 0 :=
    Int.cast_ne_zero.mpr cert.unit_ne_zero
  have hshift : laurentEval x cert.shift ≠ 0 :=
    laurentEval_ne_zero x hx cert.shift
  exact (mul_eq_zero.mp
    ((mul_eq_zero.mp htarget).resolve_left hunit)).resolve_left hshift

/-- The semantic endpoint dispatch supplied by a complete sparse factor
certificate. -/
theorem factorCertificate_cases
    {ι χ κ : Type*} [Fintype ι] [Fintype χ] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (chars : χ → SignedCharacterRow ι)
    (source : LaurentPolynomial ι)
    (left right : SignedCharacterRow ι)
    (cert : LaurentFactorCertificate
      (κ := κ) chars source left right)
    (hchars : ∀ c, (chars c).Holds x)
    (hsource : source.Holds x) :
    left.Holds x ∨ right.Holds x := by
  rw [← SignedCharacterRow.factorValue_eq_zero_iff,
    ← SignedCharacterRow.factorValue_eq_zero_iff]
  exact mul_eq_zero.mp
    (factorValues_mul_eq_zero_of_certificate
      x hx chars source left right cert hchars hsource)

end


end MonochromaticQuantumGraphs
