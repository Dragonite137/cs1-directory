module listExample

import basketball
import list
import relation
import bool
import pair

l1: list basketball
l1 = b :: b2 :: b3 :: b4 :: b5 :: nil

champions: list basketball
champions = b :: b2 :: nil

mapexercise: list Nat
mapexercise = map points l1

mapexercise2: list String
mapexercise2 = map name l1

totalPoints: Nat
totalPoints = query2 l1 conference points plus 0

totalRebounds: Nat
totalRebounds = query2 l1 conference points plus 0

lengthBasketball: Nat
lengthBasketball = query2 l1 conference countOne plus 0

namesBasketball: String
namesBasketball = query2 l1 conference name (++) ""

avgPoints: pair Nat Nat
avgPoints = mkPair (query2 l1 conference points plus 0) (query2 l1 conference countOne plus 0)
