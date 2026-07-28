import MQGN6Audit.TerminalSoundness6

/-!
# The Cartesian terminal template

SID 26 is the sole terminal mask not killed by a support-zero chain. Two
forbidden colorings each have exactly two allowed matching monomials: a forced
singleton-core monomial and the all-broad matching `12`. They make the three
broad factors needed by a final unique forbidden coloring nonzero.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function
open scoped BigOperators

noncomputable section

abbrev cartesianSid6 : Fin 29 := ⟨26, by decide⟩
abbrev allBroadMatching6 : Fin 15 := ⟨12, by decide⟩

def cartesianResidualQ6 : Fin 2 → Fin 6 → Fin 4 := ![
  ![0, 0, 2, 1, 2, 1],
  ![3, 2, 0, 0, 3, 2]
]

def cartesianResidualConstant6 : Fin 2 → Fin 15 := ![1, 11]

def cartesianFinalQ6 : Fin 6 → Fin 4 := ![0, 0, 2, 0, 3, 1]

set_option maxRecDepth 100000 in
theorem cartesianResidualFacts6 :
    ∀ r : Fin 2,
      ¬ allEqual (cartesianResidualQ6 r) ∧
      MaskMatchingForced6 (survivorTarget6 cartesianSid6) cartesianSid6
        (cartesianResidualQ6 r) (cartesianResidualConstant6 r) ∧
      MaskMatchingAllowed6 cartesianSid6
        (cartesianResidualQ6 r) (cartesianResidualConstant6 r) ∧
      MaskMatchingAllowed6 cartesianSid6
        (cartesianResidualQ6 r) allBroadMatching6 ∧
      ∀ n : Fin 15,
        MaskMatchingAllowed6 cartesianSid6 (cartesianResidualQ6 r) n →
          n = cartesianResidualConstant6 r ∨ n = allBroadMatching6 := by
  intro r
  fin_cases r <;> decide

set_option maxRecDepth 100000 in
theorem cartesianFinalFacts6 :
    ¬ allEqual cartesianFinalQ6 ∧
    MaskMatchingAllowed6 cartesianSid6 cartesianFinalQ6 allBroadMatching6 ∧
    ∀ n : Fin 15,
      MaskMatchingAllowed6 cartesianSid6 cartesianFinalQ6 n →
        n = allBroadMatching6 := by
  decide

lemma cartesianBroadTerm_ne_zero6
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (D : AxisTargetData6 W)
    (htarget : D.target = survivorTarget6 cartesianSid6)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness cartesianSid6)
    (r : Fin 2) :
    pmTerm6 W (cartesianResidualQ6 r) allBroadMatching6 ≠ 0 := by
  have facts := cartesianResidualFacts6 r
  have hconstForced :
      MaskMatchingForced6 D.target cartesianSid6
        (cartesianResidualQ6 r) (cartesianResidualConstant6 r) := by
    simpa [htarget] using facts.2.1
  have hconst :
      pmTerm6 W (cartesianResidualQ6 r) (cartesianResidualConstant6 r) ≠ 0 :=
    pmTerm6_ne_zero_of_maskForced6 D cartesianSid6 htemplate hconstForced
  by_contra hbroad
  have hsum_single :
      (∑ n : Fin 15, pmTerm6 W (cartesianResidualQ6 r) n) =
        pmTerm6 W (cartesianResidualQ6 r) (cartesianResidualConstant6 r) := by
    rw [Finset.sum_eq_single (cartesianResidualConstant6 r)]
    · intro n _ hne
      by_cases hn : n = allBroadMatching6
      · subst n
        exact hbroad
      · apply pmTerm6_eq_zero_of_maskNotAllowed6 D cartesianSid6 htemplate
        intro hallowed
        rcases facts.2.2.2.2 n hallowed with hconsteq | hbroadEq
        · exact hne hconsteq
        · exact hn hbroadEq
    · simp
  have hzero :
      (∑ n : Fin 15, pmTerm6 W (cartesianResidualQ6 r) n) = 0 := by
    rw [← pmSumN6_eq_sum_pmTerm6]
    simpa [facts.1] using hW (cartesianResidualQ6 r)
  rw [hsum_single] at hzero
  exact hconst hzero

/-- Exact contradiction for the Cartesian terminal mask. -/
theorem false_of_cartesianTerminal6
    {W : WeightsN 6 4 ℂ} (hW : EqSystemN 6 4 W)
    (D : AxisTargetData6 W)
    (htarget : D.target = survivorTarget6 cartesianSid6)
    (htemplate : PlanHasSurvivorTemplate6 D.plan.witness cartesianSid6) : False := by
  have hb0 := cartesianBroadTerm_ne_zero6 hW D htarget htemplate (0 : Fin 2)
  have hb1 := cartesianBroadTerm_ne_zero6 hW D htarget htemplate (1 : Fin 2)
  have h05 := pmTerm6_factor_ne_zero hb0 (0 : Fin 3)
  have h12 := pmTerm6_factor_ne_zero hb0 (1 : Fin 3)
  have h34 := pmTerm6_factor_ne_zero hb1 (2 : Fin 3)
  have hfinal : pmTerm6 W cartesianFinalQ6 allBroadMatching6 ≠ 0 := by
    unfold pmTerm6
    rw [Finset.prod_ne_zero_iff]
    intro k _
    fin_cases k
    · simpa [cartesianResidualQ6, cartesianFinalQ6, allBroadMatching6,
        matchingEdges6] using h05
    · simpa [cartesianResidualQ6, cartesianFinalQ6, allBroadMatching6,
        matchingEdges6] using h12
    · simpa [cartesianResidualQ6, cartesianFinalQ6, allBroadMatching6,
        matchingEdges6] using h34
  have facts := cartesianFinalFacts6
  have hsum_single :
      (∑ n : Fin 15, pmTerm6 W cartesianFinalQ6 n) =
        pmTerm6 W cartesianFinalQ6 allBroadMatching6 := by
    rw [Finset.sum_eq_single allBroadMatching6]
    · intro n _ hne
      apply pmTerm6_eq_zero_of_maskNotAllowed6 D cartesianSid6 htemplate
      intro hallowed
      exact hne (facts.2.2 n hallowed)
    · simp
  have hzero : (∑ n : Fin 15, pmTerm6 W cartesianFinalQ6 n) = 0 := by
    rw [← pmSumN6_eq_sum_pmTerm6]
    simpa [facts.1] using hW cartesianFinalQ6
  rw [hsum_single] at hzero
  exact hfinal hzero

end

end MQGN6Audit
