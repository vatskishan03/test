import MQGN6Audit.TargetOrbits6

/-!
# Compressed unique-obstruction certificate data types
-/
namespace MQGN6Audit

inductive UniqueDagNode6 where
  | unique (q : Fin 4096) (m : Fin 15)
  | survivor (sid : Fin 29)
  | branch (children : List Nat)
  deriving Repr, DecidableEq

structure UniqueDagCase6 where
  target : Fin 4 → Fin 15
  root : Nat
  planCodes : Fin 6 → List Nat
  nodes : Array UniqueDagNode6
  deriving Repr

end MQGN6Audit
