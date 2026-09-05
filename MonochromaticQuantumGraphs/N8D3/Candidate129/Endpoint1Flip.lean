import MonochromaticQuantumGraphs.N8D3.Candidate129.Endpoint1Step08
import MonochromaticQuantumGraphs.N8D3.Candidate129.RawAmplitudeData

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def e1FinalRows : Fin 20 → SignedCharacterRow (Fin 143) :=
  ![leaf00, leaf01, leaf02, leaf03, leaf04, leaf05, leaf06, leaf07, leaf08, leaf09, leaf10, e1c00, e1c01, e1c02, e1c03, e1c04, e1c05, e1c06, e1c07, e1c08]

theorem e1FinalHolds (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x)
    (hcase : ∀ i, (leaves i).Holds x) : ∀ i, (e1FinalRows i).Holds x := by
  have h00 : e1c00.Holds x := by
    apply e1s00Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
  have h01 : e1c01.Holds x := by
    apply e1s01Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
    · exact h00
  have h02 : e1c02.Holds x := by
    apply e1s02Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
    · exact h00
    · exact h01
  have h03 : e1c03.Holds x := by
    apply e1s03Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
    · exact h00
    · exact h01
    · exact h02
  have h04 : e1c04.Holds x := by
    apply e1s04Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
    · exact h00
    · exact h01
    · exact h02
    · exact h03
  have h05 : e1c05.Holds x := by
    apply e1s05Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
    · exact h00
    · exact h01
    · exact h02
    · exact h03
    · exact h04
  have h06 : e1c06.Holds x := by
    apply e1s06Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
    · exact h00
    · exact h01
    · exact h02
    · exact h03
    · exact h04
    · exact h05
  have h07 : e1c07.Holds x := by
    apply e1s07Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
    · exact h00
    · exact h01
    · exact h02
    · exact h03
    · exact h04
    · exact h05
    · exact h06
  have h08 : e1c08.Holds x := by
    apply e1s08Holds x hx h
    intro i
    fin_cases i
    · exact hcase 0
    · exact hcase 1
    · exact hcase 2
    · exact hcase 3
    · exact hcase 4
    · exact hcase 5
    · exact hcase 6
    · exact hcase 7
    · exact hcase 8
    · exact hcase 9
    · exact hcase 10
    · exact h00
    · exact h01
    · exact h02
    · exact h03
    · exact h04
    · exact h05
    · exact h06
    · exact h07
  intro i
  fin_cases i
  · exact hcase 0
  · exact hcase 1
  · exact hcase 2
  · exact hcase 3
  · exact hcase 4
  · exact hcase 5
  · exact hcase 6
  · exact hcase 7
  · exact hcase 8
  · exact hcase 9
  · exact hcase 10
  · exact h00
  · exact h01
  · exact h02
  · exact h03
  · exact h04
  · exact h05
  · exact h06
  · exact h07
  · exact h08

def e1FlipSource : Polynomial 143 :=
[
  (1, (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0)),
  (1, (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0)),
  (1, (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0)),
  (1, (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0)),
  (1, (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0)),
  (1, (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0)),
  (-1, (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 138 then (1) else 0)),
  (-1, (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 90 then (1) else if i.val = 138 then (1) else 0)),
  (-1, (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 90 then (1) else if i.val = 126 then (1) else 0)),
  (-1, (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0))
]

def e1FlipTarget : Polynomial 143 := [(1, (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0))]

noncomputable def e1FlipUses : Fin 11 → CharacterReductionUse e1FinalRows :=
![
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0)
    targetExponent := (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 104 then (1) else if i.val = 138 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 69 then (1) else if i.val = 90 then (1) else if i.val = 138 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 69 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(1), (1), (1), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 90 then (1) else if i.val = 138 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 38 then (1) else if i.val = 87 then (1) else if i.val = 138 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(1), (1), (1), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 90 then (1) else if i.val = 126 then (1) else 0)
    targetExponent := (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 87 then (1) else if i.val = 126 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(1), (1), (1), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0)
    targetExponent := (fun i => if i.val = 19 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 122 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (-1), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } }
]

noncomputable def e1FlipCertificate : CharacterReductionCertificate (κ := Fin 11)
    e1FinalRows (toPolynomial e1FlipSource) (toPolynomial e1FlipTarget) :=
  reductionCertificate e1FinalRows e1FlipSource e1FlipTarget e1FlipUses
    (by decide) (by decide)

theorem endpoint1_false (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x)
    (hcase : ∀ i, (leaves i).Holds x)
    (hlarge : (toPolynomial amplitude3105).Holds x)
    (hsmall : (toPolynomial amplitude3132).Holds x) : False := by
  have hsource : (toPolynomial e1FlipSource).Holds x := by
    apply holds_of_combination x hx amplitude3105 amplitude3132 e1FlipSource 1 (-1)
      0 (fun i => if i.val = 58 then (1) else if i.val = 59 then (-1) else 0) _ hlarge hsmall
    decide
  have htarget := holds_of_characterReductionCertificate x hx e1FinalRows
    (toPolynomial e1FlipSource) (toPolynomial e1FlipTarget) e1FlipCertificate
    (e1FinalHolds x hx h hcase) hsource
  apply laurentEval_ne_zero x hx (fun i => if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 97 then (1) else if i.val = 104 then (1) else 0)
  simpa [LaurentPolynomial.Holds, e1FlipTarget, toPolynomial] using htarget

#print axioms endpoint1_false

end MonochromaticQuantumGraphs.N8D3.Candidate129
