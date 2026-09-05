import MonochromaticQuantumGraphs.N8D3.Candidate129.Endpoint0Step02
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def e0FinalRows : Fin 4 → SignedCharacterRow (Fin 143) :=
  ![center, e0c00, e0c01, e0c02]

theorem e0FinalHolds (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x)
    (hcase : center.Holds x) : ∀ i, (e0FinalRows i).Holds x := by
  have h00 : e0c00.Holds x := by
    apply e0s00Holds x hx h
    intro i
    fin_cases i
    · exact hcase
  have h01 : e0c01.Holds x := by
    apply e0s01Holds x hx h
    intro i
    fin_cases i
    · exact hcase
    · exact h00
  have h02 : e0c02.Holds x := by
    apply e0s02Holds x hx h
    intro i
    fin_cases i
    · exact hcase
    · exact h00
    · exact h01
  intro i
  fin_cases i
  · exact hcase
  · exact h00
  · exact h01
  · exact h02

def e0FlipSource : Polynomial 143 :=
[
  (1, (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 98 then (1) else if i.val = 137 then (1) else 0)),
  (1, (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 108 then (1) else if i.val = 125 then (1) else 0)),
  (1, (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)),
  (1, (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)),
  (1, (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 85 then (1) else if i.val = 125 then (1) else 0)),
  (1, (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 115 then (1) else 0)),
  (1, (fun i => if i.val = 19 then (1) else if i.val = 56 then (1) else if i.val = 69 then (1) else if i.val = 108 then (1) else 0)),
  (1, (fun i => if i.val = 27 then (1) else if i.val = 38 then (1) else if i.val = 58 then (1) else if i.val = 137 then (1) else 0)),
  (1, (fun i => if i.val = 27 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 125 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 98 then (1) else if i.val = 137 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 108 then (1) else if i.val = 125 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 85 then (1) else if i.val = 125 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 19 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 115 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 27 then (1) else if i.val = 41 then (1) else if i.val = 58 then (1) else if i.val = 137 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 27 then (1) else if i.val = 51 then (1) else if i.val = 58 then (1) else if i.val = 125 then (1) else 0))
]

def e0FlipTarget : Polynomial 143 := [(1, (fun i => if i.val = 19 then (1) else if i.val = 56 then (1) else if i.val = 69 then (1) else if i.val = 108 then (1) else 0))]

noncomputable def e0FlipUses : Fin 17 → CharacterReductionUse e0FinalRows :=
![
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 98 then (1) else if i.val = 137 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 98 then (1) else if i.val = 137 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 108 then (1) else if i.val = 125 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 108 then (1) else if i.val = 125 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 85 then (1) else if i.val = 125 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 85 then (1) else if i.val = 125 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 115 then (1) else 0)
    targetExponent := (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 115 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 19 then (1) else if i.val = 56 then (1) else if i.val = 69 then (1) else if i.val = 108 then (1) else 0)
    targetExponent := (fun i => if i.val = 19 then (1) else if i.val = 56 then (1) else if i.val = 69 then (1) else if i.val = 108 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 27 then (1) else if i.val = 38 then (1) else if i.val = 58 then (1) else if i.val = 137 then (1) else 0)
    targetExponent := (fun i => if i.val = 27 then (1) else if i.val = 38 then (1) else if i.val = 58 then (1) else if i.val = 137 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 27 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 125 then (1) else 0)
    targetExponent := (fun i => if i.val = 27 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 125 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 98 then (1) else if i.val = 137 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 98 then (1) else if i.val = 137 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 108 then (1) else if i.val = 125 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 108 then (1) else if i.val = 125 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 9 then (1) else if i.val = 41 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 85 then (1) else if i.val = 137 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (1), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 85 then (1) else if i.val = 125 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 85 then (1) else if i.val = 125 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(1), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 19 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 115 then (1) else 0)
    targetExponent := (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 115 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(1), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 27 then (1) else if i.val = 41 then (1) else if i.val = 58 then (1) else if i.val = 137 then (1) else 0)
    targetExponent := (fun i => if i.val = 27 then (1) else if i.val = 38 then (1) else if i.val = 58 then (1) else if i.val = 137 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (1), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 27 then (1) else if i.val = 51 then (1) else if i.val = 58 then (1) else if i.val = 125 then (1) else 0)
    targetExponent := (fun i => if i.val = 27 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 125 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(1), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } }
]

noncomputable def e0FlipCertificate : CharacterReductionCertificate (κ := Fin 17)
    e0FinalRows (toPolynomial e0FlipSource) (toPolynomial e0FlipTarget) :=
  reductionCertificate e0FinalRows e0FlipSource e0FlipTarget e0FlipUses
    (by decide) (by decide)

theorem endpoint0_false (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x)
    (hcase : center.Holds x)
    (hlarge : (toPolynomial amplitude756).Holds x)
    (hsmall : (toPolynomial amplitude759).Holds x) : False := by
  have hsource : (toPolynomial e0FlipSource).Holds x := by
    apply holds_of_combination x hx amplitude756 amplitude759 e0FlipSource 1 (-1)
      0 (fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else 0) _ hlarge hsmall
    decide
  have htarget := holds_of_characterReductionCertificate x hx e0FinalRows
    (toPolynomial e0FlipSource) (toPolynomial e0FlipTarget) e0FlipCertificate
    (e0FinalHolds x hx h hcase) hsource
  apply laurentEval_ne_zero x hx (fun i => if i.val = 19 then (1) else if i.val = 56 then (1) else if i.val = 69 then (1) else if i.val = 108 then (1) else 0)
  simpa [LaurentPolynomial.Holds, e0FlipTarget, toPolynomial] using htarget

#print axioms endpoint0_false

end MonochromaticQuantumGraphs.N8D3.Candidate129
