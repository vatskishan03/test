import MQGN6Audit.UniqueDagCase6_13_Nodes0
import MQGN6Audit.UniqueDagCase6_13_Nodes1
import MQGN6Audit.UniqueDagCase6_13_Nodes2
import MQGN6Audit.UniqueDagCase6_13_Nodes3

namespace MQGN6Audit

def uniqueDagCase6_13 : UniqueDagCase6 := {
  target := ![0, 4, 8, 10]
  root := 491
  planCodes := ![[985, 1201, 1057, 1003, 989],
    [840, 744, 636, 852, 854],
    [1225, 1119, 363, 1227, 1233],
    [242, 248, 896, 392, 250],
    [81, 83, 731, 119, 95],
    [486, 472, 454, 58, 490]]
  nodes := (uniqueDagCase6_13_nodes0 ++ uniqueDagCase6_13_nodes1 ++
    uniqueDagCase6_13_nodes2 ++ uniqueDagCase6_13_nodes3).toArray
}

end MQGN6Audit
