import MQGN6Audit.UniqueDagCase6_0
import MQGN6Audit.UniqueDagCases6Small
import MQGN6Audit.UniqueDagCase6_13

/-!
# Compressed unique-obstruction certificate data

Fourteen case DAGs encode all 830,909 locally feasible non-identical witness
templates using 900 hash-consed nodes. Soundness is checked separately.
-/
namespace MQGN6Audit

def uniqueDagCase6 : Fin 14 → UniqueDagCase6 := ![
  uniqueDagCase6_0, uniqueDagCase6_1, uniqueDagCase6_2, uniqueDagCase6_3,
  uniqueDagCase6_4, uniqueDagCase6_5, uniqueDagCase6_6, uniqueDagCase6_7,
  uniqueDagCase6_8, uniqueDagCase6_9, uniqueDagCase6_10, uniqueDagCase6_11,
  uniqueDagCase6_12, uniqueDagCase6_13
]

end MQGN6Audit
